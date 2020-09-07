
%{ 
#include<stdio.h>
#include<string.h>
int l=0, c=0; 
%} 

%% 
[a-zA-Z]+ { l=strlen(yytext); 
			if(l>=5) 
			{c++;} } 
"." {printf("%d",c);c=0;}
%% 

int yywrap (void ) {
} 

int main() 
{ 
printf("Enter the string:"); 
yylex(); 
return 0; 
} 

