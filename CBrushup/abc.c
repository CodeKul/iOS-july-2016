//
//  abc.c
//  
//
//  Created by Varun on 12/07/16.
//
//

#include "stdio.h"

int main()
{
    int x,y;
    void addition(int,int);
    void subtract(int*,int*);
    x=30;
    y=40;
    printf("Before:\n x:%d ,y:%d",x,y);
//    addition(x,y);
    subtract(&x,&y);
    printf("After:\n x:%d,y:%d",x,y);
    
}

void addition(int x,int y)
{
    x = 10;
    y = 20;
    
    int a = x+y;

    printf("%d",a);
}

void subtract(int *x,int *y)
{
    
    *x=50;
    *y=30;
    printf("%d",*x-*y);

}