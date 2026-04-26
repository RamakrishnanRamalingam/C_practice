//
//  Interview.m
//  C_practice
//
//  Created by Rama Thean on 2026-04-26.
//
#include "Interview.h"
#include <stdio.h>
void reversetheint(void);
void prime_number(void);
void Fibonacci_series(void);
/*-------------------------------------------------------------------*/
//Write a program to reverse an integer in C.
void reversetheint(void)
{
    int data,reverse,reminder;
    reverse=0;
    reminder=0;
    printf("ender reversr data=");
    scanf("%d",&data);
    while(data!=0)
    {
        reminder=data%10;
        reverse=reverse*10+reminder;
        data=data/10;
    }
    printf("reverse data= %d",reverse);
    
}
/*-------------------------------------------------------------------*/
//Write a program in C to check given number is prime or not.
/* Prime numbers: 2, 3, 5, 7, 11, 13, 17, 19 …
 Not prime (composite numbers):
 4 → divisible by 1, 2, 4
 6 → divisible by 1, 2, 3, 6
 9 → divisible by 1, 3, 9*/

void prime_number(void)
{
    int data,flag;
    printf("enter the number=");
    scanf("%d",&data);
    flag=0;
    if(data==1 ||data==0)
    {
        flag=0;
    }
    for(int i=2; i<=data/2; i++)
    {
        if(data%i == 0)
        {
            flag=1;
            break;
        }
    }
    if(flag==0)
    {
        printf("the value is prime number =%d",data);
    }
    else
    {
        printf("the value is not prime number =%d",data);
    }
}

/*-------------------------------------------------------------------*/
//Write a program in C to print the Fibonacci series using iteration.
void Fibonacci_series(void)
{
    int first,second,next,n;
    first=0;
    second=1;
    next=first+second;
    printf("enter number of fibonacci =");
    scanf("%d",&n);
    printf("%d, %d ", first,second);
    for(int i=2;i<n;i++)
    {
        next=first+next;
        first=second;
        second=next;
        printf("%d ",next);
    }
    
}
/*-------------------------------------------------------------------*/
//4. Find the largest number among the three numbers.
void largenumber(void)
{
    int a,b,c;
    printf("enter the first value=");
    scanf("%d",&a);
    printf("enter the second value=");
    scanf("%d",&b);
    printf("enter the third value=");
    scanf("%d",&c);
    if(a>b && a>c)
    {
        printf("biger value is=%d",a);
    }
    else if(b >a && b>c)
    {
        printf("biger value is=%d",b);
    }
    else{
        printf("biger value is=%d",c);
    }
}
/*-------------------------------------------------------------------*/
//5. Write a C program to calculate Compound Interest
void compoundinterst(void)
{
    float amount,rate,time,principleampund,interst;
    amount=2300;
    rate=7;
    time=4;
    interst= amount*(powf((1+rate/100),time));
    principleampund = interst - amount;
    printf("principle amount is = %f",principleampund);
}
/*-------------------------------------------------------------------*/
//6.Write a Program to check if the year is a leap year or not.
void leap_year(void)
{
    int year;
    printf("Enter the Year=");
    scanf("%d",&year);
    // If a year is multiple of 400, then leap year
    if (year % 400 == 0)
        printf("%d is a leap year.\n", year);
    
    // If a year is multiple of 100, then not a leap year
    else if (year % 100 == 0)
        printf("%d is not a leap year.\n", year);
    
    // If a year is multiple of 4, then leap year
    else if (year % 4 == 0)
        printf("%d is a leap year.\n", year);
    
    // Not leap year
    else
        printf("%d is not a leap year.\n", year);
}
/*-------------------------------------------------------------------*/
//8. Write a program to Factorial of a Number.
//5!=5×4×3×2×1=120
void factorial_iteration(void)
{
    int n,factorial=1;
    printf("enter Factorial value=");
    scanf("%d",&n);
    if(n<=0)
    {
        printf("Factorial value is invalede");
        factorial=0;
    }
    else{
        for(int i=1;i<=n;i++)
        {
            factorial=i*factorial;
        }
    }
    printf("Factorial value=%d",factorial);
}
/*-------------------------------------------------------------------*/
//9. Check whether a number is a palindrome.
/* Numbers: 121, 1331, 12321
 Words: "madam", "level", "radar"
 Not palindrome: 123 (reverse is 321), "hello" */
