#include "image.h"
#include "OV7725.h"
#include "tim3.h"
#include "visual_scope.h"

// 图像参数
int sp_threshold_value = 10,hd_threshold_value = 10,xp_threshold_value = 3;		// 跳变阈值,15,15,5
int sp_value_sub = 15,hd_value_sub = 15,xp_value_sub = 5;			// 二值化阈值	15,15,10

// 上坡参数
int ZjClearDistance = 200,ZjDetectDistance = 208;	// 211
int ZjBigAngleRow = 20;
int zj_time = 0;
int ZjScSpeed = 6;

// 河道参数
int Hd1ToHd5Distance = 65,Hd1ToXpDistance = 115;  // 64 95
float race_hd1 = -0.4,race_hd2 = 0.12,race_hd3 = -0.2,race_hd4 = 0.2,race_hd5 = -0.7;
float HdAngle = 2.3;
int HdScSpeed = 8;

// 下坡参数
int XpScDistance = 45,HuorCross = 78;	//74.5
float Xp3RaceTop = 0.6,Xp3RaceCrsoss = 0.4;
float xpp1 = 0.42,xpp2 = 0.47,xpp3 = 0.5;
int XpScSpeed = 8;

// 其他参数
int left[R]={0};					// 记录左边缘的数组
int center[R+1]={0};
int right[R]={0};					// 记录右边缘列的数组
int number = 2;						// 从最后一行采集到倒数第三行，忽略最远两行
int left_angle_flag = 0, right_angle_flag = 0,rr=0,left_sure_flag=0;
int whitelost_left = 0;
int edge_row0 = 0;				// 记录前六行确定的边缘值，作为中点提取的起始位置
int center_row = 40;			// 中心列
int start_row_hd = 0,stop_row_hd = 0;
int eff_row=0,white_count=0;
int nu = 0,control_line=20;
int pixel_value=0;			  // 根据像素跳变差值以及背景像素值判断是否进入下坡
int sp_flag=1,hd_flag=0,xp_flag=0,zj_start=0,img_stop_flag=0,img_cross_flag = 0,hand_restart = 0;
int hd_stage_flag = 0;
int FrameCount = 0,framecount = 0;
int Detect = 0;
int stop_time = 0,sum_left = 0, sum_right = 0;
int standard_row = 0;
u8 zj_detect = 0;
float control_message = 0;
float control_message2 = 0,control_message3 = 0;
double race = 0,race1=0,white_count_ratio=0;
double row_sub = 0;
int start_row = 0;
u8 eff_row_count = 0;
int zj_keep_flag = 0;
int restart_flag = 0;
int center_base = 0;
int stage_flag = 0;
int beep_count = 0;
int cross_flag = 0;
s16 speed_left = 0,speed_hd1 = 0,speed_hd5 = 0,speed_xp = 0,speed_stop1 = 0,speed_stop2 = 0,speed_stop3 = 0,speed_stop4 = 0,speed_last2 = 0,speed_sc = 0,speed_last = 0,speed_now = 0,speed_now_hd5 = 0;
int zj_speed = 0;
int late_cut_down = 0,beep_send_flag = 0,beep_count_send = 0,beep_time_send = 0;
int speed_time =0;
u8 Hd1OutFlag = 0;
u8 XpHuorStartFlag = 0;
int XPStopToHandFlag = 0;
u8 HdRaceChangeFlag = 0,XpRaceChangeFlag = 0; 
s16 HdInSpeed = 0,HdInBackRow = 33;
int small_angle_row = 0;  
int zj_sc_count =0 ;
int center_average = 0;
int center_r_last = 0,center_r_now;
u8 LostDirection = 0;
u8 hd_correct_flag = 0;
int center_stop_min = 80,center_stop_max = 0;
int hand_time = 0,time_axial = 0,zj_end_time = 0;
int correct_row = 0;
u8 ScreenChangeFlag = 0;
/****************************************************************************
*函数名称: void Transfer2Gray(uint16_t * img,uint8_t  * gray_image)
*函数功能：YUV422提取8位Y分量，获取灰度图，上坡，河道
*输入参数：原始图像信息*img,*gray_image用来存储当前图像
****************************************************************************/
void Transfer2Gray(uint16_t *image,uint8_t  *gray_image)
{
	uint32_t i = 0,j = 0,a = 0;
	for(i=0;i<R;i++)
	{
		a = i/15;
		for(j=0;j<C;j++)
		{			
			*((uint8_t *)gray_image+i*C+j)=(uint8_t)((*((uint16_t *)image+(i*(4+a)-a*(a+1)/2*15+3)*IMAGE_COLUMN+j*4))>>8);// 前15，每4行取一行，中间每5行取一行，后面每6行取一
		}
 	}			 
}
/****************************************************************************
*函数名称: void Transfer2Gray(uint16_t * img,uint8_t  *gray_image)
*函数功能：YUV422提取8位Y分量，获取UV图,用于下坡
*输入参数：原始图像信息*image,*gray_image用来存储当前图像
****************************************************************************/
void Transfer2Gray_UV(uint16_t *image,uint8_t  *gray_image)
{
	uint32_t i = 0,j=0,a = 0;
	for(i=0;i<R;i++)
	{	
		a = i/15;
		for(j=0;j<C;j++)
		{			
			*((uint8_t *)gray_image+i*C+j)=(uint8_t)((*((uint16_t *)image+(i*(4+a)-a*(a+1)/2*15+3)*IMAGE_COLUMN+j*4)));// 前15，每4行取一行，中间每5行取一行，后面每6行取一�
		}
	}			
}


