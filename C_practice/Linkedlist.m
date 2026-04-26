#include "Linkedlist.h"
//
//  Linkedlist.m
//  C_practice
//
//  Created by Rama Thean on 2026-03-11.
//
/*-------------------------------------------------------------------*/
//single linked list
struct Node {
    int data;
    struct Node *next;
};

struct Node* nodesingle_create(int data)
{
    struct Node *node;
    node = (struct Node *)malloc(sizeof(struct Node));
    node->next=NULL;
    node->data=data;
    return node;
}
void reverse_list(struct Node **head)
{
    struct Node *prv,*cur,*next;
    prv=NULL;
    cur = *head;
    next = *head;
    while(next != NULL)
    {
        next = next->next;
        cur->next = prv;
        prv = cur;
        cur = next;
    }
    *head = prv;
}
void inset_beginning(struct Node **head,  int data)
{
    struct Node *node;
    node = (struct  Node *)malloc(sizeof(struct Node));
    node = nodesingle_create(data);
    node->next=*head;
    *head = node;
}

void inset_end(struct Node **head,  int data)
{
    struct Node *node;
    node = (struct  Node *)malloc(sizeof(struct Node));
    node = nodesingle_create(data);
    if(*head == NULL)
    {
        node->next = *head;
        return;
    }
    struct Node *newnode = *head;
    while(newnode->next != NULL)
    {
        newnode = newnode->next;
    }
    newnode->next=node;
   
}
void delete_node(struct Node **head, int data)
{
    struct Node *node = *head;
    struct Node *prv = NULL;
    if(node == NULL && node->data==data)
    {
 
        free(node);
    }
    while(node != NULL && node->data != data)
    {
        prv=node;
        node=node->next;
    }
    if(node->data==data)
    {
        prv->next=node->next;
        free(node);
    }
}
struct Node* search_node(struct Node **head, int data)
{
    struct Node *node=*head;
    while(node != NULL)
    {
        if(node->data == data)
        {
            return node;
        }
        node = node->next;
    }
    return NULL;
}

void print_list(struct Node **node)
{
    struct Node *temp = *node;
    while(temp != NULL)
    {
        printf("data = %d\n",temp->data);
        temp=temp->next;
    }
}

void single_list(void) //single linked list
{
    struct Node *head;
    inset_beginning(&head,10);
    inset_beginning(&head,1);
    inset_end(&head,2);
    inset_end(&head,100);
    print_list(&head);
    delete_node(&head,10);
    print_list(&head);
    struct Node *search =search_node(&head,10);
    if(search == NULL)
    {
        printf("not identified");
    }
    else{
        printf("search = %d\n",search->data);
    }
    
}
/*-------------------------------------------------------------------*/
struct Dnode{
    int data;
    struct Dnode *next;
    struct Dnode *prv;
};

struct Dnode* create_node(int data)
{
    struct Dnode *node;
    node = (struct Dnode*)malloc(sizeof(struct Dnode));
        node->data=data;
        node->next=NULL;
        node->prv=NULL;
    return node;
}

void Dinset_begining(struct Dnode **head,int data)
{
    struct Dnode *newnode=NULL;
    newnode = create_node(data);
    if(*head == NULL )
    {
        *head = newnode;
        return;
    }
    newnode->next =*head;
    (*head)->prv = newnode;
    *head = newnode;
}
void Dinset_end(struct Dnode **head,int data)
{
   
    struct Dnode *newnode = create_node(data);
    if(*head == NULL)
    {
        *head = newnode;
        return;
        
    }
    struct Dnode *node = *head;
    while( node->next != NULL)
    {
       node= node->next;
    }
    
    node->next = newnode;
     newnode->prv = node;
}
struct Dnode* Dsearch(struct Dnode **head,int data)
{
    struct Dnode *node = *head;
    while(node != NULL)
    {
        if(node->data == data)
        {
            return node;
        }
        node=node->next;
    }
    return NULL;
}
void delete_front(struct Dnode **head)
{
  
    if(*head == NULL)
    {
        printf("No node in this list");
    }
    else
    {
        struct Dnode *temp = *head;
        (*head) = temp->next;
        if(*head != NULL)
        (*head)->prv = NULL;
        
        free(temp);
    }
}
void delete_end(struct Dnode **head)
{
    if(*head == NULL)
    {
        printf("NO node in this list");
        return;
    }
    else{
        struct Dnode *temp = *head;
        // Only one node
        if(temp->next == NULL)
        {
            free(temp);
            *head = NULL;
            return;
        }
        while(temp->next != NULL)
        {
            temp=temp->next;
        }
        temp->prv->next = NULL;
        free(temp);
    }
}

