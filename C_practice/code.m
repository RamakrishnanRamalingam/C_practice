#include "code.h"

//
//  code.m
//  C_practice
//
//  Created by Rama Thean on 2026-02-13.
//
void memmory_copy()//memcpy() function in C with Example
{
    char source[20]="Ramakrishnan";
    char designation[20]="love today";
    printf("before memcopy \n");
    printf("source - %s\ndesignation - %s\n",source,designation);
    memcpy(designation,source,strlen(source));//memset works in bytes, not in array elements. works in bytes, not in array elements.
    printf("After memcopy \n");
    printf("source - %s\ndesignation - %s",source,designation);
    int source1[10]={1,2,3,4,5,6,7,8,9,0};
    int designation1[10]={9,8,7};
    printf("before memcopy \n");
    for(int i=0;i<10;i++)
    printf(" %d %d\n",source1[i],designation1[i]);
    memcpy(&designation1[0],&source1[0],sizeof(int)*4);//memcopy will always copy the no of byte not full variable
    for(int i=0;i<10;i++)
    printf(" %d %d\n",source1[i],designation1[i]);
}
/*-------------------------------------------------------------------*/
void my_memcopy(void *t,void *s,int size1) //this function work for int and char data type
{
    char *t1=(char *)t;
    char *s1=(char *)s;
    for(int i=0;i<size1;i++)
    {
        
        t1[i] = s1[i];
      
    }
}

