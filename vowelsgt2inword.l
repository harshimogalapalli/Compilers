%{
#include<stdio.h>
#include<string.h>
int vowels=0;
int count_w=0;
%}

%%
([a-zA-Z])+ {
int i;
for(i=0;i<strlen(yytext);i++){
if(yytext[i]=='a'||yytext[i]=='e'||yytext[i]=='i'||yytext[i]=='o'||yytext[i]=='u') vowels++;
}
if(vowels>=2){
count_w++;
}
vowels=0;
}
"\n" {printf("%d",count_w);count_w=0;}
%%

int yywrap (void ) 
 { 
    return 1; 
 } 
  
int main() 
 { 
  printf("Enter the string:"); 
  yylex(); 
  return 0; 
 }
