#include<stdio.h>

int main()
{
    struct student
	{
	 int stu_id;
	 char name[20];
	 float lang1_marks;
	 float math_marks;
	 float comp_marks;
	 float avg;
	};
    struct student s[20];
    
    int i,n;
    printf("Enter the number of records:");
    scanf("%d",&n);
    printf("Enter %d student details.......\n",n);
    for(i=0;i<n;i++)
	{
	  printf("\n\nEnter student id:");
	  scanf("%d",&s[i].stu_id);
	  printf("\n\nEnter student name:");
	  scanf("%s",s[i].name);
	  printf("Enter lang1 marks:");
	  scanf("%f",&s[i] lang1);
	  printf("Enter maths marks:");
	  scanf("%f",&s[i] math);
	  printf("Enter comp marks:");
	  scanf("%f",&s[i] comp);
	}
   for(i=0;i<n;i++)
	{
	   s[i].avg=(s[i].lang1_marks+s[i].mat_marks+s[i].comp_marks)/3;
	}
   printf("students scoring above the average marks......\n);
   printf("\n\nID\tName\tAverage\n\n");
   for(i=0;i<n;i++)
   {
      if(s[i].avg>=35.0)
      printf("%d\t%s\t%f\n",s[i].stud_id,s[i].name,s[i].avg);
   }
   printf("students scoring below the average marks......\n);
   printf("\n\nID\tName\tAverage\n\n");
   for(i=0;i<n;i++)
   {
      if(s[i].avg<35.0)
      printf("%d\t%s\t%f\n",s[i].stud_id,s[i].name,s[i].avg);
   }
   return 0;
}



