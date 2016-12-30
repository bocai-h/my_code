#include <stdio.h>
int two(int x)
{
 return x*2;
 }
int three(int x)
{ 
	return x*3; 
}
void main(){
   
  int (*times)(int);

  int argc = 2;
  int n = 2;

  /*根据不同的条件把不同的指针(函数) 赋值给times*/
  if (argc == 1){
  	times = two;
  }else{
  	times = three;
  }
  printf("times(%d) = %d\n",n,times(n));
}