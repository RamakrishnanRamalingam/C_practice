//
//  search_sort.m
//  C_practice
//
//  Created by Rama Thean on 2026-04-21.
//
#include "search_sort.h"
/*-------------------------------------------------------------------*/
//Linear search check one by one untill
void linear_search(int arr[],int size,int data)
{
    int flag =0;
    for(int i=0;i<size;i++)
    {
        if(data == arr[i])
        {
            flag =1;
            printf("element position is %d\n",i);
            break;
        }
    }
    if(flag == 0)
    {
        printf("No element in the array\n");
    }
}
/*-------------------------------------------------------------------*/
//Binary search is efficent search algoritham
void bin_search(int arr[],int size,int data)
{
    int l=0,r=size,mid;
    mid = (l+r)/2;
    int flag =0;
    while(l<=r)
    {
        mid = (l+r)/2;
        if(arr[mid]==data)
        {
            printf("element position is %d\n",mid);
            flag=1;
            return;
        }
        else if(data<arr[mid]){
            r=mid-1;
        }
        else
        {
            l = mid+1;
        }
    }
    if(flag ==0)
    {
        printf("elemenr not found in the list\n");
    }
}
/*-------------------------------------------------------------------*/
//Larger elements “bubble up” to the end
void bubble_sorting(int *arr,int size)
{
    int flag =0;
    for(int i=0;i<size;i++)
    {
        for(int j=0;j<size-i;j++)
        {
            if(arr[j]>arr[j+1])
            {
                int temp = arr[j+1];
                arr[j+1] = arr[j];
                arr[j] = temp;
                flag = 1;
            }
        }
        if(flag == 1)
        {
            break;
        }
        
    }
}

/*-------------------------------------------------------------------*/
void insertion_sorting(int *arr, int size)
{
    int temp,j;
    for (int i=1;i<size;i++)
    {
        temp=arr[i];
        j=i-1;
        while(j>=0 && arr[j]>temp)
        {
            arr[j+1] = arr[j];
            j--;
        }
        arr[j+1] = temp;
    }
}
/*-------------------------------------------------------------------*/
void selection_sorting(int *arr,int size)
{
    int min;
    for (int i=0; i<size; i++)
    {
        min=i;
        for(int j=i+1;j<size;j++)
        {
            if(arr[j]<arr[min])
            {
                min=j;
            }
        }
        if(min != i)
        {
            int temp = arr[i];
            arr[i]= arr[min];
            arr[min] = temp;
        }
    }
}
/*-------------------------------------------------------------------*/
//quick sorting
void swaf(int *a,int *b)
{
    int temp = *a;
    *a = *b;
    *b = temp;
}
int partion(int *arr,int low,int high)
{
    int start=low-1;
    int end = high+1;
    int pivot = arr[low];
    while(1)
    {
        do{
            start++;
        }
        while(arr[start]<pivot);
        do{
            end--;
        }
        while (arr[end]>pivot);
        if(start>=end)
            return end;
        swaf(&arr[start], &arr[end]);
    }
}
void quick_sorting(int *arr,int low,int high)
{
    if(low<high)
    {
        int pi = partion(arr,low,high);
        quick_sorting(arr, low, pi);
        quick_sorting(arr, pi+1, high);
    }
}
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
/*-------------------------------------------------------------------*/
void searchsort_function(void)
{
    int arr[] = {88,2,3,4,5,6,77};
    int size = sizeof(arr)/sizeof(arr[0]);
//    bubble_sorting(arr,sizeof(arr)/sizeof(arr[0]));
//    insertion_sorting(arr,sizeof(arr)/sizeof(arr[0]));
//    selection_sorting(arr,sizeof(arr)/sizeof(arr[0]));bvvbbB
    quick_sorting(arr,0,size-1);
    int data =88;
//    linear_search(arr,size, data);
    bin_search(arr,size, data);
}
