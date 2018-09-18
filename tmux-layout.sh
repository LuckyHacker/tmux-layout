#!/bin/bash                                                                     

SESSIONNAME=$1
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
    then
        tmux new-session -d -s $SESSIONNAME
        tmux split-window -h
        tmux send-keys "htop" KPEnter
        tmux split-window -v
fi

tmux attach -t $SESSIONNAME
