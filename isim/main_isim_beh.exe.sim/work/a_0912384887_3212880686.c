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
static const char *ng0 = "C:/.Xilinx/deneme/slowerClock.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0912384887_3212880686_p_0(char *t0)
{
    char t3[16];
    char t8[16];
    char *t1;
    unsigned char t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3240);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t4 = (t0 + 5116U);
    t6 = (t0 + 5170);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 7;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (7 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t3, t5, t4, t6, t8);
    t13 = (t3 + 12U);
    t12 = *((unsigned int *)t13);
    t14 = (1U * t12);
    t15 = (28U != t14);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 3336);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 28U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 5116U);
    t5 = (t0 + 5178);
    t7 = (t3 + 0U);
    t9 = (t7 + 0U);
    *((int *)t9) = 0;
    t9 = (t7 + 4U);
    *((int *)t9) = 23;
    t9 = (t7 + 8U);
    *((int *)t9) = 1;
    t11 = (23 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t9 = (t7 + 12U);
    *((unsigned int *)t9) = t12;
    t2 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t4, t1, t5, t3);
    if (t2 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 5202);
    t5 = (t0 + 3336);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 28U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3400);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB8:    goto LAB3;

LAB5:    xsi_size_not_matching(28U, t14, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(49, ng0);
    t9 = (t0 + 3400);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast(t9);
    goto LAB8;

}

static void work_a_0912384887_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3464);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3256);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0912384887_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0912384887_3212880686_p_0,(void *)work_a_0912384887_3212880686_p_1};
	xsi_register_didat("work_a_0912384887_3212880686", "isim/main_isim_beh.exe.sim/work/a_0912384887_3212880686.didat");
	xsi_register_executes(pe);
}
