#!/bin/bash

echo "======================="
echo "  Linux Monitor"
echo "======================="
echo ""

    top -bn1 | grep "Cpu(s)" 
    echo ""

    free -h
    echo ""

    df -h 
    echo ""

    ps -eo %cpu, cmd,%mem,pid --sort=-%cpu
    echo ""