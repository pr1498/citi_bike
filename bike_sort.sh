#! /bin/bash
awk -F "\"*,\"*" '{print $5}' 201601-citibike-tripdata.csv > station_list.txt
awk -F "\"*,\"*" '{print $9}' 201601-citibike-tripdata.csv >> station_list.txt
sort station_list.txt > sorted_list_first.txt
uniq -c sorted_list_first.txt > sorted_list.txt
sort -n -r sorted_list.txt > sorted_list_final.txt
 