/*******************************************************
*函数名称：image_thrshold()
*函数功能：对图像二值化处理
*输入参数：提取出的图像有效区*data
*******************************************************/
void image_threshold_sp(u8 *Data)
{
	int edge_row = 0;
	int edge_row2[10] = {0};
	int row_white_counts[R] = {0};
	int aa=0,min = 0,sub=0,sub_yz = 0;
	int max_value = 0,max_col = 0;
	int row_white_count0 =0,row_white_count1 = 0;
	int a=0,c=0,h=0,r=0,s=0,v=0,ee1=0,ee2=0;
	int effect_row_number = 0;
	start_row = 0;
	eff_row = 0;						// 记录有效行数判断是否为有效场
	white_count=0;
	white_count_ratio=0; 		// 根据白点所占比例判断是否丢白线
	pixel_value = 0;
	standard_row = 0;
	
	/* 找到第一行左边缘 */
	
	/* 1.寻找8行左边缘值 */ 
	for(s=0;s<10;s++)
	{
		aa = 0;
		pixel_value = 0;	
		max_value = 0;
		max_col = 0;
		/* 遍历一行寻找像素跳变差值最大的点，作为边缘记录 */
		for (a =0; a < C-3; a++)
		{
			sub = Data[(R - 1-s) * C + a + 3] - Data[(R - 1-s) * C + a];						
			if(a+20<C)
				sub_yz = Data[(R - 1-s) * C + a + 3] - Data[(R - 1-s) * C + a+20];
			else
				sub_yz = sp_threshold_value+2;																								// 选取验证点作为对白线宽度的限制，直角之前像素列宽定为18				
			if (sub>aa&&sub>sp_threshold_value&&sub_yz>sp_threshold_value&&Data[(R-1-s)*C+a]>pixel_value)//
			{
				aa = sub;																													// 记录最大差值
				pixel_value = Data[(R - 1 - s) * C + a];													// 记录背景最大值，防止暗黑点干扰把背景识别成白线
				edge_row2[s] = a+2;																								// 记录边缘列值
			}	
			if(Data[(R-1-s)*C+a]>max_value)
			{
				max_value = Data[(R-1-s)*C+a];
				max_col = a;
			}
		}
		if(edge_row2[s]!=0&&fabs(edge_row2[s]-max_col)<15)
			eff_row++;
		if(eff_row>=5)
			break;
	}
	
	/* 确定第一行起始中点列值 */
	if (eff_row>=3)
	{
		for(v=7;v>0;v--)
		{
			if(fabs(edge_row2[v]-edge_row2[v-1])<7&&edge_row2[v-1]!=0)
			{
				edge_row = edge_row2[v-1];
				start_row = v-1;
			}
			else if(edge_row2[v-1]==0)
				edge_row2[v-1]=edge_row2[v];
		}
	}
	else 
		whitelost_left = 1;		// 右偏极限，白线丢失
	edge_row0 = edge_row;		// 记录初始边缘，作为阈值的初始点
	
	/* 向上寻找其他行左边缘，确定阈值并将该行阈值化 */
	for (c = R - 1; c >=0;c--)
	{
		aa = 0;
		pixel_value=0;
		row_white_count0 = 0;
		row_white_count1 = 0;
		/* 确定中点左右遍历范围，由于是从左向右遍历，所以左大右小 */
		ee1 =  edge_row - 15;
		if(edge_row - 15<1)
			ee1 = 1;
		ee2 = edge_row + 10;
		if(edge_row + 10 > C - 5)
			ee2 = C - 5;
		
		/* 在左边缘左右五列中寻找下一行边缘，以确立该行阈值，找不到则保留上一行阈值 */
		for (r = ee1; r < ee2; r++)
		{
			sub = Data[c * C + r + 3] - Data[c * C + r];
			if(r+20<C)
				sub_yz = Data[c * C + r + 3] - Data[c * C + r+20];
			else
				sub_yz = sp_threshold_value+2 ;
			if (sub > aa&&sub > sp_threshold_value&&sub_yz>sp_threshold_value&&Data[c * C + r + 3]>pixel_value)
			{
				aa =sub;
				pixel_value = Data[c * C + r];
				edge_row = r + 2;
				min = Data[c * C + edge_row + 1] - sp_value_sub;
			}
		}
		/* 对该行进行阈值化 */
		for (h = 0; h < C; h++)
		{
			if (Data[c * C + h] > min)
			{
				Data[c * C + h] = 255;
				if(h>=edge_row-8&&h<edge_row+18)
				{
					row_white_count0++;
				}
				white_count++;
				row_white_count1++;
			}
			else
				Data[c * C + h] = 0;
		
		}
		row_white_counts[c] = row_white_count0;
		if(c<R-2&&HuorDistance<180)
		{
			if(row_white_counts[c]>8&&row_white_counts[c+2]<=8)
			{
				for(h=0;h<C;h++)
					Data[c*C+h] = Data[(c+2)*C+h];
				row_white_counts[c] = 8;
			}
		}
//		if(c>R-10)
//		{
//			if(row_white_count0>3&&row_white_count0<18)
//				effect_row_number++;
//		} 
	}
	
	// 记录白点占所有像素点比例，以滤除误判的背景
	white_count_ratio = (float)((float)white_count/(float)(R*C));
	if(((double)white_count_ratio > 0.5||(double)white_count_ratio < 0.01)||(Detect>=1&&(double)white_count_ratio>0.35))
		whitelost_left = 1; 
	if(white_count_ratio>0.4&&HuorDistance>ZjDetectDistance&&left_angle_flag==0)
		left_angle_flag = 1;
		
//	if(effect_row_number<6)
//		whitelost_left = 1;
}
void image_threshold_hd(u8* Data)
{
		int i = 0, r = 0, c = 0,subl0 = 0,subl1 = 0,subl3 = 0;
		int left = 0;
		int s1 = 0, s2 = 0;
		int effec_row_count = 0;
		int left0 = 0;
		int threshold_value = 0,threshold_value0 = 0;
		int edge_value = 0;
		int center_left[10] = {0};
		u8 max_value0 = 0;
		u8 max_value[R] = {0};
		u8 max_value_col = 0;
		white_count = 0;
		white_count_ratio = 0;
		for (r = R-1; r >= 0; r--)
		{
			subl0 = 0;
			left  = 0;
			edge_value = 0;
			max_value0 = 0;
			max_value_col = 0;
			for (c = 0; c < C-3; c++)
			{
				subl1 = Data[r * C + c + 3] - Data[r * C + c];
				//subl2 = Data[r * C + c + 2] - Data[r * C + c];
				if (c + 25 < C)
						subl3 = Data[r * C + c + 3] - Data[r * C + c + 25];
				else
						subl3 = hd_threshold_value+2;
				if (subl1 > hd_threshold_value && subl1 > subl0 && Data[r * C + c + 3]>edge_value && subl3 > hd_threshold_value)
				{
						edge_value = Data[r * C + c + 3];
						subl0 = subl1;
						left = c+1;
				}
				if(Data[r*C+c]>max_value0)
				{
					max_value0 = Data[r*C+c];
					max_value_col = c;
				}
			}
			if (left != 0)//&&fabs(max_value_col-left)<15
			{
				center_left[effec_row_count] = left;
				max_value[effec_row_count] = max_value0;
				effec_row_count++;
			}
			if (effec_row_count > 5)
					break;
		}
		if (effec_row_count <= 5)
		{
			whitelost_left = 1;
			for(r=R-1;r>=0;r--)
			{
				for(c=0;c<C;c++)
				{
					Data[r*C+c] = 255;
				}
			}
		}
		else
		{
			for (i = effec_row_count-2; i >0; i--)
			{
					if (fabs(center_left[i] - center_left[i - 1]) < 12 && fabs(center_left[i] - center_left[i + 1]) < 12 && center_left[i] != 0)
					{
							left0 = center_left[i];
					}
					if (max_value[i] > threshold_value)
							threshold_value0 = max_value[i];
			}
			if (left0 == 0)
			{
					whitelost_left = 1;
					for(r=R-1;r>=0;r--)
					{
						for(c=0;c<C;c++)
						{
							Data[r*C+c] = 255;
						}
					}
			}
			else
			{
					for (r = R - 1; r >= 0; r--)
					{
							subl0 = 0;
							left = 0;
							edge_value = 0;
							s1 = left0 - 10;
							s2 = left0 + 20;
							if (s1 < 0)
									s1 = 0;
							if (s2 > C - 3)
									s2 = C - 3;
							for (c = s1; c < s2; c++)
							{
									subl1 = Data[r * C + c + 3] - Data[r * C + c];
									//subl2 = Data[r * C + c + 2] - Data[r * C + c];
									if (c + 15 < C)
											subl3 = Data[r * C + c + 3] - Data[r * C + c + 15];
									else
											subl3 = hd_threshold_value+2;
									if (subl1 > hd_threshold_value&& subl1 > subl0 && Data[r * C + c + 3]>edge_value && subl3 > hd_threshold_value)
									{
											subl0 = subl1;
											edge_value = Data[r * C + c + 3];
											threshold_value = Data[r * C + c + 3];
											left = c;
									}
							}
							if (left != 0)
									left0 = left;
//							if(fabs(threshold_value0-threshold_value)>40)
//								threshold_value = threshold_value0;
//							else
//								threshold_value0 = threshold_value;
							for (c = 0; c < C; c++)
							{
									if (Data[r * C + c] > threshold_value - hd_value_sub)
									{
											Data[r * C + c] = 255;
										if(c>=s1&&c<s2)
												white_count++;
									}
									else
											Data[r * C + c] = 0;
							}
					}
					white_count_ratio = (float)white_count/(float)(R*C);
			}
		}
		if(white_count_ratio>0.25||white_count_ratio<0.015)
			whitelost_left = 1;
}

