//
//  StringRev.c
//  
//
//  Created by Varun on 30/06/16.
//
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
char *strrev(char *str)
{
    char *p1, *p2;
    
    if (! str || ! *str)
        return str;
    for (p1 = str, p2 = str + strlen(str) - 1; p2 > p1; ++p1, --p2)
    {
        *p1 ^= *p2;
        *p2 ^= *p1;
        *p1 ^= *p2;
    }
    return str;
}

int main() {
    
    char *str = (char *) malloc(sizeof(char)*1024);
    char *strRev = (char *) malloc(sizeof(char)*1024);
    char *strTemp = (char *) malloc(sizeof(char)*1024);
    
    int i=0,j=0;
    
    printf("enter string:");
    gets(str);
    str= strrev(str);
    
    for (i=0; str[i]!='\0'; i++) {
        if (str[i]!=' ') {
            strTemp[j++] = str[i];
        }
        else {
            strTemp[j] = str[i];
            strTemp[j+1] = '\0';
            strRev = strcat(strRev, strrev(strTemp));
            strTemp = (char *) malloc(sizeof(char)*1024);
            j = 0;
            
        }
    }
    strTemp[j] = ' ';
    strTemp[j+1] = '\0';
    strRev = strcat(strRev, strrev(strTemp));

    printf("\nreverse string :%s", strRev);
    
    
    return 0;
}