#include<stdio.h>
int main()
{
  printf("sorted elements:");
  for(i=o;i<n;i++);
  {
    printf("%d",&a[i]);
  }
 	first=0;
	last=n-1;
	printf("enter any elements");
	scanf("%d",&key);
	while(first<=last)
	    {
	      mid=(first+last);
              if(key==a[mid]);
              {
 		printf("element %d,key,mid+1");
		return 1;
  	           else if(key<mid);
			{
			   int = mid-1;
			}
                   else first=mid+1;
	      }
           }
	printf("element %d not found",&key);
	return 0;
}