void check_palindrome(void)
{
    int n,forwared,reverse;
    printf("Enter the palindrome value =");
    scanf("%d",&n);
    forwared=n;
    reverse=0;
    while(n!=0)
    {
        reverse = reverse*10+(n%10);
        n=n/10;
    }
    if(forwared==reverse)
    {
        printf(" this value is palindrome");
    }
    else{
        printf("Not Palindrome");
    }
}
/*-------------------------------------------------------------------*/
//10. Write a C Program to check if two numbers are equal without using the bitwise operator.
void bitoperator_equal(void)
{
    int element_1,element_2;
    printf("Enter the element 1 =");
    scanf("%d",&element_1);
    printf("Enter the Element 2 =");
    scanf("%d",&element_2);
    if(element_1^element_2)
    {
        printf("Both value are different");
    }
    else
    {
        printf("Both are same value");
    }
    
}
/*-------------------------------------------------------------------*/
//11. Write a C program to find the LCM of two numbers.
/* LCM (Least Common Multiple) of two numbers is the smallest
 positive number that is divisible by both numbers.
 Examples:
 LCM of 4 and 5 = 20
 LCM of 6 and 8 = 24 */
void lcm_twonumber(void)
{
    int number1,number2;
    //    int temp;
    int numbers[2];
    printf("Enter two value = ");
    scanf("%d",&number1);
    printf("Enter two value = ");
    scanf("%d",&number2);
    //GCD identification
    
    numbers[0]=number1;
    numbers[1]=number2;
    while(numbers[1] != 0)
    {
        int temp=numbers[1];
        numbers[1]=numbers[0] % numbers[1];
        numbers[0]=temp;
    }
    printf("LCM =%d",((number1*number2)/numbers[0]));
    
}
/*-------------------------------------------------------------------*/
//12. Write a C Program to find the Maximum and minimum of two numbers without using any loop or condition.
void min_max(void)
{
    int x,y;
    printf("Enter Two value =");
    scanf("%d %d", &x, &y);
    int max= (x+y+abs(x-y))/2;
    int min = (x+y-abs(x-y))/2;
    printf("max=%d, min=%d",max,min);
    //another method
    max = (x > y) ? x : y;
    min = (x < y) ? x : y;
    printf("max=%d, min=%d",max,min);
}
/*-------------------------------------------------------------------*/
//13. Write a Program in C to Print all natural numbers up to N without using a semi-colon.
void no_semicolon(void)
{
    int n=10;
    int x;
    printf("Enter the value=");
    scanf("%d",&x);
    for(int i=0;i<n;i++)
    {
        if(printf("%d",x++))
        {
            ;
        }
    }
}

/*-------------------------------------------------------------------*/
//14. Write a Program to create a pyramid pattern using C.
void pyrmid_pattern(void)
{
    int N=10;
    for(int i=1;i<=N;i++)
    {
        for(int space =1;space<=N-i;space++)
        {
            printf(" ");
        }
        for(int j=1;j<2*i;j++)
        {
            printf("*");
        }
        printf("\n");
    }
}
/*-------------------------------------------------------------------*/
//Write a program to reverse an Array.
void reverse_array(void)
{
    int arr[5]={1,2,3,4,5};
    for(int i=0, j=4;i<5/2;i++,j--)
    {
        int temp;
        temp=arr[i];
        arr[i]=arr[j];
        arr[j]=temp;
    }
    for(int i=0;i<5;i++)
        printf("%d ",arr[i]);
    
}
/*-------------------------------------------------------------------*/
//17. Write a program to check the repeating elements in C.
void findRepeating(void)
{
    int arr[]={1,2,3,4,2,3};
    for(int i=0;i<6;i++)
    {
        for(int j=i+1;j<6;j++)
        {
            if(arr[i]==arr[j])
            {
                printf("Element identified =%d\n",arr[i]);
            }
        }
    }
}
/*-------------------------------------------------------------------*/
//18. Write a Program to print the Maximum and Minimum elements in an array.
void min_max_value(void)
{
    int arr[]={0,2,3,4,5,5,10};
    int min,max;
    min=arr[0];
    max=arr[0];
    for(int i=0;i<7;i++)
    {
      if(max<arr[i])
      {
          max=arr[i];
      }
        if(min>arr[i])
        {
            min=arr[i];
        }
    }
    printf("minimum value is= %d\n max value is = %d",min,max);
}
/*-------------------------------------------------------------------*/
//21. Write a program to count the sum of numbers in a string.
void sumof_numbers(void)
{
    char number[]="123459";
    int sum;
    sum=0;
    for(int i=0;number[i]!='\0';i++)
    {
        if((number[i]-48)<=9)
        sum=sum+(number[i]-48);
    }
    printf("sum = %d",sum);
    printf("\nsize = %d",(sizeof(number)/sizeof(number[0]))-1);
}
/*-------------------------------------------------------------------*/
//19. Write a Program to sort First half in Ascending order and the Second in Descending order.
void ascending_descending(void)
{
    int arr[]={1,2,6,7,3,10,11,12};
    int temp;
    int size = (sizeof(arr)/sizeof(arr[0]));
    for(int i=0;i<size-1;i++)
    {
        for(int j=i+1;j<size;j++)
        {
            if(arr[i]>arr[j])
               {
                temp=arr[i];
                arr[i]=arr[j];
                arr[j]=temp;
            }
        }
    }
    for(int i=0;i<size/2;i++)
    {
        printf(" %d",arr[i]);
    }
    for(int i=size-1;i>=size/2;i--)
    {
        printf(" %d",arr[i]);
    }
}
/*-------------------------------------------------------------------*/
//function pointer with state machne and array
typedef enum {Ideal,Running,Errorhandle}state;
state currentstate=Ideal;

