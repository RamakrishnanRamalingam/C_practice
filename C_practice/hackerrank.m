//
//  hackerrank.m
//  C_practice
//
//  Created by Rama Thean on 2026-05-14.
//
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>



/*-------------------------------------------------------------------*/
/*
 * This stores the total number of books in each shelf.
 */
int* total_number_of_books;

/*
 * This stores the total number of pages in each book of each shelf.
 * The rows represent the shelves and the columns represent the books.
 */
int** total_number_of_pages;
int dynamic_array_book(void)
{
    int total_number_of_shelves;
    scanf("%d", &total_number_of_shelves);
    int total_number_of_queries;
    scanf("%d", &total_number_of_queries);

    // Allocate memory for number of books
    total_number_of_books =
        calloc(total_number_of_shelves, sizeof(int));

    // Allocate memory for shelves
    total_number_of_pages =
        calloc(total_number_of_shelves, sizeof(int*));
    while (total_number_of_queries--) {
        int type_of_query;
        scanf("%d", &type_of_query);
        // Type 1 -> Add book
        if (type_of_query == 1) {
            int x, y;
            scanf("%d %d", &x, &y);
            // Increase book count
            total_number_of_books[x]++;
            int new_count = total_number_of_books[x];
            // Resize memory for shelf x
            total_number_of_pages[x] =
                realloc(total_number_of_pages[x],
                        new_count * sizeof(int));
            // Store pages at last position
            total_number_of_pages[x][new_count - 1] = y;
        }
        // Type 2 -> Print pages
        else if (type_of_query == 2) {
            int x, y;
            scanf("%d %d", &x, &y);
            printf("%d\n",
                   total_number_of_pages[x][y]);
        }

        // Type 3 -> Print total books
        else {

            int x;
            scanf("%d", &x);
            printf("%d\n",
                   total_number_of_books[x]);
        }
    }
    // Free memory of each shelf
    for (int i = 0; i < total_number_of_shelves; i++) {
        free(total_number_of_pages[i]);
    }

    // Free top-level arrays
    free(total_number_of_pages);
    free(total_number_of_books);

    return 0;
}
/*-------------------------------------------------------------------*/
//Hello world
int  helo_world(void)
{
    
    char s[100];
    scanf("%[^\n]%*c", &s);
      
    /* Enter your code here. Read input from STDIN. Print output to STDOUT
    printf("Hello,World!\n%S",s);*/
    printf("Hello, World!\n%s",s);
    return 0;
}
/*-------------------------------------------------------------------*/
//playing with character
int playing_character(void)
{
    char ch;
    char s[30];
    char sen[30];
    scanf("%c",&ch);
    scanf("%s",s);
    getchar();   // clear newline
fgets(sen, sizeof(sen), stdin);
    printf("%c\n%s\n%s",ch,s,sen);
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    return 0;
}
/*-------------------------------------------------------------------*/
//sum and difference of two number
int sum_differencce_twonumber(void)
{
    int a,b;
    float c,d;
    scanf("%d%d",&a,&b);
    scanf("%f%f",&c,&d);
    printf("%d %d\n",(a+b),(a-b));
    printf("%.1f %.1f\n",(c+d),(c-d));
    return 0;
}
/*-------------------------------------------------------------------*/
//function in c
/*
Add `int max_of_four(int a, int b, int c, int d)` here.
*/
int max_of_four(int a, int b, int c, int d)
{
    if(a>b)
        if(a>c)
                if(a>d)
                return a;
     if(b>a)
        if(b>c)
            if(b>c)
                if(b>d)
                return b;
    if(c>a)
        if(c>b)
            if(c>d)
            return c;
    
    if(d>a)
        if(d>b)
            if(d>c)
            return d;
return 0;
}


int function_clanguage(void) {
    int a, b, c, d;
    scanf("%d %d %d %d", &a, &b, &c, &d);
    int ans = max_of_four(a, b, c, d);
    printf("%d", ans);
    
    return 0;
}
/*-------------------------------------------------------------------*/
//pointer in C
void update(int *a,int *b) {
    // Complete this function
    int temp = *a;
    *a = *a + *b;
    *b =  abs(temp - *b);
}

int pointer_clanguage(void) {
    int a, b;
    int *pa = &a, *pb = &b;
    
    scanf("%d %d", &a, &b);
    update(pa, pb);
    printf("%d\n%d", a, b);

    return 0;
}
/*-------------------------------------------------------------------*/
//condition statement in c language
void update_condition(int *a,int *b) {
    // Complete this function
    int temp = *a;
    *a = *a + *b;
    *b =  abs(temp - *b);
}

