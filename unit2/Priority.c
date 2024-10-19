#include <stdio.h>
struct Process {
    int id;
    int burst_time;
    int waiting_time;
    int turnaround_time;
    int priority;
};
void sortProcesses(struct Process processes[], int n) {
    struct Process temp;
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (processes[j].priority > processes[j + 1].priority) {
                temp = processes[j];
                processes[j] = processes[j + 1];
                processes[j + 1] = temp;
            }
        }
    }
}
void calculateTimes(struct Process processes[], int n) {
    processes[0].waiting_time = 0;
    for (int i = 1; i < n; i++) {
        processes[i].waiting_time = processes[i - 1].waiting_time + processes[i - 1].burst_time;
        processes[i].turnaround_time = processes[i].waiting_time + processes[i].burst_time;
    }
    processes[0].turnaround_time = processes[0].burst_time;
}
void displayResults(struct Process processes[], int n) {
    printf("Process\tBurst Time\tPriority\tWaiting Time\tTurnaround Time\n");
    for (int i = 0; i < n; i++) {
        printf("P[%d]\t%d\t\t%d\t\t%d\t\t%d\n", processes[i].id, processes[i].burst_time,
               processes[i].priority, processes[i].waiting_time, processes[i].turnaround_time);
    }
}
int main() {
    int n;
    printf("Enter the number of processes: ");
    scanf("%d", &n);
    struct Process processes[n];
    for (int i = 0; i < n; i++) {
        processes[i].id = i; 
        printf("Enter burst time for process P[%d]: ", i);
        scanf("%d", &processes[i].burst_time);
        printf("Enter priority for process P[%d] (lower number = higher priority): ", i);
        scanf("%d", &processes[i].priority);
    }
    sortProcesses(processes, n);
    calculateTimes(processes, n);
    displayResults(processes, n);
    return 0;
}
