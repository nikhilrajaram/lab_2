#!/bin/bash
# Author: Nikhil Rajaram
# Date: 1/31/2019

grep $1 $2

echo "Number of phone numbers in $2"
grep "[0-9][0-9][0-9]\-[0-9][0-9][0-9]\-[0-9][0-9][0-9][0-9]" $2 | wc -l

echo "Number of emails in $2"
grep "[a-zA-Z]*@[a-zA-Z]*\.[a-zA-Z][a-zA-Z][a-zA-Z]" $2 | wc -l

echo "All phone numbers with 303 area code in $2 now stored in phone_results.txt"
grep "303\-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]" $2 > phone_results.txt

echo "All emails from geocities.com in $2 now stored in phone_results.txt"
grep "@geocities.com" $2 > email_results.txt

echo "Output of grep $1 $2 now stored in command_results.txt"
grep $1 $2 > command_results.txt