void memory_copyown(void)//Write your own memcpy() function in C
{
    char source[15]="Ramakrishnan";
    char target[15]="love my job";
    printf("before memcopy\n");
    printf("source - %s\ntarget - %s",source,target);
    my_memcopy(target,source,strlen(source));
    printf("After memcopy\n");
    printf("source - %s\ntarget - %s",source,target);
    
}
/*-------------------------------------------------------------------*/
void memset_function(void)//memset() function in C
{
    int arr[10]={1,2,3,4,5};
    printf("before memset function\n");
    for(int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
    {
        printf("%d\n",arr[i]);
    }
    int lenth=sizeof(arr)/sizeof(arr[0]);
    memset(arr,0,sizeof(arr)); //memset works in bytes, not in array elements.
    printf("after memset function\n");
    for(int i=0;i<lenth;i++)
    {
        printf("%d\n",arr[i]);
    }
    memset(arr,-1,sizeof(arr[0])*3); //memset works in bytes, not in array elements.
    printf("after memset 1 function\n");
    for(int i=0;i<lenth;i++)
    {
        printf("%d\n",arr[i]);
    }
    
}
/*-------------------------------------------------------------------*/
void set_function(void *arr,char data,int size)
{
    char *setptr = (char *)arr;
    for(int i=0; i<size; i++)
    {
        setptr[i]=data;
    }
}
void memset_own(void)//Write your own memset() function in C
{
    int arr[10]={0};
    printf("Before memset\n");
    for(int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
    {
        printf("%d\n",arr[i]);
    }
    set_function(&arr,-1,sizeof(arr));
    printf("After memset\n");
    for(int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
    {
        printf("%d\n",arr[i]);
    }
    
}
/*-------------------------------------------------------------------*/
void two_smallno(void)//C program to find two smallest elements in a one dimensional array
{
    int arr[10]={5,2,3,4,5,6,7,8,9,1};
    int first,second;
    first=arr[0];
    second=arr[0];
    for (int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
    {
      if(first>arr[i])
      {
          first=arr[i];
      }
  
    }
    for (int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
    {
      if(second>arr[i] && arr[i] > first )
      {
          second=arr[i];
      }
    }
    
    printf("first small no- %d\nsecond small no - %d\n",first,second);
}
/*-------------------------------------------------------------------*/
//Let the user input for the array be: 4 5 6 7 8 10 11 34 56 1
//Thus the array becomes: 5 6 7 8 10 11 34 56 1 4

void Cyclically_Permute(void)//C Program to Cyclically Permute the Elements of an Array
{
    int arr[] ={4,5,6,7,8,10,11,34,56,1};
    int first=arr[0];
    printf("\nbefore cyclically - ");
    for(int i=0; i<sizeof(arr)/sizeof(arr[0]); i++)
    {
        printf(" %d",arr[i]);
    }
    for(int i=0; i<sizeof(arr)/sizeof(arr[0]); i++)
    {
        if((i+1)==sizeof(arr)/sizeof(arr[0]))
        {
            arr[i]=first;
        }
        else
        arr[i]=arr[i+1];
    }
    printf("\nAfter cyclically - ");
    for(int i=0; i<sizeof(arr)/sizeof(arr[0]); i++)
    {
        printf(" %d",arr[i]);
    }
    
}

/*-------------------------------------------------------------------*/
void sorting(int *arr,int size) // Bubble sort
{
    int temp;
    for(int i=0;i<size;i++)
    {
        for(int j=i;j<size;j++)
        {
            if(arr[i]>arr[j])
            {
                temp =arr[i];
                arr[i]=arr[j];
                arr[j]=temp;
            }
        }
    }
}
int search_fun(int *arr,int search,int size) //Binary Search
{
    int low=0,high=size-1;
    
    
    while(low <= high)
    {
        int mid = (low+high)/2;
        if(arr[mid] == search)
        {
            return mid;
        }
        else if(search < arr[mid]) //search left half
        {
            high = mid-1;
        }
        else //search right half
        {
            low = mid+1;
        }
    }
    return 0;
}

void sort_binary(void)//C Program to Search Sorted Array using Binary Search
{
    int arr[]={1,9,2,8,3,7,4,6,5,0};
    printf("before sort - ");
    for(int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
    {
        printf(" %d",arr[i]);
    }
  sorting(arr,sizeof(arr)/sizeof(arr[0]));
    printf("\nafter sort - ");
    for(int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
    {
        printf(" %d",arr[i]);
    }
    int search =0;
     int position = search_fun(arr,search,sizeof(arr)/sizeof(arr[0]));
    printf("\n element position is %d",position);
}
/*-------------------------------------------------------------------*/
int findLargest(int arr[], int size)
{
    // Base case
    if (size == 1)
        return arr[0];

    // Recursive call
    int max = findLargest(arr, size - 1);

    // Compare last element with max
    if (arr[size - 1] > max)
        return arr[size - 1];
    else
        return max;
    
}

void big_number_recurson(void)//C Program to find the Biggest Number in an Array of Numbers using Recursion
{
    int arr[] = {3, 5, 2};
    int size = sizeof(arr) / sizeof(arr[0]);

       int largest = findLargest(arr, size);

       printf("Largest element = %d\n", largest);
}
/*-------------------------------------------------------------------*/
//n(decimal)    n (binary)    n & 1    count
//12             1100           0           1
// 6             0110           0           2
// 3             0011           1 → stop    2
void Trailing_Zeroes(void)//C program to Count the Number of Trailing Zeroes in an Integer
{
    int data = 100001;
    int count = 0;
    while(data != 0)
    {
        if((data&1) == 1)
        {
            break;
        }
        data=data>>1;
        count++;
    }
    printf("Trailing zeros are - %d",count);
}
/*-------------------------------------------------------------------*/
//12 d             1100 b          3rd bit is highest setbit
void highest_setbit(void)//C program to find the Highest Bit Set for any given Integer
{
    int data=12;
    int count = 0;
    int position = 0;
    while(data!=0)
    {
        if((data&1)==1)
        {
            position = count;
        }
        data=data>>1;
        count++;
    }
    printf("Highest set bit is - %d",position);
}

/*-------------------------------------------------------------------*/
//d 7  b 111 - all bits are one
//d 2  b 010 - not all one
void check_bits_one(void)//C program to check if all the bits of a given integer is one (1)
{
    int data=9;
    int flag=0;
    if(data == 0)
    {
        printf("not all bit are one");
        flag=1;
    }
    else
    {
        while(data !=0)
        {
            if((data&1)==0)
            {
                printf("not all bit are one");
                flag=1;
                break;
            }
            data=data>>1;
        }
        if(flag==0)
        printf(" All bit are one");
    }
    
}

/*-------------------------------------------------------------------*/
void no_bits_one(void)//C program to count number of bits set to 1 in an Integer
{
    int data=234;
    int count =0;
    while (data != 0)
    {
        if((data&1)==1)
        {
            count++;
        }
        data=data>>1;
    }
    printf("No of setbits - %d",count);
}
/*-------------------------------------------------------------------*/
void binary_palindrome(void)//C program to check whether a given number is palindrome or not using Bitwise Operator
{
    int data=24;
    int arr[8];
    int flag=0;
    for(int i=0;i<8;i++)
    {
        arr[i]=(data&1);
        data=data>>1;
    }
    for(int i=0,j=7;i<4;i++)
    {
      if(arr[i] != arr[j])
      {
          printf("not same");
          flag=1;
          break;
      }
        j--;
    }
    if(flag==0)
    {
        printf("All same bin");
    }
    
}
/*-------------------------------------------------------------------*/
void oddeven_bitmasking(void)//C program to find odd or even number using bitmasking
{
    int data=100;
    if(data % 2==0)
    {
        printf("Even number");
    }
    else{
        printf("Odd number");
    }
}
/*-------------------------------------------------------------------*/
//Copies a bit from the second number into the first number at a given bit position.
void fist_second(void)//C program to replace bit in an integer at a specified position from another integer
{
    int first = 10;
    int second =1;
    int position =3;
    int temp=0;
    printf("first - %d\nsecond - %d",first,second);
    if((second>>position)&1)
    {
        temp=1<<position;
        first =first | temp;
    }
    else
    {
        temp=1<<position;
        temp=~temp;
        first = first & temp;
        
    }
    printf("first - %d\nsecond - %d",first,second);
    
}
/*-------------------------------------------------------------------*/
//XOR is both A and B are same output is zero, if different output is one
void swap_bitwise(void)//C program to swap two Integers using Bitwise Operators
{
    int source,target;
    source =10;
    target = 20;
    printf("befor swap the data\n");
    printf("source - %d\ntaget - %d\n",source,target);
    source = source^target;
    target = source^target;
    source = source^target;
    printf("After swap the data\n");
    printf("source - %d\ntaget - %d\n",source,target);
}
/*-------------------------------------------------------------------*/
void check_bit(void)//C program to Check if nth Bit in a 32-bit Integer is set or not
{
    int data = 20, position=2;
//    int temp;
    if((data>>position)&1 == 1)
    {
        printf("Bit position is One");
    }
    else{
        printf("Bit position is Zero");
    }
    
}
/*-------------------------------------------------------------------*/
//list structure
struct listnode
{
    int data;
    struct listnode *next;
    
};
//tree structure
struct treenode
{
    int data;
    struct treenode *left;
    struct treenode *right;
};
// Create Tree Node
struct treenode* create_treenode(int data)
{
    struct treenode *newnode=(struct treenode*)malloc(sizeof(struct treenode));
    newnode->data=data;
    newnode->left=NULL;
    newnode->right=NULL;
    return newnode;
}
//create list node
struct listnode* create_listnode(int data)
{
    struct listnode *newnode=(struct listnode *)malloc(sizeof(struct listnode));
    newnode->data = data;
    newnode->next = NULL;
    return newnode;
    
}
void convert_list(struct treenode *Node)
{
    if (Node == NULL) return;

    struct treenode *arr[50];
    struct listnode *head = NULL, *tail = NULL;
    int front = 0, rear = 0;

    arr[rear++] = Node;

    while (front < rear)
    {
        struct treenode *temp = arr[front++];

        struct listnode *newnode = create_listnode(temp->data);

        if (head == NULL)
            head = tail = newnode;
        else {
            tail->next = newnode;
            tail = newnode;
        }

        if (temp->left)
            arr[rear++] = temp->left;

        if (temp->right)
            arr[rear++] = temp->right;
    }

    struct listnode *t = head;
    while (t) {
        printf("%d -> ", t->data);
        t = t->next;
    }
    printf("NULL\n");
}

//        1
//        / \
//        2   3
//        / \   \
//        4   5   6

//  1 → 2 → 3 → 4 → 5 → 6

void binary_single(void)//C program to convert a Binary Tree into a Singly Linked List by Traversing Level by Level
{
    // Create tree
    struct treenode *root = create_treenode(1);
    root->left = create_treenode(2);
    root->right = create_treenode(3);
    root->left->left = create_treenode(4);
    root->left->right = create_treenode(5);
    root->right->right = create_treenode(6);
    convert_list(root);
}
/*-------------------------------------------------------------------*/
int check_occurrence(struct listnode *head,int key){
    struct listnode *temp =head;
    if(temp == NULL)
        return 0;
//    while(temp->next == NULL)
    {
        if(temp->data ==key)
        {
            return 1+check_occurrence(temp->next, key);
        }
        else{
            return check_occurrence(temp->next, key);
        }
    }
    
}

void linked_occurrence(void)//Count the number of occurrences of an element in a linked list using recursion
{
    int key=1;
    struct listnode *root=create_listnode(0);
    root->next = create_listnode(2);
    root->next->next = create_listnode(2);
    root->next->next->next = create_listnode(4);
    int occ = check_occurrence(root,key);
    printf("total occurrence is - %d",occ);
}
/*-------------------------------------------------------------------*/
int check_lenth(struct listnode *head)
{
    struct listnode *temp  = head;
    if(temp == NULL)
    {
        return 0;
    }
          return 1+check_lenth(temp->next);
}
void linked_lenth(void)//Find the length of a linked list using recursion
{
    struct listnode *root=create_listnode(0);
    root->next = create_listnode(2);
    root->next->next = create_listnode(2);
    root->next->next->next = create_listnode(4);
    int lenth = check_lenth(root);
    printf("lenth of linked list is %d",lenth);
    
}
/*-------------------------------------------------------------------*/
void linked_lenth1(void)//Find the length of a linked list without using recursion
{
    struct listnode *root = create_listnode(10);
    root->next = create_listnode(20);
    root->next->next = create_listnode(30);
    root->next->next->next = create_listnode(30);
    int lenth=0;
    while(root != NULL)
    {
        lenth++;
        root = root->next;
    }
    printf("total lenth of linkedlist - %d",lenth);
}
/*-------------------------------------------------------------------*/

int check_alternate(struct listnode *head)
{
    static int count = 0;
    if(head == NULL)
    {
        return 0;
    }
    if(head != NULL)
    {
        count++;
        if(count%2 == 1)
        {
            printf("Data is %d\n",head->data);
        }
        check_alternate(head->next);
    }
    return 1;
}

void linked_alternate_recursion(void)//Print the Alternate Nodes in a Linked List using Recursion
{
    struct listnode *root = create_listnode(1);
    root->next = create_listnode(2);
    root->next->next = create_listnode(3);
    root->next->next->next = create_listnode(4);
    int result=check_alternate(root);
}
/*-------------------------------------------------------------------*/
int check_alternate1(struct listnode *head)
{
    static int count = 0;
    if(head == NULL)
    {
        return 0;
    }
    while(head != NULL)
    {
        count++;
        if(count%2 == 1)
        {
            printf("Data is %d\n",head->data);
        }
        head = head->next;
    }
    return 1;
}
void linked_altenate(void)//Print the Alternate Nodes in a Linked List without using Recursion
{
    struct listnode *root = create_listnode(1);
    root->next = create_listnode(2);
    root->next->next = create_listnode(3);
    root->next->next->next = create_listnode(4);
    int result=check_alternate1(root);
    
}
/*-------------------------------------------------------------------*/
void own_check(char *source, char *target)
{
    int flag=0;
    while(*source != '\0' || *target != '\0')
    {
        if(*source == *target)
        {
            source++;
            target++;
        }
        else
        {
            printf("Not same");
            flag =1;
            break;
        }
    }
    if(flag == 0)
    {
        printf("Both are same");
    }
}
void string_compare(void)//C program to compare strings using strcmp() function
{
    char source[]="ramakrishnan";
    char target[]="ramakrishnan1";
    int result =strcmp(source,target);
    if(result == 0)
    {
        printf("Both are same string\n");
    }
    else{
        printf("Both are not same string\n");
    }
    printf("compare result = %d\n",result);
    own_check(source,target);
}
/*-------------------------------------------------------------------*/
static int used=0;
#define POOLSIZE 1024
static char memory_pool[POOLSIZE];
void* create_melloc(int size)
{
    if(used+size > POOLSIZE)
    {
        return NULL;
    }
    void *ptr = &memory_pool[used];
    used = used+size;
    return ptr;
}
void free_memory(void)
{
    used =0;
}

void create_own_malloc()//create my own malloc function? Please give an example code.
{
    int *ptr = (int *)create_melloc(sizeof(int));
    *ptr = 255;
    printf("ptr - %d",*ptr);
    free_memory();
    ptr = NULL;
    if(ptr != NULL)
    printf("ptr - %d",*ptr);
    
}
/*-------------------------------------------------------------------*/
void modify_bit(void)//Modify specific bits in a 32-bit number based on logical conditions
{
    int data = 0x55;
//    set bitposition at 5
    data= data |(1<<5);
    printf("setbit - %d\n",data);
//    clear bit position 5
    data = data & ~(1<<5);
    printf("Clear bit - %d\n",data);
    //Toggle bit position
    data = data ^ (1<<5);
    printf("toggle bit - %d\n",data);
}
/*-------------------------------------------------------------------*/
void synchronize_bitposition(void)//Synchronize one bit position with another
{
    int source = 0x55,target = 0xAA;
    int temp;
//    Copy bit 2 to bit 5:
    temp = source>>2&1;
    target = target & ~(1<<5);
    target = target | (temp << 5);
    printf("sync bit - %d\n",target);
}
/*-------------------------------------------------------------------*/
void bit_always_different(void)//Ensure two specific bit positions are always different
{
  // 0,1 bit always different
    int data = 3;
    int bit1,bit2;
    bit1 =data & 1;
    bit2 = data >>1 &1;
    printf("before - %d\n",data);
    if(bit1 == bit2)
    {
        data = data ^ 1;
    }
    printf("After - %d\n",data);
}
/*-------------------------------------------------------------------*/
void dynamic_allocation(void)//C Dynamic Memory Allocation Examples
{
    int *integer;
    char *charter;
    float *floattype;
    integer = (int *)malloc(sizeof(int));
    charter = (char *)malloc(sizeof(char));
    floattype = (float *)malloc(sizeof(float));
    *integer = 10;
    *charter ='L';
    *floattype = 1.256;
    printf("pointer value %d\n%c\n%f",*integer,*charter,*floattype);
    free(integer);
    free(charter);
    free(floattype);
}
/*-------------------------------------------------------------------*/
void dynamic_array(void)//array elements using Dynamic Memory Allocation.
{
    int *arr;
    int limit;
//    int n;
    printf("enter the array limits - ");
    scanf("%d",&limit);
    arr = (int *)malloc(limit*(sizeof(int)));
    for(int i=0;i<limit;i++)
    {
        printf("entet the element =");
        scanf("%d",(arr+i));
    }
    for(int i=0;i<limit;i++)
    {
        printf("%d\n",*(arr+i));
        
    }
    free(arr);
}
/*-------------------------------------------------------------------*/
void dynamic_structure(void)//student details using structure and Dynamic Memory Allocation.
{
    struct student{
        char name[20];
        int age;
        int standard;
    };
    struct student student1= {"ramakrishnan",21,1};
    printf("student - 1,name = %s\nage = %d\nstandatd= %d\n",student1.name,student1.age,student1.standard);
    struct student *student2;
    student2=(struct student *) malloc(sizeof(struct student));
    strcpy(student2->name, "ram");
    student2->age=10;
    student2->standard=2;
//    {"ramakrishnan",21,1};
    printf("student - 2,name = %s\nage = %d\nstandatd= %d",student2->name,student2->age,student2->standard);
}
/*-------------------------------------------------------------------*/
void union_example()//C program to declare, initialize an union, example of union.
{
    union byte{
        uint16_t data;
        uint8_t bit[2]; //if we use array data will be seperate lsb and msb
        struct {
            uint8_t lsb_data;
            uint8_t msb_data;
        }bytes;
    };
    union byte byte1;
    byte1.data=0x0A05;
    printf("%d\n%d\n",byte1.bit[0],byte1.bit[1]);
    printf("data-%d\nlsb-%d\nmsb-%d",byte1.data,byte1.bytes.lsb_data,byte1.bytes.msb_data);
}
/*-------------------------------------------------------------------*/
void replace_zeroone(void)//Write a Program to Replace all 0’s with 1’s in a Number.
{
    int data =10450;
    int temp=0;
    int n=0;
    printf("%d\n",data);
    while(data!=0)
    {
        temp = data%10;
        if(temp == 0)
        {
            temp = 1;
        }
        n = n*10 + temp;
        data = data/10;
    }
    printf("%d\n",n);
    data =n;
    n=0;
    while(data!=0)
    {
        temp = data%10;
        n = n*10 + temp;
        data = data/10;
    }
    printf("%d",n);
}
/*-------------------------------------------------------------------*/
void add_novariable()//without third variable
{
    int a=1,b=2;
    printf("A= %d\nB= %d\n",a,b);
    a=a+b;
    b=a-b;
    a=a-b;
    printf("A= %d\nB= %d\n",a,b);
    a=a*b;
    b=a/b;
    a=a/b;
    printf("A= %d\nB= %d\n",a,b);
    a=a^b;
    b=a^b;
    a=a^b;
    printf("A= %d\nB= %d\n",a,b);
}
/*-------------------------------------------------------------------*/
void odd_even(void)//how can you determine if a number is odd or even?
{
    int a=50;
    if(a%2)
    {
        printf("given number is odd");
    }
    else{
        printf("given number is even");
    }
}
/*-------------------------------------------------------------------*/
//toupper function conver lower case type to upper case for this need ctype.h file
void toupper_function(void)//What is the use of toupper() function in C?
{
    char c[]="ramakrishnan";
    char c1[sizeof(c)];
    for (int i=0;i<sizeof(c);i++)
    {
        c1[i]=toupper(c[i]);
        
    }
    printf("%s",c1);
}
/*-------------------------------------------------------------------*/
void array_inset_pos(void)// array inset
{
    int arr[10]={1,2,3};
    int data = 4;
    int position = 3;
    int size =2;
  
    for(int i=0;i<=size;i++)
    {
        printf("data = %d\n",arr[i]);
    }
    printf("After modification of the array\n");
    for(int i=size;i>position;i--)
    {
        arr[i+1]=arr[i];
    }
    size++;
    arr[position]=data;
    for(int i=0;i<=size;i++)
    {
        printf("data = %d\n",arr[i]);
    }
}
/*-------------------------------------------------------------------*/
void inset_begining(void)//inset begining of the aray
{
    int arr[10]={1,2,3};
    int data = 4;
    int size = 2;
    for (int i=0;i<=size;i++)
    {
        printf("data = %d\n",arr[i]);
    }
    for (int i=size;i>=0;i--)
    {
        arr[i+1] = arr[i];
    }
    size++;
    arr[0]= data;
    printf("After modification of the array\n");
    for (int i=0;i<=size;i++)
    {
        printf("data = %d\n",arr[i]);
    }
}
/*-------------------------------------------------------------------*/
#define MAX 50
struct Stack {
    int size;
    int data[MAX];
};
struct Stack stack;
void init_stack(void)
{
    stack.size = 0;
}

int isempty(void)
{
    if(stack.size == -1)
    {
        return 0;
    }
    else
    {
        return 1;
    }
    
}
int isfull(void)
{
    if(stack.size >MAX)
    {
        return 0;
    }
    else
    {
        return 1;
    }
}
void push_data(int data)
{
    if(isfull() == 1)
    {
        if(isempty() == 0)
        {
            stack.data[stack.size++] = data;
        }
        else{
            stack.data[stack.size++] = data;
        }
    }
    else
        printf("stack is full");
}
void pop_data(void)
{
    if(isempty() == 0)
    {
        printf("stack is empty");
    }
    else{
        printf("pop data = %d\n",stack.data[--stack.size]);
    }
    
}
void display_stack(void)
{
    if(isempty() == 0)
    {
        printf("stack is empty");
    }
    else{
        for(int i = 0; i < stack.size;i++)
        {
            printf("data - %d\n",stack.data[i]);
        }
        
    }
}
void stack_using_array(void)//Write a Program to Implement a Stack Using Arrays
{
    init_stack();
    push_data(10);
    push_data(20);
    push_data(30);
    push_data(40);
    push_data(50);
    display_stack();
    pop_data();
    pop_data();
    push_data(4);
    display_stack();
}
/*-------------------------------------------------------------------*/

/*-------------------------------------------------------------------*/

/*-------------------------------------------------------------------*/

/*-------------------------------------------------------------------*/

/*-------------------------------------------------------------------*/


void function_call(void)
{
//    memmory_copy();
//    memory_copyown();
//    memset_function();
//    memset_own();
//    two_smallno();
//    Cyclically_Permute();
//    sort_binary();
//    big_number_recurson();
//    Trailing_Zeroes();
//    highest_setbit();
//    check_bits_one();
//    no_bits_one();
//    binary_palindrome();
//    oddeven_bitmasking();
//    fist_second();
//    swap_bitwise();
//    check_bit();
//    binary_single();
//    linked_occurrence();
//    linked_lenth();
//    linked_lenth1();
//    linked_alternate_recursion();
//    linked_altenate();
//    string_compare();
//    create_own_malloc();
//    modify_bit();
//    synchronize_bitposition();
//    bit_always_different();
//    dynamic_allocation();
//    dynamic_array();
//    dynamic_structure();
//    union_example();
//    replace_zeroone();
//    add_novariable();
//    odd_even();
//    toupper_function();
//    array_inset_pos();
//    inset_begining();
    stack_using_array();
    
    
    
}

