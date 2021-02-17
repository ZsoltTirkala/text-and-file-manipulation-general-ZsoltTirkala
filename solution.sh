#!/bin/bash
echo -e "\e[1;33m Employee names \n================"
jq '.[][] | .firstName'  employees.json
echo -e "\n\e[1;33m Employee names with contacts \n=============================="
jq '.[][] | .firstName, .phoneNumbers'  employees.json
