#!/bin/bash
echo -e "\e[1;33m Employee names \n================"
jq '.[][] | .firstName'  employees.json
echo -e "\n\e[1;33m Employees with contacts \n=============================="
jq '.[][] | .firstName, .phoneNumbers'  employees.json
echo -e "\n\e[1;33m Employee with mobile number \n=============================="
jq '.[][] | .firstName, if .phoneNumbers[0].type=="home" then del(.phoneNumbers[0]) | .phoneNumbers[] else .phoneNumbers[] end' employees.json 

