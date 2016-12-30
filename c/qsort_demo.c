#include <stdio.h>
#include <stdlib.h>

int icmp(const void *a,const void *b){
	/* 把a强制类型转化为 int型指针*/ 
	int x = *(int*)a;
	int y = *(int*)b;
     if(x == y){
     	return 0;
     }
     if(x > y){
     	/*逆序*/ 
     	return -1;
     }
     return 1;
}

void main(int argc, char **argv){
	int ary[] = {4,7,1,2};
	const int alen = sizeof(ary)/sizeof(int);

     printf("===============================================================\n");
	for(int i = 0; i< alen; i++){
        printf("ary[%d] = %d\n",i,ary[i]);
	}
    printf("===============================================================\n");
	qsort(ary, alen, sizeof(int), icmp);
	for(int i = 0; i < alen; i++){
		printf("ary[%d] = %d\n",i,ary[i]);
	}
}