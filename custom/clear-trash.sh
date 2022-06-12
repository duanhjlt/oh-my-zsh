#!/bin/bash

read -p "clear sure?[Input 'y' or 'Y' to confirm. && Input 'n' to cancel.]" confirm
[ $confirm == 'y' ] || [ $confirm == 'Y' ]  && rm -rf ~/.trash/*