void Ddelete_node(struct Dnode **head,int data)
{
    if(*head == NULL)
    {
        return;
    }
    struct Dnode *node=*head;
    struct Dnode *prv=NULL;
    
    if(node->data == data) {
        *head = node->next;
        if(*head != NULL)
            (*head)->prv = NULL;
        free(node);
        return;
    }
    
    while(node->next != NULL && node->data != data)
    {
        node=node->next;
    }
    if(node==NULL)
    {
        return;
    }
    
    
    if(node->next != NULL)
        node->next->prv = node->prv;

      if(node->prv != NULL)
          node->prv->next = node->next;

      free(node);
    
}

void Dprint_list(struct Dnode **head)
{
    struct Dnode *node =*head;
    if(node == NULL)
    {
        printf("NO data in the List");
        return;
    }
    while(node != NULL)
    {
        printf("Data - %d\n",node->data);
        node=node->next;
    }
  
}
void Dprint_listR(struct Dnode **head)
{
    struct Dnode *node =*head;
    if(node == NULL)
    {
        printf("NO data in the List");
        return;
    }
while(node->prv != NULL)
{
    node = node->prv;
}
    while(node != NULL)
    {
        printf("Data - %d\n",node->data);
        node=node->next;
    }
  
}
void inset_position(struct Dnode **head, int data,int position)
{
    struct Dnode *temp=*head;
    if(temp == NULL)
    {
        printf("list is empty\n");
        return;
    }
    int count=0;
    while(temp->next != NULL && position > count)
    {
        temp = temp->next;
        count++;
    }
    if(count == position)
    {
        struct Dnode *newnode = create_node(data);
        temp->prv->next = newnode;
        newnode->prv = temp->prv;
        newnode->next = temp;
        temp->prv = newnode;
    }
    else
    {
        printf("list is small\n");
    }
}

void reverse_dlist(struct Dnode **head)
{
    struct Dnode *newnode=NULL;
    struct Dnode *temp = *head;
    if(temp == NULL)
    {
        printf("List is empty");
        return;
    }
    
    while(temp != NULL)
    {
        newnode=temp->next;
        temp->next = temp->prv;
        temp->prv= newnode;
        temp=temp->prv;
    }

    // Update head
       if (temp != NULL)
           *head = newnode->prv;
}


