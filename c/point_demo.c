# include <stdio.h>

void main(){
	int i = 5;
	/* 把i变量的地址复制给p*/
	int *p = &i;
	/* *p代表p地址指向的值 */
	*p = 6;
	printf("i = %d",i);    /* output: 6*/
	/*printf("p = %s",p);*/
}
