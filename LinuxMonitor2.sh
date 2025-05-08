#!/bin/bash

show_cpu() {
    echo "----- CPU Usage -----"
    top -bn1 | grep "Cpu(s)" 
    echo ""
}

show_memory() {
    echo "----- Memory Usage -----"
    free -h
    echo ""
}

show_disk() {
    echo "----- Disk Usage -----"
    df -h 
    echo ""
}

show_processes() {
    echo "----- Top Running Processes -----"
     ps -eo %cpu, cmd,%mem,pid --sort=-%cpu
    echo ""
}

clear

echo "======================="
echo "  Linux System Monitor"
echo "======================="
echo ""

show_cpu
show_memory
show_disk
show_processes