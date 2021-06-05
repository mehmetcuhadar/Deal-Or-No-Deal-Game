/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/.Xilinx/deneme/random.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_1298496730_3212880686_p_0(char *t0)
{
    char t23[16];
    char t24[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    unsigned char t22;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3520);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 5320);
    t8 = (t0 + 3616);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t13 = (2 - 3);
    t14 = (t13 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t4 + t16);
    t6 = *((unsigned char *)t1);
    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t17 = (0 - 3);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t7 = (t8 + t20);
    t21 = *((unsigned char *)t7);
    t22 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t6, t21);
    t9 = (t0 + 1968U);
    t10 = *((char **)t9);
    t9 = (t10 + 0);
    *((unsigned char *)t9) = t22;
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1968U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t14 = (3 - 3);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t4 + t16);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t24 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 3;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t13 = (1 - 3);
    t18 = (t13 * -1);
    t18 = (t18 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t18;
    t7 = xsi_base_array_concat(t7, t23, t8, (char)99, t2, (char)97, t1, t24, (char)101);
    t18 = (1U + 3U);
    t5 = (4U != t18);
    if (t5 == 1)
        goto LAB10;

LAB11:    t10 = (t0 + 3616);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t25 = (t12 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t7, 4U);
    xsi_driver_first_trans_fast(t10);
    goto LAB6;

LAB10:    xsi_size_not_matching(4U, t18, 0);
    goto LAB11;

}

static void work_a_1298496730_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(65, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3680);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3536);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1298496730_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1298496730_3212880686_p_0,(void *)work_a_1298496730_3212880686_p_1};
	xsi_register_didat("work_a_1298496730_3212880686", "isim/main_isim_beh.exe.sim/work/a_1298496730_3212880686.didat");
	xsi_register_executes(pe);
}