/*******************************************************
*函数名称：image_thrshold_xp()
*函数功能：对图像二值化处理
*输入参数：提取出的图像有效区*data
*******************************************************/

void image_threshold_xp(u8 *Data)
{
	int edge_row = 0;
	int edge_row2[10] = {0};
	int aa=0,min = 0,sub=0,sub_yz = 0,sub_yz2 = 0,min2 = 0,max_value = 0,max_c = 0;
	int a=0,c=0,h=0,r=0,s=0,v=0;
	int ee1=0,ee2=0;
	int center_edge=0;
	int pixel_value = 0;
	int com_count = 0;


	u8 row_white_count[R] = {0};
	u8 left_edge[R] = {0};
	u8 right_edge[R] = {0};
	u8 edge_row3 = 0;
	int row_white_count0 = 0,right_edge0 = 0;
	u8 stop_row_flag = 0;
	u8  row_effect_count = 0;
	
	cross_flag = 0;
	start_row = 0;
	eff_row=0;
	white_count = 0;
	white_count_ratio = 0;

	/* 找到第一行左边缘 */
	for(s=0;s<10;s++)
	{
		aa = 0;
		center_edge=0;
		max_value = 0;
		max_c = 0;
		for (a =0; a < C-3; a++)
		{
				sub = Data[(R - 1-s) * C + a + 3] - Data[(R - 1-s) * C + a];
				if(a>=2)
					sub_yz2 = Data[(R - 1-s) * C + a + 3] - Data[(R - 1-s) * C + a - 2];
				else
					sub_yz2 = xp_threshold_value+2;
				if (a + 15 < C)
					sub_yz = Data[(R - 1-s) * C + a + 3] - Data[(R - 1-s) * C + a + 15];
				else
					sub_yz = xp_threshold_value+2;
				if (sub>aa&&sub_yz>xp_threshold_value&&sub>xp_threshold_value&&sub_yz2>xp_threshold_value&&Data[(R - 1-s) * C + a +3]>center_edge)
				{
						aa = sub;
						center_edge = Data[(R - 1-s) * C + a +3];//	取本行最大落差且被减数最大处为边界
						edge_row2[s] = a+2;
				}
				if(Data[(R - 1-s) * C + a]>max_value)
				{
					max_value = Data[(R - 1-s) * C + a];
					max_c = a;
				}
				
		}
		if(edge_row2[s]!=0&&fabs(max_c-edge_row2[s]<10))
			eff_row++;
		else
			edge_row2[s] = 0;
	}
	
	/* 确定第一行中心列值 */
	if (eff_row>=2)
	{
		for(v=7;v>0;v--)
		{
			if(fabs(edge_row2[v]-edge_row2[v-1])<4&&edge_row2[v-1]!=0)
			{
				edge_row = edge_row2[v-1];
				start_row = v-1;
			}
			else if(edge_row2[v]!=0&&edge_row2[v-1]==0)
				edge_row2[v-1]= edge_row2[v];
		}
		if(edge_row==0)
		{
			for(v=5;v>0;v--)
			{
				if(edge_row2[v]!=0)
					edge_row = edge_row2[v];
			}
		}
		if(edge_row==0)
			whitelost_left = 1;
	}
	else
		whitelost_left = 1;
	
	edge_row0 = edge_row;												// 记录初始边缘，作为阈值的初始点

	/* 寻找其他行左边缘，确定阈值并将该行阈值 */
	for (c = R - 1; c >=0;c-- )
	{
		aa = 0;
		center_edge = 0;
		row_white_count0 = 0;
		right_edge0 = 0;
		pixel_value = 0;
		ee1 =  edge_row - 8; 	
		if(edge_row - 8<0)
			ee1 = 0;
		ee2 = edge_row + 8;
		if(edge_row + 8 > C - 4)
			ee2 = C - 4;
		for (r = ee1; r < ee2; r++)
		{
			sub = Data[c * C + r + 3] - Data[c * C + r];
			if (r + 20 < C)
				sub_yz = Data[c * C + r + 3] - Data[c * C + r + 20];
			else
				sub_yz = xp_threshold_value+5;

			if (sub > aa&&sub > xp_threshold_value&&sub_yz > xp_threshold_value&&Data[c * C + r+3]>pixel_value)
			{
				aa =sub;
				pixel_value = Data[c * C + r+3];
				edge_row = r + 2;
				min = Data[c * C + edge_row + 1] - xp_value_sub;
			}
		}
		left_edge[c] = edge_row;
//		if (fabs(min - min2) > 30 && min2 != 0)
//			min = min2;
		for (h = 0; h < C; h++)
		{
			if (Data[c * C + h] > min&&h>=edge_row-5&&h<edge_row+12)
			{
				Data[c * C + h] = 255;
				right_edge[c] = h;
				row_white_count0++;
			}
			else
				Data[c * C + h] = 0;
		}
		if (row_white_count0 < 10 && row_white_count0 > 3)
			min2 = min;
		row_white_count[c] = row_white_count0;
		
		if(img_cross_flag==2)
		{
			if (c < R - 3 && c > 2)
			{
					if (fabs(left_edge[c] - left_edge[c + 1]) >= 3)
					{
							for (h = 0; h < C; h++)
							{
									Data[c * C + h] = Data[(c + 1) * C + h];
							}
					}

			}
			if (c > 2 && c < R - 3)
			{
					if ((row_white_count[c] > 8 && row_white_count[c + 1] <= 8))
					{
							if(cross_flag==0)
								cross_flag = c;
							
							for (h = 0; h < C; h++)
							{
									Data[c * C + h] = Data[(c + 1) * C + h];
							}
							row_white_count[c] = row_white_count[c + 1];
							com_count++;
							left_edge[c] = left_edge[c + 1];
					}
					if(com_count>7)
						whitelost_left = 1;

			}
			edge_row = left_edge[c];
		}
		
		if((Data[c*C+C-2]==255||Data[c*C+1]==255)&&stop_row_flag==0)
			stop_row_flag = c;
		if((c<stop_row_flag))
		{
			for(h=0;h<C;h++)
			{
				Data[c*C+h] = 0;
			}
			row_white_count[c] = 0;
		}
	}	
	for(s=0;s<R;s++)
	{
		white_count += row_white_count[s];
	}
	white_count_ratio = (double)((double)white_count/(R*C));
	if(((double)white_count_ratio < 0.01||(double)white_count_ratio>0.15))
		whitelost_left = 1; 	
	if(((double)white_count_ratio < 0.01)&&img_stop_flag==4)
		whitelost_left = 1;
}
/*******************************************************
*函数名称：midline_draw()
*函数功能：提取赛道中点
*输入参数：提取出的图像有效区*data
*******************************************************/

