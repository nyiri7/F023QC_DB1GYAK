#include <stdio.h>
#include <stdlib.h>

int main() {

    char nev1[30];
    char nev2[30];

    printf("Elso filenev: \n");

    scanf("%s", nev1);

    printf("Masodik filenev: \n");

    scanf("%s", nev2);

    masol(nev1,nev2);

    return 0;
}



void masol(char *file1, char *file2)
{
    FILE *fp1, *fp2;
    char c;
    int p;


    if ((fp1 = fopen(file1, "r")) == NULL)
        {
            printf("\nNem lehet megnyitni a fajlt.");
        return;
        }
    else
        {   printf("\nFajl megnyitva masolasra\n ");
            }

    fp2 = fopen(file2, "w");
    fseek(fp1, 0L, SEEK_END);
    fseek(fp1, 0L, SEEK_SET);


    while (p--)
        {
        c = fgetc(fp1);
        fputc(c, fp2);
        }
    fclose(fp1);
    fclose(fp2);
}
