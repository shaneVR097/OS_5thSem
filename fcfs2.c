#include<stdio.h>
int main()
{
	int prnm[10][10];
	int at[10],bt[10],st[10],ft[10],tat[10],wt[10];
	int total_wt=0,total_tat=0;
	int p,i;
	
	printf("\n Enter no. of processes: ");
	scanf("%d",&p);
	
	for(i=0;i<p;i++)
	{
		printf("\nEnter Process name for process %d: ",i+1);
		scanf("%s",&prnm[i]);
		printf("\nEnter Arrival Time and Burst time for process %d: ",i+1);
		scanf("%d %d",&at[i],&bt[i]);
	}
	
	for(i=0;i<p;i++)
	{
		if(i==0){
			st[i]=at[i];
		}
		else {
			st[i]=ft[i-1];
		}
		
		wt[i]=st[i]-at[i];
		ft[i]=st[i]+bt[i];
		tat[i]=ft[i]-at[i];
	}
	
	printf("\nProcessName  ArrivalTime  BurstTime  StartTime  TurnAroundTime  FinishTime");
    for (i=0; i<p; i++) 
	{
        printf("\n%s\t\t%6d\t\t%6d\t%6d\t\t%6d\t\t%6d", prnm[i], at[i], bt[i], st[i], tat[i], ft[i]);
        total_wt += wt[i];
        total_tat += tat[i];
    }

    printf("\nAverage Waiting Time: %.2f", (float)total_wt/p);
    printf("\nAverage Turnaround Time: %.2f\n", (float)total_tat /p);
}