void midline_draw(u8 *img)
{ 
	if(whitelost_left == 0)
	{
		int firstleft = 0,firstright = 200;
		int root = 0,mid = 0;
		int center0 = edge_row0;
		int m=0,j=0,a=0;
		int ff1=0,ff2=0,gg1=0,gg2=0,cc1=0,cc2=0,lf=0,rg=0;
		u8 row_white0 = 0;
		u8 row_white[R] = {0};
		number = 2;
		// 中点数组清零
		for(a=0;a<R;a++)
			center[a] = 0;
		/* 寻找各行中点，分第一行和其余行 */
		for(m=R-1;m>2;m--)
		{
			row_white0 = 0;
			/* 采集第一行中点，这一步很关键，需要足够的鲁棒性 */
			if (m == R - 1)
			{
				cc1 = center0 - 8;
				if (center0 - 8 < 0)
						cc1 = 0;
				cc2 = center0 + 8;
				if (center0 + 8 > C-1)
						cc2 = C-1;
				for (j = cc1; j < cc2; j++)
				{
					if ((img[m * C + j] - img[m * C + j - 1]) > 0 && img[m * C + j + 1] > 0)
							firstleft = j;
					if ((img[m * C + j] - img[m * C + j - 1])<0 && img[m * C + j - 1] > 0)
							firstright = j;
					if(img[m*C+j]==255)
						row_white0++;
				}
				center[m] = (firstleft + firstright) / 2;
				center0 = center[m];
				if(center[m]>75)
				{
					center0=edge_row0;
					center[m] = edge_row0;
				}
			}
			else if(m<R-1)
			{
				// 向上找其余行白点，起始点
				int left_number=0,right_number = 0;
				u8 n = 0;
				ff1 = center0-8;
				if(center0-8<0)
					ff1 = 0;
				ff2 = center0+8;
				if(center0+8>C)
					ff2 = C;
				for(n=ff1;n<=ff2;n++)
				{
					if(img[m*C+n]==255)
						row_white0++;
				}
				if(img[m*C+center0]!=255)
				{
					for (a = ff1; a <ff2; a++)
					{
						if (img[m*C+a] == 255)
						{
							mid = a;											// 如果是较大弯道，从其左右5个点范围内寻找白点
							continue;
						}							
					}
					if (img[m * C + mid] != 255)
					{
						number = m;											// 如果没有找到，说明白线断掉，中点提取结束
						break;
					}
				} 
				else
					mid = center0;										// 如果是白点，就直接寻找
				
				/* 左右遍历寻找中点 */
				gg1 = mid-8;
				if(mid-8<0)
					gg1 = 0;
				gg2 = mid+8;
				if(mid+8>C)
					gg2 = C;					
				for (root = mid; root >=gg1; root--)
				{
					if (img[m * C + root] == 255)
						left[m] = root;													// 向左5个点进行遍历，寻找左边缘
				}
				// 左边缘起白点计数
				if (left[m] == gg1)
				{
					for (lf = gg1; lf >= 0; lf--)
					{
						if (img[m * C + lf] == 255)
							left_number++;
						else
							lf = 0;
					}
				}
				for (root = mid; root <= gg2; root++)
				{					
					if (img[m * C + root] == 255)
							right[m] = root;												// 向右5个点进行遍历，寻找左边缘
				}
				//右边缘起白点计数
				if (right[m] == gg2)
				{
					for (rg = gg2; rg<C; rg++)
					{
						if (img[m * C + rg] == 255)
							right_number++;
						else
							rg = C - 1;
					}
				}
				center[m] = (left[m] + right[m]) / 2;				//取平均值作中点			
				/* 赛道判断 */		
				
				// 左直角
				if (left_number > 4&&left_angle_flag == 0&&nu<38)
				{
					left_angle_flag = 1;
					if(sp_flag==1&&left_angle_flag==1)
						zj_start=1;		
					zj_detect = 1;
				}		
				
				// 右直角，由于是十字形，可以当成右半场可以当成左直角
				if (right_number > 4&&right_angle_flag == 0&&nu<38)
				{
					right_angle_flag = 1;	
					rr = m;
				}									
				center0 = center[m];
			}
			row_white[m] = row_white0;
		}
		for(m=R-15;m>2;m--)
		{
			if(fabs(center[m]-center[m+2])>=3&&HuorDistance>ZjDetectDistance)
			{
				left_angle_flag=1;
				zj_detect=3;
			}
		}
		if(right_angle_flag==1||left_angle_flag==1)
			left_angle_flag = 1;
		
		nu = R-number-1;
		if(nu<10)
			whitelost_left = 1;
		else
			whitelost_left = 0;
	}
}
void midline_draw_hd(u8 *img)
{
	int r = 0,c = 0,a = 0;
	int ee1 = 0, ee2 = 0;
	int left = 0,right = C;
	int center_count = 0;
	int find_flag = 0;
	int center_c = 0,center_c0 = 0;
	int stop_count = 0;
	int center_edge[R] = {0};
	int row_white_count[R] = {0};
	start_row_hd = 0;
	stop_row_hd = R-1;
	center_base = 0;
	for(a=0;a<R;a++)
		center[a] = 0;
	/* 找到白点像素值 */
	for(r = R-1;r>=0;r--)
	{
			left = 0;
			right = C;
			for(c = 1;c < C-2;c++)
			{
					if (img[r * C + c] > 0 && img[r * C + c - 1] == 0 && img[r * C + c + 1] > 0 && img[r * C + c + 2] > 0)
							left = c;
			}
			for(c=C-2;c>1;c--)
			{
					if (img[r * C + c] > 0 && img[r * C + c + 1] == 0 && img[r * C + c - 1] > 0 && img[r * C + c - 2] > 0)
							right = c;       
			}
			if (left != 0 && right != C && right - left > 0 && right - left < 16)
			{
					center_edge[center_count] = (left + right) / 2;
					center_count++;
			}
			if (center_count > 5)
					break;
	}
	if(center_count<=5)
		whitelost_left = 1;
	else
	{
		for (r = 1; r < center_count; r++)
		{
				if (fabs(center_edge[r - 1] - center_edge[r]) < 7 && fabs(center_edge[r + 1] - center_edge[r]) < 7&&center_edge[r]!=0)
				{
						center_c = center_edge[r - 1];
						break;
				}
		}
		center_c0 = center_c;
		/* 中点提取 */
		for (r = R-1; r >= 0; r--)
		{
				left = 0;
				right = C;
				ee1 = center_c - 15;
				if (ee1 < 0)
						ee1 = 0;
				ee2 = center_c + 15;
				if (ee2 > C-1)
						ee2 = C-1; 
				for (c = ee1+1; c <= ee2; c++)
				{
						if (img[r * C + c] > 0 && img[r * C + c - 1] == 0)//&& img[r * C + c + 1] > 0 && img[r * C + c + 2] > 0
								left = c;           // 左边缘
				}
				for (c = ee2-1; c >=ee1; c--)
				{
						if (img[r * C + c] > 0 && img[r * C + c + 1] == 0)//&& img[r * C + c - 1] > 0 && img[r * C + c - 2] > 0
								right = c;          // 右边缘
				}
				if (right - left > 0 && right - left < 20)
				{
						center[r] = (left + right) / 2;
						row_white_count[r] = right - left;
						stop_count = 0;
						find_flag++;
						if (r > start_row_hd)
								start_row_hd = r;
						if (r < stop_row_hd)
								stop_row_hd = r;
				}
				else if (right == left && left != 0&&right!=C)
				{
						center[r] = (left + right) / 2;
						stop_count = 0;
				}
				else
				{
						stop_count++;
						if(r<R-1)
						 center[r] = center[r + 1];
						else
						 center[r] = center_c;
				}
				center_c = center[r];
				if (((stop_count >= 3&&r<20)||(r>=20&&stop_count>=20))&&find_flag>=10)
						break;
		}
		
		if (find_flag < 10)
				whitelost_left = 1;
		else
				whitelost_left = 0;
		if (fabs(center[start_row_hd] - center_c0) > 12)
				center[start_row_hd] = center_c0;
		nu = start_row_hd - stop_row_hd - 2;
	}
}
/*******************************************************
*函数名称：race_identity()
*函数功能：识别赛道
*输入参数：无
*输出参数: race,反映赛道的整体拐弯情况
*******************************************************/
void race_identity()
{
	int c = 0,sum = 0;
	race1=race;
	sum_left = 0;
	sum_right = 0;
	/* 赛道斜率判断，是算法很重要的一个参量 */
	if(hd_flag==1)
	{
		for(c=start_row_hd;c>stop_row_hd+2;c--)
		{
			if (center[c] - center[c - 1] > 0)
					sum_left++;
			if (center[c] - center[c - 1] < 0)
					sum_right++;
		}
		sum = sum_left - sum_right;
		if(start_row_hd-stop_row_hd>5)
		{
			race = (float)((float)sum / (float)(start_row_hd-stop_row_hd-2));
		}
	}
	else if(sp_flag==1)
	{
		for (c = R - 1; c >number; c--)
		{
			if (center[c] - center[c - 1] > 0)
					sum_left++;
			if (center[c] - center[c - 1] < 0)
					sum_right++;
		}
		sum = sum_left - sum_right;
		race = (float)((float)sum / (float)(R-number-1));
  }
	else if(xp_flag==1)
	{
		for (c = R - 1; c >number; c--)
		{
			if (center[c] - center[c - 1] > 0)
					sum_left++;
			if (center[c] - center[c - 1] < 0)
					sum_right++;
		}
		sum = sum_left - sum_right;
		if(R-number-1>0)
			race = (float)((float)sum / (float)(R-number-1));
	}
	// 下坡标志位，不丢白线情况下识别
	if(hd_flag==1&&hd_stage_flag==5&&fabs(race)<0.15&&fabs(race)>0.02&&nu>30)
	{
		xp_flag=1;
		hd_flag=0;
		stop_time = 0;
	}
	//                  xiugai-3
	if(speed_hd1>0&&HuorDistance-speed_hd1>Hd1ToHd5Distance&&hd_stage_flag>=2)
		hd_stage_flag = 5;
	if(speed_hd1>0&&HuorDistance-speed_hd1>Hd1ToXpDistance&&hd_stage_flag==5&&hd_flag==1)		
	{
		hd_flag = 0;
		xp_flag = 1;
	}
	
	/* 消抖，降低race的变化 */
	if(fabs(race-race1)<0.03)
		race = race1;
	/* 转弯补偿，可以让小车更好地循白线 */
	if(xp_flag==1)																					// 下坡补偿上限
	{
		if(img_stop_flag>=3&&img_cross_flag<2)
		{
			correct_row = (int)(race*25);
			if(fabs(correct_row)>8)
				correct_row =8*correct_row/fabs(correct_row);
		}
		else if(img_cross_flag==2)
		{
			correct_row = (int)(race*28);
			if(fabs(correct_row)>12)
				correct_row =12*correct_row/fabs(correct_row);
		}

	}
	else
		correct_row = 0;	
}