void double_linked(void)
{
    struct Dnode *root=NULL;
    Dinset_begining(&root,11);
    Dinset_begining(&root,1);
    Dinset_end(&root,2);
    Dinset_end(&root,3);
    Dinset_end(&root,4);
    inset_position(&root,66,1);
    Dprint_list(&root);
    
    struct Dnode *temp =Dsearch(&root,2);
    if(temp == NULL)
    {
        printf("No search element");
    }
    else
    {
        printf("Search element - %d\n",temp->data);
    }
    Ddelete_node(&root,2);
    Dprint_list(&root);
    reverse_dlist(&root);
    Dprint_listR(&root);
    
}
/*-------------------------------------------------------------------*/
//Single circule linked list
void single_circ_beginning(struct Node **head, int data)
{
    struct Node *newnode;
    newnode = (struct Node *)malloc(sizeof(struct Node));
    
    if (*head == NULL)
    {
        newnode = nodesingle_create(data);
        newnode->next =newnode;
        *head = newnode;
    }
    else
    {
        struct Node *temp =*head;
        while(temp->next != *head)
        {
            temp=temp->next;
        }
        newnode = nodesingle_create(data);
        newnode->next = *head;
        *head=newnode;
        temp->next = newnode;
    }
}
void single_circ_end(struct Node **head, int data)
{
    struct Node *newnode= nodesingle_create(data);
    if(*head == NULL)
    {
        newnode->next =newnode;
        *head = newnode;
        
    }
    else{
        struct Node *temp = *head;
        while(temp->next != *head)
        {
            temp=temp->next;
        }
        newnode->next = temp->next;
        temp->next = newnode;
        *head = newnode->next;
    }
}
void delete_circular_beginning(struct Node **head)
{
    struct Node *temp = *head;
    if (head == NULL || *head == NULL)
    {
        printf("No node this link");
    }
    else if(temp->next == temp)
    {
            free(temp);
        *head = NULL;
    }
    else{
        while(temp->next != *head)
        {
            temp=temp->next;
        }
        struct Node *del = *head;
        temp->next = del->next;
        
                *head = del->next;
                free(del);
    }
}
void delete_circular_end(struct Node **head)
{
    struct Node *temp = *head;
    if (head == NULL || *head == NULL)
    {
        printf("No node this link");
    }
    else if(temp->next == temp)
    {
        free(temp);
        *head = NULL;
    }
    else
    {
        while(temp->next != *head)
        {
            temp = temp->next;
        }
        struct Node *temp1 = *head;
        while(temp1->next != temp)
        {
            temp1 = temp1->next;
        }
        temp1->next = temp->next;
        free(temp);
        
    }
    
}
void delete_circular_pos(struct Node **head,int pos)
{
    struct Node *temp = *head;
    int count = 0;
    if (head == NULL || *head == NULL)
    {
        printf("No node this link");
    }
    else if(temp->next == temp)
    {
        if(pos == 1){
            free(temp);
            *head = NULL;
        }
        else{
            printf("list is not in the range");
        }
    }
    else
    {
       
        while(temp->next != *head)
        {
            temp = temp->next;
            count++;
            if(pos == count)
            {
                break;
            }
        }
        if(count == pos){
            struct Node *temp1 = *head;
            while(temp1->next != temp)
            {
                temp1 = temp1->next;
            }
            temp1->next = temp->next;
            free(temp);
        }
        
    }
    
}
void reverse_circular_single(struct Node **head)
{
    if (head == NULL || *head == NULL)
        return;

    struct Node *prev = NULL;
    struct Node *curr = *head;
    struct Node *next = NULL;
    struct Node *first = *head;

    do
    {
        next = curr->next;
        curr->next = prev;
        prev = curr;
        curr = next;
    } while (curr != first);

    // fix last node (original head)
    first->next = prev;

    // update head
    *head = prev;
}

void circular_single_display(struct Node **head)
{
    struct Node *temp = *head;
    struct Node *node = *head;
    if(*head == NULL)
    {
        printf("Circular single list is Empty");
    }
    else{
        while(temp->next != node)
        {
            printf("data - %d\n",temp->data);
            temp = temp->next;
        }
        printf("data - %d\n",temp->data);
    }
}


void circular_single(void)
{
    struct Node *head = NULL;
    single_circ_beginning(&head,1);
    single_circ_beginning(&head,2);
    single_circ_beginning(&head,3);
    single_circ_end(&head,100);
    circular_single_display(&head);
    reverse_circular_single(&head);
    circular_single_display(&head);
//    delete_circular_pos(&head,3);
//    delete_circular_beginning(&head);
//    delete_circular_end(&head);
//    circular_single_display(&head);
    
}
/*-------------------------------------------------------------------*/
void double_cir_create_beg(struct Dnode **head,struct Dnode **tail,int data)
{
    struct Dnode *newnode;
    newnode = create_node(data);
    if(*head == NULL)
    {
        newnode->next = newnode;
        newnode->prv = newnode;
        *head = newnode;
        *tail = newnode;
    }
    else{
        newnode->prv = *tail;
        newnode->next = *head;
        (*head)->prv=newnode;
        (*tail)->next = newnode;
        *head = newnode;
        
    }
}

