#include <stdio.h>
struct Process {
    int id;
    int burst_time;
    int remaining_time;
};
void roundRobin(struct Process processes[], int n, int quantum) {
    int time = 0;
    int done;
    do {
        done = 1;
    for (int i = 0; i < n; i++) {
            if (processes[i].remaining_time > 0) {
                done = 0;
                if (processes[i].remaining_time > quantum) {
                    time += quantum;
                    processes[i].remaining_time -= quantum; 
                } else {
                    time += processes[i].remaining_time; 
                    processes[i].remaining_time = 0; 
                    printf("Process P[%d] completed at time %d\n", processes[i].id, time);
                }
            }
        }
    } while (!done);
}
int main()
 {
    int n, quantum;
    printf("Enter the number of processes: ");
    scanf("%d", &n);
    struct Process processes[n];
    for (int i = 0; i < n; i++) {
        processes[i].id = i;
        printf("Enter burst time for process P[%d]: ", i);
        scanf("%d", &processes[i].burst_time);
        processes[i].remaining_time = processes[i].burst_time;
    }
    printf("Enter time quantum: ");
    scanf("%d", &quantum);
    roundRobin(processes, n, quantum);
    return 0;
}
