//
//  Operations.c
//  
//
//  Created by Varun on 30/06/16.
//
//
#include <stdio.h>

void addition(int n1,int n2,int *result)
{
    *result = n1+n2;
}
void substraction(int n1,int n2,int *result)
{
    *result = n1-n2;
}
void multiplication(int n1,int n2,int *result)
{
    *result = n1*n2;
}
void division(int n1,int n2,int *result)
{
    *result = n1/n2;
}

int main()
{
    int option, num1, num2, result;

    while (1) {`1       `1
        
        
        printf("Options\n");
        printf("1. addition\n2. substraction\n3. multiplication\n4. division\n5. Exit\nEnter option: ");
        scanf("%d",&option);
   
        if (option == 5) {
            break;
        }
        
        printf("enter 1st number :");
        scanf("%d",&num1);

        printf("enter 2nd number :");
        scanf("%d",&num2);
        
        if(option==1)
        {
           addition(num1,num2,&result);
        }
        else if(option==2)
        {
            substraction(num1,num2,&result);
        }
        else if(option==3)
        {
            multiplication(num1,num2,&result);
        }
        else if(option==4)
        {
            division(num1,num2,&result);
        }
        
        printf("Result: %d\n",result);
    }
    return 0;
}
