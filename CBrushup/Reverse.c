//
//  Reverse.c
//  
//
//  Created by Varun on 30/06/16.
//
//

#include <stdio.h>
#include <stdlib.h>
int main()
{
    
    int i,j,k,l=0;
    char *str1 = (char *) malloc(sizeof(char)*1024);
    
     char *str2 = (char *) malloc(sizeof(char)*1024);
    
     char *str3 = (char *) malloc(sizeof(char)*1024);
     char *str4 = (char *) malloc(sizeof(char)*1024);

    printf("\nEnter String : ");
    gets(str1);
    
    for(i=0; str1[i]!='\0'; i++) {
        if(str1[i]!=' ')
            str2[i]=str1[i];
        else
            break;
    }
      str2[i]='\0';
   
    l=0;
    for(j=i+1; str1[j]!='\0'; j++) {
        if(str1[j]!=' ')
            str3[l++]=str1[j];
        else
            break;
    }
    str3[l]='\0';
 
    
     l=0;
    for(k=j+1; str1[k]!='\0'; k++) {
        if(str1[k]!=' ')
            str4[l++]=str1[k];
        else
            break;
    }
    str4[l]='\0';
    
    
    printf("\n reverse string : %s %s %s",str4, str3, str2 );
}