int condition_statement(void) {
    int a, b;
    int *pa = &a, *pb = &b;
    
    scanf("%d %d", &a, &b);
    update_condition(pa, pb);
    printf("%d\n%d", a, b);

    return 0;
}
/*-------------------------------------------------------------------*/
// For loop
int for_loop(void)
{
    int a, b;
    char *arr[] ={"one","two","three","four","five","six","seven","eight","nine"};
    scanf("%d\n%d", &a, &b);
      // Complete the code.
    for(int i=a;i<=b;i++)
    {
 if(1<=i && i<=9)
 {
    printf("%s\n",arr[i-1]);
 }
 else {
 
    (i%2)?printf("odd\n"):printf("even\n");
 
 }
    }

    return 0;
}

/*-------------------------------------------------------------------*/
//sum of digits of five digit number integer
int digit_fivedigit_number(void) {
    
    int n;
    scanf("%d", &n);
    //Complete the code to calculate the sum of the five digits on n.
    int count=0;
    while(n)
    {
        count = (n%10) + count;
        n=n/10;
    }
    printf("%d",count);
    return 0;
}
/*-------------------------------------------------------------------*/
//Bit wise operatore

//Complete the following function.
void calculate_the_maximum(int n, int k) {
  //Write your code here.
  int m1=0,m2=0,m3=0,i,j;
  for(i=1;i<=n;i++)
  {
    for(j=i+1;j<=n;j++)
    {
        int and=i&j;
        if(and<k && and > m1 )
        m1=and;
        int or = i|j;
           if(or<k && or > m2 )
        m2=or;
         int xor = i^j;
           if(xor<k && xor > m3 )
        m3=xor;
        
    }

  }
      printf("%d\n",m1);
    printf("%d\n",m2);
    printf("%d\n",m3);
}

int bitwise_operatore(void) {
    int n, k;
  
    scanf("%d %d", &n, &k);
    calculate_the_maximum(n, k);
 
    return 0;
}
/*-------------------------------------------------------------------*/
//printing patten by using loop
//                  4 4 4 4 4 4 4
//                  4 3 3 3 3 3 4
//                  4 3 2 2 2 3 4
//                  4 3 2 1 2 3 4
//                  4 3 2 2 2 3 4
//                  4 3 3 3 3 3 4
//                  4 4 4 4 4 4 4

int printing_patten(void)
{

    int n;
    scanf("%d", &n);
    int start,end,size;
    size = 2*n - 1;
    start=0;
    end = size-1;
    int arr[size][size];
    while(n !=0)
    {
        for(int i=start;i<=end;i++)
        {
            for(int j=start;j<=end;j++)
            {
                if(i==start || i == end ||j == start || j == end)
                {
                    arr[i][j] = n;
                }
            }
        }
        start++;
        end--;
        n--;
    }
    for(int i=0;i<size;i++)
    {
        for(int j=0;j<size;j++)
        {
            printf("%d ",arr[i][j]);
        }
        printf("\n");
    }
    
    
      // Complete the code to print the pattern.
    return 0;
}
/*-------------------------------------------------------------------*/
//one dimension array
int one_dimension_array(void) {

    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    int n;
    int *arr;
    scanf("%d",&n);
    arr = (int *)malloc(sizeof(int)*n);
     for(int i=0;i<n;i++)
    {
         scanf("%d",&arr[i]);
    }
int temp =0;
    for(int i=0;i<n;i++)
    {
        temp = arr[i] + temp;
    }
    printf("%d",temp);
    free(arr);
    return 0;
}
/*-------------------------------------------------------------------*/
//array reverasal
int array_reversal(void)
{
    int num, *arr, i;
    scanf("%d", &num);
    arr = (int*) malloc(num * sizeof(int));
    for(i = 0; i < num; i++) {
        scanf("%d", arr + i);
    }
int j=num-1;
for( i=0; i<num/2;i++)
{
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
    j--;
}

    /* Write the logic to reverse the array. */

    for(i = 0; i < num; i++)
        printf("%d ", *(arr + i));
    return 0;
}
/*-------------------------------------------------------------------*/
//printing tokens
int printing_token(void) {

    char *s;
    s = malloc(1024 * sizeof(char));
    scanf("%[^\n]", s);
    s = realloc(s, strlen(s) + 1);
    //Write your logic to print the tokens of the sentence here.
    for(int i=0;s[i]!='\0';i++)
    {
        if(s[i] == ' ')
        {
            printf("\n");
        }
        else {
        printf("%c",s[i]);
        }
    }
    return 0;
}
/*-------------------------------------------------------------------*/
//digit frequency
//Sample Input
//a11472o5t6
//Sample Output
//0 2 1 0 1 1 1 1 0 0

int digit_frequency(void) {
  int n;

   char arr[1000];

    scanf("%s", arr);

    for(char i = '0'; i <= '9'; i++)
    {
        int count = 0;

        for(int j = 0; arr[j]!= '\0'; j++)
        {
            if(arr[j] == i)
            {
                count++;
            }
        }

        printf("%d ", count);
    }


    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    return 0;
}
/*-------------------------------------------------------------------*/

/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