/*******************************************************
*函数名称：error()
*函数功能：根据提取的坐标计算赛道偏差
*输入参数：计算出的中点位置数组
*输出参数：偏差值
*******************************************************/
float error_ca()
{
	int rw = 0,rw_white_count = 0,rw_effec = 0,cw = 0,i = 0;
	Screen();

	// 直角根据霍尔距离辅助识别
	if(nu<38&&left_angle_flag==0&&sp_flag==1&&HuorDistance>ZjDetectDistance)
		left_angle_flag = 1;
//	if(race<-0.1&&left_angle_flag==0&&sp_flag==1&&HuorDistance>ZjDetectDistance)
//		left_angle_flag = 1;
	
	// 防止直角提前误判
	if(sp_flag==1&&(HuorDistance<ZjClearDistance))//
		left_angle_flag = 0;

	// 在直角处判断图像是否有效，防止误判识别成河道
	if((sp_flag==1&&left_angle_flag==1&&Detect>=1))
	{
		if(whitelost_left==0)
		{
			if(nu>=20&&white_count_ratio>0.02&&white_count_ratio<0.32)
			{
				for(rw=R-1;rw>R-10;rw--)
				{
						rw_white_count = 0;
						for(cw=center[R-1]-8;cw<center[rw]+8;cw++)
						{
							if(cw>=0&&cw<C)
							{
								if(Gray_Image_Buffer[rw*C+cw]==255)
									rw_white_count++;
							}
						}
						if(rw_white_count>3&&rw_white_count<11&&fabs(center[rw]-center[rw-1])<=3)
							rw_effec++;
				}
				if(rw_effec<8)
					whitelost_left = 1;
			}
			else
				whitelost_left = 1;
		}
	}
	
  if(whitelost_left==0)
	{
		race_identity(); // 计算斜率
		
		// 根据最下面10行数据，判断车是在往左走还是在往右走，主要用于丢图像刹车	
		if(nu>36)
		{
			for(i=R-3;i>=R-10;i--)
				center_average+=center[i];
			center_average = center_average/8;
		}
		center_r_last = center_r_now;                     
		center_r_now = center_average;
		if(center_r_last-center_r_now>0&&center_r_last-center_r_now<4&&nu>30)
			LostDirection = 1; // 往右走
		else if(center_r_now-center_r_last>0&&center_r_now-center_r_last<4&&nu>30)
			LostDirection = 2; // 往左走
		

		
		// 计算中心列的极差，用于判断交接时十字线处行数和斜率均满足限制的情况
		if(img_stop_flag>=3)
		{
			center_stop_max = 0;
			center_stop_min = 80;
			for(i=R-1;i>number+1;i--)
			{
				if(center[i]>center_stop_max)
					center_stop_max = center[i];
				if(center[i]<center_stop_min)
					center_stop_min = center[i];
			}
		}
		// 下坡进入交接十字线之前对图像的过滤
		if(img_stop_flag==3&&fabs(race)>0.5&&nu>30&&img_cross_flag==0)
			img_cross_flag = 1;
		else if(img_stop_flag==3&&fabs(race)<0.5&&fabs(race)>0.08&&nu>30&&img_cross_flag==1)
			img_cross_flag = 2;
		if(img_stop_flag>=3&&HuorDistance-speed_stop2>HuorCross&&fabs(race)<0.5)
			img_cross_flag = 2;
		if(img_cross_flag==2)
		{
			if(img_stop_flag==3 && 
				(nu<25 || 
			   fabs(race)>=0.7))
				whitelost_left = 1;
			else if(img_stop_flag==4&&(nu<20||fabs(race)>=0.5))
				whitelost_left = 1;
			if(white_count_ratio>0.08||white_count_ratio<0.03)
				whitelost_left = 1;
		}	
	}
	// || (center_stop_max-center_stop_min>42)||center_stop_max-center_stop_min>30)
	// 记录霍尔传感器值
	if(speed_left==0&&sp_flag==1&&left_angle_flag==1&&zj_keep_flag==1)  
		speed_left = HuorDistance;
	if(hd_stage_flag==1&&speed_hd1==0&&HuorDistance>0)
		speed_hd1 = HuorDistance;
	if(hd_stage_flag==5&&speed_hd5==0&&HuorDistance>0)
		speed_hd5 = HuorDistance;
	if(xp_flag==1&&speed_xp==0&&HuorDistance>0)
		speed_xp = HuorDistance;
	if(img_stop_flag==2&&speed_stop2==0)
		speed_stop2 = HuorDistance;		
	if(img_stop_flag==3&&speed_stop3==0)
		speed_stop3 = HuorDistance;
	if(img_stop_flag==4&&speed_stop4==0)
		speed_stop4 = HuorDistance;
	
	//行数小于一定值时，丢图像处理
	if(hd_flag==1&&nu<20)
		whitelost_left = 1;
	else if(xp_flag==1&&nu<10)
		whitelost_left = 1;

	/* 开始计算控制信息 */
	if(whitelost_left==1)        //丢图像
	{
		nu=0;
		race = 0;		
		control_message = control_message2;
		// 上坡直角丢白线处理
		if(sp_flag==1&&left_angle_flag==1)
		{ 
			if(white_count_ratio>0.15)  //确认直角
				Detect = 2;				
			control_message = -48;
			zj_keep_flag = 1;
		}
		
		// 河道以及上坡下坡部分阶段丢图象处理，根据丢图象的方向设定角度，虽然角度固定，但是各阶段P不一样，效果也是相适应的
		if((hd_flag==1&&hd_stage_flag==5)||(xp_flag==1&&img_stop_flag<1))
		{
				control_message = 36;
		}
		whitelost_left = 0;				// 清除丢白线标志位	
		return control_message;
	}
	
	else                        //图像正常
	{
		float y = 0;
		int i = 0;
		if(sp_flag==1&&Detect==2&&left_angle_flag==1)
		{
			if(((double)white_count_ratio<0.32&&(double)white_count_ratio>0.01&&nu>25&&zj_time>2&&HuorDistance-speed_left>12&&speed_left>0))  //这里需要更加严格
			{ 
				sp_flag=0;
				hd_flag=1; 
				late_cut_down = 0;
				Detect = 0;
				left_angle_flag = 0;
			}			
		}
		/* 河道标志位，分为5个阶段 */
		if(hd_flag==1)
		{		
			if((double)race<race_hd1&&hd_stage_flag==0&&nu>35)  //以后要细调斜率,在固定摄像头的情况下,根据走场参数既是确定，测试用
			{
				hd_stage_flag = 1;			
			}
			else if(nu>35&&(double)race>race_hd2&&hd_stage_flag==1)//1,测试用
			{
				hd_stage_flag = 2;
			}
			else if((double)race<race_hd3&&hd_stage_flag==2)
			{
				hd_stage_flag = 3; 
			}
			else if((double)race>race_hd4&&hd_stage_flag==3)
			{
				hd_stage_flag = 4;
			}
			else if((((double)race<race_hd5)&&hd_stage_flag==4)&&speed_hd1>0&&HuorDistance-speed_hd1>Hd1ToHd5Distance-6)
			{
				hd_stage_flag = 5;
			}
		}
		
	/* 下坡标志位，分为四个阶段 */
	if(xp_flag==1)
	{
		if((double)race<-0.3&&img_stop_flag==0&&((speed_hd1>0&&HuorDistance-speed_hd1>110)||XpHuorStartFlag==1))
		{
			img_stop_flag=1;
		}
		else if((double)race>0.3&&img_stop_flag==1&&((speed_hd1>0&&HuorDistance-speed_hd1>130)||XpHuorStartFlag==1))
		{
			img_stop_flag=2;
			stop_time = 0;
		}
		else if((double)race<-0.3&&img_stop_flag==2)
		{
			img_stop_flag=3;
		}
		if(nu>30&&img_stop_flag==3&&fabs(race)<=0.25&&fabs(race)>0.04&&img_cross_flag==2)
		{
			img_stop_flag=4;
		}
	}
	
	/* 前瞻选择，固定控制行选择 */	
	if(sp_flag==1)
	{
		if(number<6)
			control_line=6;
		else
			control_line = number+1;
	}
	else if(hd_flag==1)
	{
		if(stop_row_hd+2<3)
			control_line = 3;
		else
			control_line = stop_row_hd+1;
	}
	else if(xp_flag==1)
	{
		// 十字线之前，目前仍是固定控制行打角
		if(img_stop_flag<=1)
		{
			if(number<12)
				control_line=12;
			else
				control_line = number+1;
		}
		else if(img_stop_flag==2)
		{
			if(number<15)
				control_line = 15;
			else
				control_line = number+1;
		}
		else if(img_cross_flag<2&&img_stop_flag==3)
		{
			if(number<15)
				control_line=15;
			else
				control_line = number+1;
		}
		else if(img_cross_flag>=2)
		{
			if(number<15)
				control_line=15;
		}
	}

	/* 控制角度 */	
	center_row = 39-correct_row;
	row_sub = (float)(R-1-control_line-5);
	y = (float)(center[control_line] - center_row);
	control_message = y;
	if(img_cross_flag==2)
	{
		if(number<15)
		{
			control_message = (center[control_line]+center[control_line+1]+center[control_line+2]+center[control_line+3])/4-center_row;
			if(control_message<-8||fabs(control_message-control_message2)>20)
				control_message = control_message2;
//			if((fabs(control_message-control_message3)>15&&control_message<0)||(control_message>0&&control_message>control_message3))
//			{
//				control_message = control_message2;
//			}
//				if(control_message<11&&control_message>0)
//					control_message = 10;//control_message<-12||
	//		}
		}
		else
			control_message = control_message2;
	}
	// 以下是特殊情况的打角
	
	/* 上坡过直角，分两个阶段 */
	if(sp_flag==1&&HuorDistance>ZjDetectDistance)
	{
		if(speed_now>8)
			late_cut_down = 2;
		else
			late_cut_down = 0;
	}
	if(sp_flag==1&&left_angle_flag==1)
	{
		// 经测试，当P为0.4的时候，control_message为+-50的时候，舵机已输出最大角，所以
		// 给定角不能超过这个乘积的范围，以免舵机受堵出现不正常的硬件情况
		if(nu<38&&speed_time<=3&&nu>20)//zj_sc_count
		{ 
				zj_speed = speed_now;
		}
		if(nu<ZjBigAngleRow+15&&speed_now>=ZjScSpeed)
			late_cut_down = 1;
		else
			late_cut_down = 0;
		
		small_angle_row = ZjBigAngleRow;
		if(zj_speed<5)
			small_angle_row = ZjBigAngleRow;
		else if(zj_speed>=5&&zj_speed<=9)
			small_angle_row = ZjBigAngleRow+2;
		else
			small_angle_row = ZjBigAngleRow+3;
		small_angle_row = ZjBigAngleRow;
//		if(left_angle_flag==1&&nu==38)
//			zj_keep_flag = 1;
		if(nu>=small_angle_row)
		{ 
			control_message  = -10;
			if(zj_keep_flag==1)
				control_message = -45;
		}
		else
		{
			control_message  = -45;
			zj_keep_flag=1;
			if(nu<15)
				Detect = 1;
		}
  }
	
	// 河道部分
	if(hd_flag==1)
	{
		// 第一阶段，主要是保证进入河道三种姿态的识别
		if(hd_stage_flag==1&&nu==38&&race<-0.7&&hd_correct_flag==0)
		{
			hd_correct_flag = 1;
			HdInSpeed = speed_now;
		}
		if(hd_stage_flag==1&&hd_correct_flag>=1)
		{
			HdInBackRow = 34;
			if(HdInSpeed>3&&HdInSpeed<6)
				HdInBackRow = 35;
			if(HdInSpeed>=6)
				HdInBackRow = 36;
			if(nu<HdInBackRow)
				control_message = -40;
		}
		if(hd_stage_flag==1&&hd_correct_flag>=1&&nu<32&&Hd1OutFlag==0)
			Hd1OutFlag = 1;
		if(Hd1OutFlag==1&&nu==38&&fabs(race)<0.25&&hd_stage_flag==1)
			hd_stage_flag = 2;
		// 近直线阶段，主要是保证不要有错误角
		if(hd_stage_flag>=2&&hd_stage_flag<=4&&nu<32)
		{
			control_message = control_message2;
		}
		 
		// 测出河道的速度，用于确定出河道的P
		if(hd_stage_flag>=3&&hd_stage_flag<=4)
		{
			speed_now_hd5 = speed_now;
		}
	}
	if(HuorDistance>185&&sp_flag==1&&control_message>0&&left_angle_flag==0)
		control_message = -5;
 
	// 下坡部分，主要是做好上次打角的记录，交接阶段要严格一些
	if(img_cross_flag<2)
		control_message2 = control_message;
	else
	{
//		if(control_message>8)
//			control_message2 = control_message;
//		else
//		{
			if((fabs(control_message2-control_message)<=20))
				control_message2 = control_message;
		///}
	}
	
	return control_message;
 }
}
/*******************************************************
*函数名称：Screen()
*函数功能：显示屏显示调试需要观察的数据
*输入参数：无
*输出参数：无
*********************************e**********************/
void Screen(void)
{
	if(ScreenChangeFlag==0)
	{
		stage_flag = sp_flag+hd_flag*2+xp_flag*3;
		if(hand_restart>=1)
			stage_flag=4;
		number_show(60,60,stage_flag,1);
		number_show(100,60,zj_speed,2);
		number_show(40,80,nu,2);
		float_number_show(40,100,race);
		float_number_show(140,100,white_count_ratio);
		if(hd_flag==1)
		{
			number_show(40,120,hd_stage_flag,1);
			number_show(60,120,hd_correct_flag,1);
		}
		else if(xp_flag==1)
		{ 
			number_show(60,140,img_stop_flag,1);
			number_show(90,140,img_cross_flag,1);
		}
		number_show(60,160,HuorDistance,4);
		number_show(70,180,center_stop_max-center_stop_min,3);
		number_show(120,180,control_message,3);
		number_show(160,180,control_message2,3);
		number_show(200,180,control_message3,3);
	}
	else
	{
		float_number_show(20,200,translation_angle);
		number_show(70,200,ZjBigAngleRow,2);
		number_show(100,200,ZjScSpeed,2);
		float_number_show(140,200,HdAngle);
		number_show(200,200,HdScSpeed,2);
		float_number_show(60,220,xpp1);
		float_number_show(110,220,xpp2);
		float_number_show(160,220,xpp3);
		number_show(210,220,XpScSpeed,2);
	}
}


s16 max(s16 *a)
{
	s16 the_max = 0;
	u8 i = 0;
	for(i=0;i<3;i++)
	{
		if(a[i]>the_max)
			the_max = a[i];
	}
	return the_max;
}
int restart_judge(u8 *Data)
{
	u8 i = 0,j = 0;
	int count_judge = 0;
	for(i=0;i<R;i++)
	{
		for(j = 0;j<C;j++)
		{
			if(Data[i*C+j]>100&&Data[i*C+j]<150)
				count_judge++;
		}
	}
	if(count_judge>3240)
		return 1;
	else
		return 0;
}

