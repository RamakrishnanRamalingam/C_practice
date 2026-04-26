//
//  sorting.m
//  C_practice
//
//  Created by Rama Thean on 2026-03-30.
//
#include "sorting.h"

void bubble_sort(void)//bubble sorting
{
    int arr[] = {9,2,3,8,4,1};
    int flag = 0;
    for (int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
    {
        flag=0;
        for(int j = 0; j<(sizeof(arr)/sizeof(arr[0])-1-i); j++)
        {
            if(arr[j]>arr[j+1])
            {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
                flag = 1;
            }
        }
        if(flag == 0)
        {
            break;
        }
    }
    for (int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
    {
        printf("data - %d\n",arr[i]);
    }
}
/*-------------------------------------------------------------------*/
void insertion_sort(void)//insertion sorting
{
    int arr[] = {10,2,4,8,9,3};
    int temp=arr[0];
    int j=0;
    for(int i=1;i<(sizeof(arr)/sizeof(arr[0]));i++)
    {
        temp=arr[i];
        j=i-1;
        while(j >= 0 && temp < arr[j])
        {
            arr[j+1] = arr[j];
            j--;
        }
        arr[j+1] =temp;
    }
    for (int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
    {
        printf("data - %d\n",arr[i]);
    }
}
/*-------------------------------------------------------------------*/
void selection_sort(void)//selection sort
{
    int arr[] = {10,2,4,8,9,3};
    int min;
    for(int i=0;i<(sizeof(arr)/sizeof(arr[0]));i++)
    {
        min = i;
        for (int j = i+1;j<(sizeof(arr)/sizeof(arr[0]));j++ )
        {
            if(arr[min]>arr[j])
            {
                min = j;
            }
        }
        if(min != arr[i])
        {
            int temp =arr[i];
            arr[i] = arr[min];
            arr[min] = temp;
            
        }
    }
    for (int i=0;i<sizeof(arr)/sizeof(arr[0]);i++)
    {
        printf("data - %d\n",arr[i]);
    }
}
/*-------------------------------------------------------------------*/

void swapdata(int *a,int *b)
{
    int temp = *a;
    *a = *b;
    *b=temp;
    
}
void quickSort(int arr[], int low, int high)
{
    int i = low, j = high;
    int pivot = arr[(low + high) / 2]; // middle element as pivot

    while (i <= j)
    {
        while (arr[i] < pivot)
            i++;

        while (arr[j] > pivot)
            j--;

        if (i <= j)
        {
            int temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
            i++;
            j--;
        }
    }

    // Recursive calls
    if (low < j)
        quickSort(arr, low, j);

    if (i < high)
        quickSort(arr, i, high);
}
void quick_sort(void)//quick sort
{
    int arr[] = {5, 3, 8, 4, 2};
    int n = 5;

    quickSort(arr, 0, n - 1);

    for (int i = 0; i < n; i++)
        printf("%d ", arr[i]);
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
void sorting_function(void)
{
    bubble_sort();
    insertion_sort();
    selection_sort();
    quick_sort();
    
}

