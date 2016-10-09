//
//  FunctionsDemo.c
//  
//
//  Created by Varun on 12/07/16.
//
//

#include <stdio.h>

int main()
{
    int a = 0;
    int result = 0;
    void showResult(int);
    int square(int);
    int addition(int,int);
    int subtraction(int,int);
    int multiplication(int,int);
    int division(int,int);
    printf("Enter Number: ");
    scanf("%d",&a);
    
    result = square(a);
    
    showResult(result);
    
    showResult(addition(5,87));
    showResult(subtraction(40,5));
    showResult(multiplication(4,5));
    showResult(division(25,5));
    
    return 0;
}

void showResult(int result)
{
    printf("%d\n",result);
}

int square(int d)
{
    return d*d;
}

int addition(int a, int b)
{
    return a+b;
}
int subtraction(int c,int d)
{
    return c-d;
}
int multiplication(int e,int f)
{
    return e*f;
}
int division(int g,int h)
{
    return g/h;
}



