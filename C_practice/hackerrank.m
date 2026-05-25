//
//  hackerrank.m
//  C_practice
//
//  Created by Rama Thean on 2026-05-14.
//
#include "hackerrank.h"
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <stdarg.h>
#include <time.h>


//https://programmingoneonone.com/hackerrank-c-solutions

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
char* readline();



int condition_statement(void)
{
    char* n_endptr;
    char* n_str = readline();
    int n = strtol(n_str, &n_endptr, 10);

    if (n_endptr == n_str || *n_endptr != '\0') { exit(EXIT_FAILURE); }

    // Write Your Code Here
    if(1 <= n && n <= 9)
    {
        switch(n)
        {
            case 1:
            printf("one");
            break;
            case 2:
            printf("two");
            break;
             case 3:
            printf("three");
            break;
            case 4:
            printf("four");
            break;
             case 5:
            printf("five");
            break;
            case 6:
            printf("six");
            break;
             case 7:
            printf("seven");
            break;
            case 8:
            printf("eight");
            break;
             case 9:
            printf("nine");
            break;
            
        }
    }
    else if(n > 9)
    {
        printf("Greater than 9");
    }

    return 0;
}

char* readline() {
    size_t alloc_length = 1024;
    size_t data_length = 0;
    char* data = malloc(alloc_length);

    while (1) {
        char* cursor = data + data_length;
        char* line = fgets(cursor, alloc_length - data_length, stdin);

        if (!line) { break; }

        data_length += strlen(cursor);

        if (data_length < alloc_length - 1 || data[data_length - 1] == '\n') { break; }

        size_t new_length = alloc_length << 1;
        data = realloc(data, new_length);

        if (!data) { break; }

        alloc_length = new_length;
    }

    if (data[data_length - 1] == '\n') {
        data[data_length - 1] = '\0';
    }

    data = realloc(data, data_length);

    return data;
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
//calculate Nth term using  Recursive function
int find_nth_term(int n, int a, int b, int c) {
  //Write your code here.
    if (n == 1)
        return a;
    if (n == 2)
        return b;
    if (n == 3)
        return c;
        
    return find_nth_term(n-1,a, b, c)
         + find_nth_term(n-2,a, b, c)
         + find_nth_term(n-3,a, b, c);
}

int calculate_Nth_term(void) {
    int n, a, b, c;
  
    scanf("%d %d %d %d", &n, &a, &b, &c);
    int ans = find_nth_term(n, a, b, c);
 
    printf("%d", ans);
    return 0;
}
/*-------------------------------------------------------------------*/
//student mark sum for boy and girl 0,2,4 ..boy 1,3,5 .. girl

int marks_summation(int* marks, int number_of_students, char gender) {
  //Write your code here.
  int boy=0,girl=0;
  

    for(int i=0;i<number_of_students;i++)
    {
        if(i%2)
        girl=girl+marks[i];
        else
         boy=boy+marks[i];
    }
    return (gender == 'b')?boy:girl;
  }


int student_marksum(void) {
    int number_of_students;
    char gender;
    int sum;
  
    scanf("%d", &number_of_students);
    int *marks = (int *) malloc(number_of_students * sizeof (int));
 
    for (int student = 0; student < number_of_students; student++) {
        scanf("%d", (marks + student));
    }
    
    scanf(" %c", &gender);
    sum = marks_summation(marks, number_of_students, gender);
    printf("%d", sum);
    free(marks);
 
    return 0;
}
/*-------------------------------------------------------------------*/
//Sorting Array of Strings
int lexicographic_sort(const char* a, const char* b){
    return strcmp(a, b) > 0;
}

int lexicographic_sort_reverse(const char* a, const char* b){
    return strcmp(a, b) <= 0;
}

int sort_by_number_of_distinct_characters(const char* a, const char* b){
    int c1 = 0, c2 = 0;
    int hsh1[26] = {0}, hsh2[26] = {0};
    int n1 = strlen(a);
    int n2 = strlen(b);

    for(int i = 0; i < n1; i++){
        hsh1[a[i] - 'a'] = 1;
    }

    for(int i = 0; i < n2; i++){
        hsh2[b[i] - 'a'] = 1;
    }

    for(int i = 0; i < 26; i++){
        if(hsh1[i])
            c1++;
        if(hsh2[i])
            c2++;
    }
    if( c1 != c2)
        return c1 > c2;
    else
        return strcmp(a, b)  > 0;

}

int sort_by_length(const char* a, const char* b){
    if(strlen(a) != strlen(b))
        return strlen(a) > strlen(b);
    else
        return strcmp(a, b) >  0;
}

void string_sort(char** arr,const int len,int (*cmp_func)(const char* a, const char* b)){
    for(int i = 1; i < len; i++){
        int j = i;
        char* p = arr[i];
        
        while(j > 0){
            if((*cmp_func)(arr[j-1],p) > 0 )
                arr[j] = arr[j-1];
            else
                break;
            j--;
        }
        arr[j] = p;
        
    }
}


int sorting_array_string(void)
{
    int n;
    scanf("%d", &n);
  
    char** arr;
    arr = (char**)malloc(n * sizeof(char*));
  
    for(int i = 0; i < n; i++){
        *(arr + i) = malloc(1024 * sizeof(char));
        scanf("%s", *(arr + i));
        *(arr + i) = realloc(*(arr + i), strlen(*(arr + i)) + 1);
    }
  
    string_sort(arr, n, lexicographic_sort);
    for(int i = 0; i < n; i++)
        printf("%s\n", arr[i]);
    printf("\n");

    string_sort(arr, n, lexicographic_sort_reverse);
    for(int i = 0; i < n; i++)
        printf("%s\n", arr[i]);
    printf("\n");

    string_sort(arr, n, sort_by_length);
    for(int i = 0; i < n; i++)
        printf("%s\n", arr[i]);
    printf("\n");

    string_sort(arr, n, sort_by_number_of_distinct_characters);
    for(int i = 0; i < n; i++)
        printf("%s\n", arr[i]);
    printf("\n");
    return 0;
}
/*-------------------------------------------------------------------*/
//Permutations of Strings
void swap(char **a, char **b)
{
    char *temp = *a;
    *a = *b;
    *b = temp;
}

void reverse(char **s, int start, int end)
{
    while (start < end)
    {
        swap(&s[start], &s[end]);
        start++;
        end--;
    }
}

int next_permutation(int n, char **s)
{
    int i = n - 2;

    // Find first decreasing element
    while (i >= 0 && strcmp(s[i], s[i + 1]) >= 0)
    {
        i--;
    }

    // No next permutation
    if (i < 0)
    {
        return 0;
    }

    int j = n - 1;

    // Find element just greater than s[i]
    while (strcmp(s[j], s[i]) <= 0)
    {
        j--;
    }

    // Swap
    swap(&s[i], &s[j]);

    // Reverse remaining part
    reverse(s, i + 1, n - 1);

    return 1;
}

int Permutations_string(void)
{
    char **s;
    int n;
    scanf("%d", &n);
    s = calloc(n, sizeof(char*));
    for (int i = 0; i < n; i++)
    {
        s[i] = calloc(11, sizeof(char));
        scanf("%s", s[i]);
    }
    do
    {
        for (int i = 0; i < n; i++)
            printf("%s%c", s[i], i == n - 1 ? '\n' : ' ');
    } while (next_permutation(n, s));
    for (int i = 0; i < n; i++)
        free(s[i]);
    free(s);
    return 0;
}
/*-------------------------------------------------------------------*/
//Variadic functions in C
////////////
#define MIN_ELEMENT 1
#define MAX_ELEMENT 1000000
#define MIN_ELEMENT 1
#define MAX_ELEMENT 1000000

int sum(int count, ...)
{
    va_list args;
    va_start(args, count);

    int total = 0;

    for (int i = 0; i < count; i++)
    {
        total += va_arg(args, int);
    }

    va_end(args);

    return total;
}

int min(int count, ...)
{
    va_list args;
    va_start(args, count);

    int minimum = va_arg(args, int);

    for (int i = 1; i < count; i++)
    {
        int value = va_arg(args, int);

        if (value < minimum)
        {
            minimum = value;
        }
    }

    va_end(args);

    return minimum;
}

int max(int count, ...)
{
    va_list args;
    va_start(args, count);

    int maximum = va_arg(args, int);

    for (int i = 1; i < count; i++)
    {
        int value = va_arg(args, int);

        if (value > maximum)
        {
            maximum = value;
        }
    }

    va_end(args);

    return maximum;
}
//////////////////
int test_implementations_by_sending_three_elements() {
    srand(time(NULL));
    
    int elements[3];
    
    elements[0] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[1] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[2] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    
    fprintf(stderr, "Sending following three elements:\n");
    for (int i = 0; i < 3; i++) {
        fprintf(stderr, "%d\n", elements[i]);
    }
    
    int elements_sum = sum(3, elements[0], elements[1], elements[2]);
    int minimum_element = min(3, elements[0], elements[1], elements[2]);
    int maximum_element = max(3, elements[0], elements[1], elements[2]);

    fprintf(stderr, "Your output is:\n");
    fprintf(stderr, "Elements sum is %d\n", elements_sum);
    fprintf(stderr, "Minimum element is %d\n", minimum_element);
    fprintf(stderr, "Maximum element is %d\n\n", maximum_element);
    
    int expected_elements_sum = 0;
    for (int i = 0; i < 3; i++) {
        if (elements[i] < minimum_element) {
            return 0;
        }
        
        if (elements[i] > maximum_element) {
            return 0;
        }
        
        expected_elements_sum += elements[i];
    }
    
    return elements_sum == expected_elements_sum;
}

int test_implementations_by_sending_five_elements() {
    srand(time(NULL));
    
    int elements[5];
    
    elements[0] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[1] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[2] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[3] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[4] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    
    fprintf(stderr, "Sending following five elements:\n");
    for (int i = 0; i < 5; i++) {
        fprintf(stderr, "%d\n", elements[i]);
    }
    
    int elements_sum = sum(5, elements[0], elements[1], elements[2], elements[3], elements[4]);
    int minimum_element = min(5, elements[0], elements[1], elements[2], elements[3], elements[4]);
    int maximum_element = max(5, elements[0], elements[1], elements[2], elements[3], elements[4]);
    
    fprintf(stderr, "Your output is:\n");
    fprintf(stderr, "Elements sum is %d\n", elements_sum);
    fprintf(stderr, "Minimum element is %d\n", minimum_element);
    fprintf(stderr, "Maximum element is %d\n\n", maximum_element);
    
    int expected_elements_sum = 0;
    for (int i = 0; i < 5; i++) {
        if (elements[i] < minimum_element) {
            return 0;
        }
        
        if (elements[i] > maximum_element) {
            return 0;
        }
        
        expected_elements_sum += elements[i];
    }
    
    return elements_sum == expected_elements_sum;
}

int test_implementations_by_sending_ten_elements() {
    srand(time(NULL));
    
    int elements[10];
    
    elements[0] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[1] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[2] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[3] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[4] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[5] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[6] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[7] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[8] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    elements[9] = rand() % (MAX_ELEMENT - MIN_ELEMENT + 1) + MIN_ELEMENT;
    
    fprintf(stderr, "Sending following ten elements:\n");
    for (int i = 0; i < 10; i++) {
        fprintf(stderr, "%d\n", elements[i]);
    }
    
    int elements_sum = sum(10, elements[0], elements[1], elements[2], elements[3], elements[4],
                           elements[5], elements[6], elements[7], elements[8], elements[9]);
    int minimum_element = min(10, elements[0], elements[1], elements[2], elements[3], elements[4],
                           elements[5], elements[6], elements[7], elements[8], elements[9]);
    int maximum_element = max(10, elements[0], elements[1], elements[2], elements[3], elements[4],
                           elements[5], elements[6], elements[7], elements[8], elements[9]);
    
    fprintf(stderr, "Your output is:\n");
    fprintf(stderr, "Elements sum is %d\n", elements_sum);
    fprintf(stderr, "Minimum element is %d\n", minimum_element);
    fprintf(stderr, "Maximum element is %d\n\n", maximum_element);
    
    int expected_elements_sum = 0;
    for (int i = 0; i < 10; i++) {
        if (elements[i] < minimum_element) {
            return 0;
        }
        
        if (elements[i] > maximum_element) {
            return 0;
        }
        
        expected_elements_sum += elements[i];
    }
    
    return elements_sum == expected_elements_sum;
}

int Variadic_function (void)
{
    int number_of_test_cases;
    scanf("%d", &number_of_test_cases);
    
    while (number_of_test_cases--) {
        if (test_implementations_by_sending_three_elements()) {
            printf("Correct Answer\n");
        } else {
            printf("Wrong Answer\n");
        }
        
        if (test_implementations_by_sending_five_elements()) {
            printf("Correct Answer\n");
        } else {
            printf("Wrong Answer\n");
        }
        
        if (test_implementations_by_sending_ten_elements()) {
            printf("Correct Answer\n");
        } else {
            printf("Wrong Answer\n");
        }
    }
    
    return 0;
}
/*-------------------------------------------------------------------*/
//Querying the Document solution in c
#include<assert.h>
#define MAX_CHARACTERS 1005
#define MAX_PARAGRAPHS 5
char* kth_word_in_mth_sentence_of_nth_paragraph(char**** document, int k, int m, int n) {
    return document[n-1][m-1][k-1];
}

char** kth_sentence_in_mth_paragraph(char**** document, int k, int m) {
    return document[m-1][k-1];
}

char*** kth_paragraph(char**** document, int k) {
    return document[k-1];
}

char* get_word(char* text, int beg, int end) {
    char* answer;
    answer = calloc(end - beg + 2, sizeof(char));
    int index = 0;
    int i;
    for (i = beg; i <= end; i++)
        answer[index++] = text[i];
    answer[index] = 0;
    return answer;
}

char** get_sentence(char* text, int beg, int end) {
    char** answer;
    int word_count = 1;
    int i;
    for (i = beg; i <= end; i++)
        if (text[i] == ' ')
            ++word_count;
    answer = calloc(word_count, sizeof(char*));
    int start = beg;
    int index = 0;
    for (i = beg; i <= end; i++)
        if (text[i] == ' ')
        {
            answer[index++] = get_word(text, start, i - 1);
            start = i + 1;
        }
    answer[index] = get_word(text, start, i - 1);
    return answer;
}

char*** get_paragraph(char* text, int beg, int end) {
    char*** answer;
    int sentence_count = 0;
    int i;
    for (i = beg; i <= end; i++)
        if (text[i] == '.')
            ++sentence_count;
    answer = calloc(sentence_count, sizeof(char**));
    int start = beg;
    int index = 0;
    for (i = beg; i <= end; i++)
        if (text[i] == '.')
        {
            answer[index++] = get_sentence(text, start, i - 1);
            start = i + 1;
        }
    return answer;
}

char**** get_document(char* text) {
    char**** answer;
    int paragraph_count = 1;
    int i;
    for (i = 0; text[i]; i++)
        if (text[i] == '\n')
            ++paragraph_count;
    answer = calloc(paragraph_count, sizeof(char***));
    int start = 0;
    int index = 0;
    for (i = 0; text[i]; i++)
        if (text[i] == '\n')
        {
            answer[index++] = get_paragraph(text, start, i - 1);
            start = i + 1;
        }
    answer[index] = get_paragraph(text, start, i - 1);
    return answer;
}

char* get_input_text() {
    int paragraph_count;
    scanf("%d", &paragraph_count);

    char p[MAX_PARAGRAPHS][MAX_CHARACTERS], doc[MAX_CHARACTERS];
    memset(doc, 0, sizeof(doc));
    getchar();
    for (int i = 0; i < paragraph_count; i++) {
        scanf("%[^\n]%*c", p[i]);
        strcat(doc, p[i]);
        if (i != paragraph_count - 1)
            strcat(doc, "\n");
    }

    char* returnDoc = (char*)malloc((strlen (doc)+1) * (sizeof(char)));
    strcpy(returnDoc, doc);
    return returnDoc;
}

void print_word(char* word) {
    printf("%s", word);
}

void print_sentence(char** sentence) {
    int word_count;
    scanf("%d", &word_count);
    for(int i = 0; i < word_count; i++){
        printf("%s", sentence[i]);
        if( i != word_count - 1)
            printf(" ");
    }
}

void print_paragraph(char*** paragraph) {
    int sentence_count;
    scanf("%d", &sentence_count);
    for (int i = 0; i < sentence_count; i++) {
        print_sentence(*(paragraph + i));
        printf(".");
    }
}

int querying_document(void) {
    char* text = get_input_text();
    char**** document = get_document(text);
    
    int q;
    scanf("%d", &q);
    
    while (q--) {
        int type;
        scanf("%d", &type);
        
        if (type == 3){
            int k, m, n;
            scanf("%d %d %d", &k, &m, &n);
            char* word = kth_word_in_mth_sentence_of_nth_paragraph(document, k, m, n);
            print_word(word);
        }
        
        else if (type == 2){
            int k, m;
            scanf("%d %d", &k, &m);
            char** sentence = kth_sentence_in_mth_paragraph(document, k, m);
            print_sentence(sentence);
        }
        
        else{
            int k;
            scanf("%d", &k);
            char*** paragraph = kth_paragraph(document, k);
            print_paragraph(paragraph);
        }
        printf("\n");
    }
    return 0;
}
/*-------------------------------------------------------------------*/
//Boxes through a Tunnel solution in c
struct Box
{
    int length, width, height;
};

int volume(struct Box box)
{
    return box.length*box.width*box.height;
}

int lower(struct Box box, int maxHeight)
{
    return box.height < maxHeight;
}

int boxes_tunnel(void)
{
   int n;
   scanf("%d", &n);
   struct Box boxes[100];
   for (int i = 0; i < n; i++)
      scanf("%d%d%d", &boxes[i].length, &boxes[i].width, &boxes[i].height);
   for (int i = 0; i < n; i++)
      if (lower(boxes[i], 41))
         printf("%d\n", volume(boxes[i]));
   return 0;
}
/*-------------------------------------------------------------------*/
//Small Triangles, Large Triangles problem
struct Triangle
{
   int a, b, c;
};

int square(struct Triangle t)
{
    int a = t.a, b = t.b, c = t.c;
    return (a + b + c)*(a + b - c)*(a - b + c)*(-a + b + c);
}

void sort_by_square(struct Triangle* a, int n)
{
    for (int i = 0; i < n; i++)
        for (int j = i + 1; j < n; j++)
            if (square(a[i]) > square(a[j]))
            {
                struct Triangle temp = a[i];
                a[i] = a[j];
                a[j] = temp;
            }
}

int small_large_traiangle(void)
{
   int n;
   scanf("%d", &n);
   struct Triangle *a = calloc(n, sizeof(struct Triangle));
   for (int i = 0; i < n; i++)
      scanf("%d%d%d", &a[i].a, &a[i].b, &a[i].c);
   sort_by_square(a, n);
   for (int i = 0; i < n; i++)
      printf("%d %d %d\n", a[i].a, a[i].b, a[i].c);
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
void hackerrank(void)
{
    int local;
//    local = calculate_Nth_term();
//local =  sorting_array_string();
//    local= Permutations_string();
//    local = Variadic_function();
}