void idealstate(void){printf("Ideal state\n");currentstate=Running;}
void running(void){printf("Running state\n");currentstate=Errorhandle;}
void errorhandle(void){printf("Error state\n");currentstate=Ideal;}

typedef void (*functionptr)(void);
functionptr funpte[]={idealstate,running,errorhandle};
void function_pointer(void)
{
    while(1){
        funpte[currentstate]();
    }
}
/*-------------------------------------------------------------------*/
/*Assembly program in C */
void assembly_code(void)
{
//int a = 10, b = 20, c=0;

//asm {
//   mov ax,a
//   mov bx,b
//   add ax,bx
//   mov c,ax
//}

//printf("c= %d",c);
}
/*-------------------------------------------------------------------*/
//convert Decimal to Binary
void decimal_binary(void)
{
    int a[10],n,i;
    system ("cls");
    printf("Enter the number to convert: ");
    scanf("%d",&n);
    for(i=0;n>0;i++)
    {
        a[i]=n%2;
        n=n/2;
    }
    printf("\nBinary of Given Number is=");
    for(i=i-1;i>=0;i--)
    {
        printf("%d",a[i]);
    }
}
/*-------------------------------------------------------------------*/
//Convert Number in Characters
void decimal_char(void)
{
long int n,sum=0,r;
system("cls");
printf("enter the number=");
scanf("%ld",&n);
while(n>0)
{
r=n%10;
sum=sum*10+r;
n=n/10;
}
n=sum;
while(n>0)
{
r=n%10;
switch(r)
{
case 1:
printf("one ");
break;
case 2:
printf("two ");
break;
case 3:
printf("three ");
break;
case 4:
printf("four ");
break;
case 5:
printf("five ");
break;
case 6:
printf("six ");
break;
case 7:
printf("seven ");
break;
case 8:
printf("eight ");
break;
case 9:
printf("nine ");
break;
case 0:
printf("zero ");
break;
default:
printf("tttt");
break;
}
n=n/10;
}
}
/*-------------------------------------------------------------------*/
//binary to decimal conversion
//bin = 101 = 1*2^2+0*2^1+1*2^0
void bin_dec(void)
{
    // declaration of variables
    int num, binary_num, decimal_num = 0, base = 1, rem;
    printf (" Enter a binary number with the combination of 0s and 1s \n");
    scanf (" %d", &num); // accept the binary number (0s and 1s)
  
    binary_num = num; // assign the binary number to the binary_num variable
      
      
    while ( num > 0)
    {
        rem = num % 10; /* divide the binary number by 10 and store the remainder in rem variable. */
        decimal_num = decimal_num + rem * base;
        num = num / 10; // divide the number with quotient
        base = base * 2;
    }
  
    printf ( " The binary number is %d \t", binary_num); // print the binary number
    printf (" \n The decimal number is %d \t", decimal_num); // print the decimal
}
/*-------------------------------------------------------------------*/
//C program to print perfect numbers from 1 to 100
void perfect_number(void)
{
    int sum;
    printf("Perfect number");
    for(int i=1;i<=100;i++)
    {
        sum=0;
        int k=1,n=i;
        while(k<n)
        {
            if(n%k==0)
            {
                sum=sum+k;
                
            }
            k++;
        }
        if(sum==i)
        {
            printf("Perfect number is %d \n ",sum);
        }
    
    }
}
/*-------------------------------------------------------------------*/


void interview_function(void)
{
//    void (*reversetheptr)(void);
//    reversetheptr = reversetheint;
//    reversetheptr();
//    reversetheint();
//    
//     prime_number();
//        Fibonacci_series();
//        largenumber();
//       compoundinterst();
//        leap_year();
//        factorial_iteration();
//        check_palindrome();
//        bitoperator_equal();
//        lcm_twonumber();
//        min_max();
//        no_semicolon();
//        pyrmid_pattern();
//    reverse_array();
//    findRepeating();
//    min_max_value();
//    sumof_numbers();
//    ascending_descending();
//    function_pointer();
//    assembly_code();
//    decimal_binary();
//    decimal_char();
//    bin_dec();
//    perfect_number();
}

