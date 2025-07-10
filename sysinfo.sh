#!/bin/sh

echo "System Information:" 
echo "*---------------------*"
echo "Current User: $(whoami)"
echo "Machine Name: $(hostname)"
echo "Operating System: $(uname -s)"
echo "CPU cores: $(lscpu | grep '^CPU(s):'| awk '{print $2}')"
echo "RAM specifics: $(free -h | grep '^Mem:')"
echo "Total RAM: $(free -h | grep '^Mem:' | awk '{print $2}')GB"
echo "Used RAM: $(free -h | grep '^Mem:' | awk '{print $3}')GB"
echo "Available RAM: $(free -h | grep '^Mem:' | awk '{print $4}')GB"
echo "*---------------------*"