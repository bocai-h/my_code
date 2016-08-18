#include <stdio.h>
#include  <stdlib.h>

struct node{
	struct node *next;
	int val;
};

typedef void (*func_t)(int); /* 函数指针类型 */

void foreach(struct node *list,func_t func){
	while(list){
		func(list->val);
		 list = list->next;
	}
}

void f(int n){
	printf("node(?) = %d\n",n);
}

void main(){
	struct node *list = 0, *l;
	int i;

	for(i = 0; i < 4; i++){
		l = malloc(sizeof(struct node));
		l->val = i;
		l->next = list;
		list = l;
	}

	i = 0;l = list;
	while(l){
		printf("node(%d) = %d\n",i++,l->val);
		l = l->next;
	}
	foreach(list,f);
}

