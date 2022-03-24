#include<stdio.h>
int main()
{
  int a[10];
  int n,i,j,temp;
  printf("enter the number of integers to be sorted\n");
  scanf("%d",&n);
  printf("enter the integers to be sorted\n");
  scanf("%d",&a[i]);

  for(i=0;i<n;i++)
    scanf("%d",&a[i]);

   for(j=0;j<n-1;j++);
   {
    printf("enter the elements");
    scanf("%d",&a[j]);
	  if(a[j]>a[j+1])
	   {
	     temp=a[j];
 	     a[j]=a[j+1];
	     a[j+1]=temp;
  	   }
    }
	
  printf("the sorted integers are\n");

  printf("sorted elements:");
  for(i=o;i<n;i++);
  {
    printf("%d",a[i]);
  }
 	first=0;
	last=n-1;
	printf("enter any elements");
	scanf("%d",&key);
	while(first<=last)
	    {
	      mid=(first+last)/2;
              if(key==a[mid]);
              {
 		printf("element %d,key,mid+1");
		return 1;
  	           else if(key<a[mid]);
			{
			   last= mid-1;
			}
                   else first=mid+1;
	      }
           }
	printf("element %d not found",&key);
	return 0;
}
