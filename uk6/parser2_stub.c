/* Recursive Descent Parser */
 
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>


char buffer[30];	//vstupni retezec
int i=0;		//index ve vstupnim retezci

void S();
void E();
void E1();
void T();
void T1();
void F();
void A();


 void S()
  {
    printf("\nS -> A=E");
    A();
    if(buffer[i]=='=')
   {
     printf("\nterminal =");
     i++;
     E();
   }
   else
  {
    printf("\nError v S\n");
    exit(0);
  }
}
 
 
void A()
{
    if(isalpha(buffer[i]))
	{
		printf("\nterminal %c",buffer[i]);
		i++;
	}
	else
	{
		printf("\nError v A\n");
		exit(0);
	}
}
 
 
 
void E()
   {
     printf("\nE -> T E1");
     T();
     E1();
   }
 
void  E1()
   {
      if(buffer[i]=='+')
{
   printf("\nE1 -> +T E1");
   printf("\nterminal +");
   i++;
   T();
   E1();
}
      else
{
printf("\nE1 -> <epsilon>");
 
}
   }

/*
doplnte pravidla pro T a T1
/*

 
void T()
   {
     
   }
 
void  T1()
	{
    
	}
 
void F()
  {
    printf("\nF -> ( E )");
    if(buffer[i]=='(')
     {
       printf("\nterminal (");
       i++;
       E();
   if(buffer[i]==')')
     {
       printf("\nterminal )");
       i++;
     }
    else
     {
       printf("\nError Nesparovane zavorky v F\n");
       exit(0);
     }
    return;
   }
	
/* 
	Doplnte zbyvajici pravidla pro F
*/
	
	}
printf("\nError Spatny argument v F\n");
exit(0);
}
 
 
void main()
 {
   printf("\nGrammar:");
   printf("\nS -> A=E");
   printf("\nA-> [a-z]");
   printf("\nE-> T E1");
   printf("\nT-> F T1");
   printf("\nE1-> + T E1 | epsilon");
   printf("\nT1-> * F T1 | epsilon");
   printf("\nF-> (E) | a | b");

   printf("\n\nZadejte vstupni retezec:\n");

fgets(buffer, 30, stdin);
puts(buffer);	
   S();
printf("\n\nOK, aktualni vstup je generovan zadanou gramatikou.\n");
}
