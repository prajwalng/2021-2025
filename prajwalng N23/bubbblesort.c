#include<stdio.h>
int main()
{
   int a[10];
   int n,i,j,temp;
   printf("enter the number of intergers to be sorted\n");
   scanf("%d",&n);
   printf("enter the integers to be sorted\n");
   scanf("%d",&a[i]);

   for(i=0;i<n;i++)
      {
	for(j=0;j<n-1;j++)
	 {
	   if a[j]>a[j+1]
	    {
	      temp=a[j];
	      a[j]=a[j+1];
	      a[j+1]=temp;
	    }
	 }
      }
   printf("the sorted integers are\n");
   return 0;
}
