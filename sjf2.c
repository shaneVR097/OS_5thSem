#include<stdio.h>
int main()
{
	int A[100][4];
	int i,j,p,total_wt=0,total_tat=0,index,temp_p,temp_bt;
	float avg_wt=0,avg_tat=0;
	printf("\n Enter no. of processes: ");
	scanf("%d",&p);
	printf("Enter Burst Time of each process:\n");

	for(i=0;i<p;i++)
	{
		A[i][0]=i+1;
		printf("\nP%d: ",A[i][0]);
		scanf("%d",&A[i][1]);
	}

	for(i=0;i<p;i++) //shorting shortest job first
	{
		index=i;
		for(j=i+1;j<p;j++)
			if(A[j][1]<A[index][1])
				index=j;
	
		temp_p=A[i][1];
		A[i][1]=A[index][1];
		A[index][1]=temp_p;
		
		temp_bt=A[i][0];
		A[i][0]=A[index][0];
		A[index][0]=temp_bt;
	}
	A[0][2]=0; //initializing waiting time of first process to 0
	for(i=0;i<p;i++) //shorting shortest job first
	{
		A[i][2]=0;
		for(j=0;j<i;j++)
			A[i][2]+=A[j][1];
		total_wt+=A[i][2];
	}
	avg_wt=(float)total_wt/p;
	printf("\nP%d BT WT TAT");
	for(i=0;i<p;i++)
	{
		A[i][3]=A[i][1]+A[i][2];
		total_tat+=A[i][3];
		printf("\nP%d  %d  %d  %d",A[i][0],A[i][1],A[i][2],A[i][3]);
	}
	avg_tat=(float)total_tat/p;
	printf("\n Average Waiting time is: %2f",avg_wt);
	printf("\n Average Turn Around time is: %2f",avg_tat);
}