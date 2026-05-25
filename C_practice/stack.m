
//
//  stack.m
//  C_practice
//
//  Created by Rama Thean on 2026-04-06.
//
#include"stack.h"
#define N 5
int stack_local[N];
int top = -1;
int pop_last = -1;
int peek_last = -1;

void push_data_stack(int data)
{
    if(top == N-1)
    {
        printf("stack is full\n");
    }
    else{
        top++;
        stack_local[top] = data;
    }
}

void pop_data_stack(void)
{
    
    if(top == -1)
    {
        printf("stack is empty");
    }
    else{
        pop_last = stack_local[top];
        top--;
    }
}

void peek_data_stack(void)
{
    if(top == -1)
    {
        printf("stack is empty ");
    }
    else{
        printf("peek data = %d",stack_local[top]);
        peek_last = stack_local[top];
        
    }
}

void display_stack_data(void)
{
    int temp = top;
    if(top == -1)
    {
        printf("stack is empty");
    }
    else{
        while(temp != 0)
        {
            printf("stack Data - %d\n",stack_local[temp--]);

        }
        printf("stack Data - %d\n",stack_local[temp]);
    }
}
void array_stack_imple(void)
{
        push_data_stack(1);
        push_data_stack(2);
        push_data_stack(3);
        push_data_stack(3);
        push_data_stack(3);
        push_data_stack(3);
        pop_data_stack();
        pop_data_stack();
        pop_data_stack();
        display_stack_data();
}
/*-------------------------------------------------------------------*/
struct snode
{
    int data;
    struct snode *next;
};
struct snode *top_snode =NULL;
struct snode* create_snode(int data)
{
    struct snode *newnode;
    newnode = (struct snode*)malloc(sizeof(struct snode));
    newnode->data=data;
    newnode->next=NULL;
    return newnode;
}
void push_link_data(int data)
{
    struct snode *newnode =create_snode(data);
    if(top_snode == NULL)
    {
        top_snode = newnode;
    }
    else
    {
        newnode->next = top_snode;
        top_snode = newnode;
    }
}

void pop_link_data(void)
{
    struct snode *temp = top_snode;
    if(top_snode==NULL)
    {
        printf("stack list is empty");
    }
    else{
        top_snode = top_snode->next;
        free(temp);
    }
}

void peek_link_data(void)
{
    if(top_snode == NULL)
    {
        printf("no element in stack\n");
    }
    else{
        printf("peek data - %d\n",top_snode->data);
    }
}

void display_linked_stack(void)
{
    struct snode *temp =top_snode;
    if(temp == NULL)
    {
        printf("no element in stack\n");
    }
    else{
        while(temp->next != NULL)
        {
            printf("stack data - %d\n",temp->data);
            temp = temp->next;
        }
        printf("stack data - %d\n",temp->data);
    }
}

void linked_stack_imple(void)
{
    push_link_data(1);
    push_link_data(2);
    push_link_data(3);
    push_link_data(4);
    pop_link_data();
    pop_link_data();
    display_linked_stack();
    peek_link_data();
    
}
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/

void stack_function(void)//stack sunction
{
//    array_stack_imple();
//    linked_stack_imple();

    
}


#define MAX 10
int queue[MAX];
int front=-1,rear = -1;
void enqueue_data(int data)
{
    if(rear == -1)
    {
        rear =0;
        queue[rear] = data;
        front = 0;
    }
    else if (rear == MAX-1 )
    {
        printf("Queue is overflow");
    }

    else{
        rear++;
        queue[rear] = data;
    }
}

void dequeue(void)
{
    if(front == -1)
    {
        printf("no data in the queue");
    }
        else if(rear == front)
        {
            printf("queue data - %d\n",queue[front++]);
            front = rear =-1;
        }
    else{
        printf("queue data - %d\n",queue[front++]);
    }
}
void display_queue(void)
{
    int front1 = front;
    while(front1 != -1 )
    {
        printf("queue data - %d\n",queue[front1++]);
        if(front1 ==  rear)
        {
            printf("queue data - %d\n",queue[front1++]);
            break;
        }
    }
    
}
void peek_queue(void)
{
    if(front == -1)
    {
        printf("no data in queue");
    }
    else
        printf("queue data - %d\n",queue[front]);
}
void array_queue(void)
{
    enqueue_data(1);
    enqueue_data(2);
    enqueue_data(3);
    dequeue();
    dequeue();
    dequeue();
    display_queue();
    enqueue_data(4);
    enqueue_data(5);
    display_queue();
    peek_queue();
    
}
/*-------------------------------------------------------------------*/

struct qnode
{
    int data;
    struct qnode *next;
};
struct qnode *head,*tail = NULL;

struct qnode* queue_create(int data)
{
    struct qnode *newnode = (struct qnode *)malloc(sizeof(struct qnode));
    newnode->data = data;
    newnode->next = NULL;
    return newnode;
}

