//
//  Pointers.c
//  
//
//  Created by Varun on 29/06/16.
//
//

#include <stdio.h>
#include <stdlib.h>

int main() {
    
    
    int a,b;
    
    void addition(int *,int *);
    void add(int,int);
    
    char *str = (char *) malloc(sizeof(char)*1024);
    char abc;
    
    a = 10;
    b = 20;
    
    printf ("Before:\na: %d\nb: %d\n",a,b);
    
    //addition(&a,&b);
    
    add(a,b);
    
    printf ("After:\na: %d\nb: %d\n",a,b);
    
    //scanf("%s",str);
//    scanf("%c",&abc);
//    printf ("After:\n abc = %c\n",abc);
    
//    for (a = 0; a < 5; a++) {
//        printf("%c", * (str + a));
//    }
    
    
    
    
}

void add(int x, int y)
{
    x = 20;
    y = 30;
    
    printf("Result: %d\n", x + y);

}

void addition (int *x, int *y) {
    
    *x = 20;
    *y = 30;
    
    printf("Result: %d\n", *x + *y);
}