void double_cir_create_end(struct Dnode **head,struct Dnode **tail,int data)
{
    struct Dnode *newnode;
    newnode = create_node(data);
    if(*head == NULL)
    {
        newnode->next =newnode;
        newnode->prv = newnode;
        *head = newnode;
        *tail = newnode;
    }
    else
    {
        (*head)->prv = newnode;
        (*tail)->next = newnode;
        newnode->next = *head;
        newnode->prv = *tail;
        *tail=newnode;
    }
}
void double_cir_position(struct Dnode **head,struct Dnode **tail,int data,int pos)
{
    struct Dnode *newnode = create_node(data);
    if(*head == NULL)
    {
        if(pos>1)
        {
            printf("list is not have node");
            *head = *tail = newnode;
            newnode->prv= newnode;
            newnode->next = newnode;
        }
        else{
            *head = *tail = newnode;
            newnode->prv= newnode;
            newnode->next = newnode;
        }
    }
    else{
        struct Dnode *temp = *head;
        int count = 0;
        while(temp != *tail)
        {
            temp = temp->next;
            count++;
        }
        if(count<pos)
        {
            printf("list is not in the range");
        }
        else{
            temp = *head;
            count =0;
            while(temp != *tail)
            {
                temp = temp->next;
                count++;
                if(count+2 == pos)
                {
                    break;
                }
            }
            newnode->prv = temp;
            newnode->next = temp->next;
            temp->next->prv = newnode;
            temp->next =newnode;
        }
    }
}
void delete_cir_beg(struct Dnode **head,struct Dnode **tail)
{
    struct Dnode *temp = *head;
    if(*head == NULL)
    {
        printf("no list this circular linked list");
    }
    else if (temp->next == temp)
    {
        free(*head);
        *head =NULL;
        free(*tail);
        *tail = NULL;
    }
    else{
        *head = (*head)->next;
        (*head)->prv = *tail;
        (*tail)->next = *head;
        free(temp);
        // or
//        (*head)->next->prv = *tail;
//        (*tail)->next = (*head)->next;
//        *head = (*head)->next;
//        free(temp);
    }
}
void delete_cir_end(struct Dnode **head,struct Dnode **tail)
{
    struct Dnode *temp = *tail;
    if(*head == NULL)
    {
        printf("no list this circular linked list");
    }
    else if (temp->next == temp)
    {
        free(*head);
        *head =NULL;
        free(*tail);
        *tail = NULL;
    }
    else{
        (*tail)->prv->next = *head;
        (*head)->prv = (*tail)->prv;
        (*tail) = (*tail)->prv;
        free(temp);
    }
}

void delete_cir_pos(struct Dnode **head,struct Dnode **tail,int pos)
{
    struct Dnode *temp = *head;
    if(*head == NULL)
    {
        printf("Circular double linked list is empty \n");
    }
    else if(temp->next == temp)
    {
        printf("list have one node");
        *head = *tail = NULL;
        free(temp);
    }
    else{
        int count = 0;
        while(temp->next != *tail)
        {
            count++;
            temp = temp->next;
            if(count == pos-1)
            {
                break;
            }
        }
        if(temp->next == *head)
        {
            temp->prv->next = temp->next;
            temp->next->prv = temp->prv;
            *tail = temp->prv;
            (*head)->prv = *tail;
            free(temp);
            
        }
        else if(pos == count+1){
            temp->prv->next = temp->next;
            temp->next->prv = temp->prv;
            free(temp);
        }
        else{
            printf("list is not range\n");
        }
    }
    
}
void display_cir_double(struct Dnode **head,struct Dnode **tail)
{
    struct Dnode *temp = *head;
    while(temp->next != *head)
    {
        printf("data - %d\n",temp->data);
        temp=temp->next;
    }
//    printf("data - %d\n",temp->data);
//    printf("tail to head print");
//    temp = *tail;
//    while(temp->next != *tail)
//    {
//        printf("data - %d\n",temp->data);
//        temp=temp->next;
//    }
    printf("data - %d\n",temp->data);
}

void double_circular(void)
{
    struct Dnode *head = NULL,*tail=NULL;
    double_cir_create_beg(&head,&tail,1);
    double_cir_create_beg(&head,&tail,2);
    double_cir_create_beg(&head,&tail,3);
    double_cir_create_beg(&head,&tail,4);
    double_cir_create_end(&head,&tail,5);
    double_cir_create_end(&head,&tail,6);
    double_cir_position(&head,&tail,7,4);
    display_cir_double(&head,&tail);
    printf("after delete\n");
    delete_cir_beg(&head,&tail);
    delete_cir_end(&head,&tail);
    delete_cir_pos(&head,&tail,2);
//    double_cir_create_beg(&head,&tail,1);
//    double_cir_create_end(&head,&tail,6);
    display_cir_double(&head,&tail);

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
void linkedlist_function(void)//linked list function
{
//    single_list();
//    double_linked();
//    circular_single();
    double_circular();
}

/*-------------------------------------------------------------------*/
