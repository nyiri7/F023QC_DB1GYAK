#include <stdio.h>
#include <stdlib.h>
void pelda_1();
int main()
{
    work();
    return 0;
}
void work() {
    FILE *fp;
    char ch;
    char fname[50];
    printf("File: ");
    scanf("%s", fname);
    fp = fopen(fname, "w");
    printf("Text: ");
    while( (ch = getchar()) != '#') {
        putc(ch, fp);
    }
    fclose(fp);
    fp = fopen(fname, "r");
    while ( (ch = getc(fp)) != EOF ) {
        printf("%c",ch);
    }
    fclose(fp);
    return 0;
}