void enqueue_list(int data)
{
    struct qnode *newnod =queue_create(data);
    if (tail == NULL)
    {
        head = tail = newnod;
    }
    else
    {
        tail->next = newnod;
        tail = newnod;
    }
}
void dequeue_list(void)
{
    if(head == NULL)
    {
        printf("no data in list of queue");
    }
    else{
        printf("de queue data - %d\n",head->data);
        if(head->next == NULL)
        {
            free(head);
            head = tail = NULL;
        }
        else{
            struct qnode *temp = head;
            head = head->next;
            free(temp);
        }
    }
    
}
void peek_list_peek(void)
{
    printf("peek data %d\n",head->data);
}
void display_queue_list(void)
{
    struct qnode *temp = head;
    while(temp != NULL)
    {
        printf("queue data - %d\n",temp->data);
        temp = temp->next;
    }
//    printf("queue data - %d\n",temp->data);
}
 void list_queue(void)
{
     enqueue_list(1);
     enqueue_list(2);
     display_queue_list();
     dequeue_list();
     display_queue_list();
     peek_list_peek();
     
 }
/*-------------------------------------------------------------------*/
#define CIR 5
int cir_data[CIR];
int front_c = -1,rear_c = -1;

void enqueue_cir(int data)
{
    if(rear_c == -1 && front_c == -1)
    {
        rear_c = front_c =0;
        cir_data[front_c] = data;
    }
    else if ((rear_c+1)%CIR ==  front_c)
    {
        printf("circular queue is full\n ");
    }
    else{
        rear_c = (rear_c+1)%CIR;
        cir_data[rear_c] = data;
    }
}
void dequeue_cir(void)
{
    if(rear_c == -1 && front_c == -1 )
    {
        printf("circular queue is empty");
    }
    else if (front_c == rear_c)
    {
        front_c = rear_c = -1;
    }
    else{
        printf("dequeue data - %d\n",cir_data[front_c]);
        front_c = (front_c+1)%CIR;
    }
}
void display_cir(void)
{
    int i = front_c;
    if(rear_c == -1 && front_c ==-1)
    {
        printf("circular queue is empty");
    }
    else
    {
        while(i != rear_c)
        {
            printf("cir data -%d\n",cir_data[i]);
            i=(i+1)%CIR;
            
        }
        printf("cir data -%d\n",cir_data[i]);
    }
}
void cir_array_queue(void)
{
    enqueue_cir(1);
    enqueue_cir(2);
    enqueue_cir(3);
    enqueue_cir(4);
    enqueue_cir(5);
    enqueue_cir(6);
    display_cir();
    dequeue_cir();
    dequeue_cir();
    enqueue_cir(1);
    enqueue_cir(2);
    display_cir();
}
/*-------------------------------------------------------------------*/
#define DEQUE 5
int dequeue_data[DEQUE];
int front_deque=-1,rear_deque=-1;

void enqueue_front(int data)
{
    if(front_deque == 0 || rear_deque == DEQUE-1)
    {
        printf("Dequeue is full");
    }
    else if(front_deque == -1 && rear_deque == -1)
    {
        front_deque = rear_deque =0;
        dequeue_data[front_deque] = data;
    }
    else if (front_deque == 0)
    {
        front_deque = DEQUE-1;
        dequeue_data[front_deque] = data;
    }
    else{
        front_deque--;
        dequeue_data[front_deque] = data;
    }
}
void enqueue_rear(int data)
{
    if(front_deque == 0 || rear_deque == DEQUE-1)
    {
        printf("Queue is full \n");
    }
    else if(front_deque == -1 && rear_deque ==-1)
    {
        front_deque=rear_deque=0;
        dequeue_data[rear_deque] = data;
    }
    else if (rear_deque == DEQUE-1)
    {
        rear_deque = 0;
        dequeue_data[rear_deque] = data;
    }
    else{
        rear_deque++;// = (rear_deque+1)%DEQUE;
        dequeue_data[rear_deque] = data;
        
    }
}
void Dequeue_front(void)
{
    if(front_deque == -1 && rear_deque ==-1)
    {
        printf("dequeue is empty\n");
    }
    else if(front_deque == DEQUE)
    {
        front_deque = 0;
    }
    else if(front_deque == rear_deque)
    {
        front_deque = rear_deque =-1;
    }
    else{
        front_deque++;
    }
}
void Dequeue_rear(void)
{
    if(front_deque == -1 && rear_deque ==-1)
    {
        printf("dequeue is empty\n");
    }
    else if(rear_deque == DEQUE)
    {
        rear_deque = 0;
    }
    else if(front_deque == rear_deque)
    {
        front_deque = rear_deque =-1;
    }
    else{
        rear_deque--;
    }
}

void display_dequeue(void)
{
    int i = front_deque;
    while(i!=rear_deque)
    {
        printf("dequeue datata - %d\n",dequeue_data[i]);
        i = (i+1)%DEQUE;
    }
}


void queue_function(void)//stack sunction
{
//    array_queue();
//    list_queue();
    cir_array_queue();
    
}



