%{
#include<stdio.h>
int c=0;
int w=0;
int s=0;
int l=0;
%}

%%
" " {s++; w++;}
[\n] {l++; w++;}
[\t\n] {w++;}
[^\t\n] {c++;}
%%

int yywrap()
{
return 1;
}

int main ()
{
yyin=fopen("info1.txt","r");
yylex();
printf("The characters %d \n words %d\n spaces %d\n lines %d\n",c,w,s,l);
return 0;
}

