#include <stdio.h>
#include <string.h>
/* 程序的目的是为了确定计算机中的float类型的express表示法 */
void main(){
  float data;
  unsigned long buff;
  int i;
  char s[34];
  // 将0.75以单精度浮点数的形式存储在变量data中
  data = (float)0.75;

 // 把数据复制到4字节长度的整形变量buff中以逐个提取出每一位
  memcpy(&buff, &data, 4);
  // 逐一提取出每一位
  for(i = 33; i >= 0; i--){
    if(i == 1 || i == 10){
      // 第0位为符号位  第一位到第八位指数位 在这两个空隙中加入分隔符- 方便分析和观察
      s[i] = '-';
    }else{
      // 为各个字节赋值'0' 或者 ‘1’
      if(buff % 2 == 1){
        s[i] = '1';
      }else{
        s[i] = '0';
      }
      buff /= 2;
    }
  }
  // '\0'ASCII方式 表示空字符串 字符串的最大长度 实际长度根据‘\0’的位置来确定
  s[34] = '\0';
  // 显示结果
  printf("%s\n",s);  //0-01111110-10000000000000000000000
}
