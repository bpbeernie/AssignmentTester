#!/bin/bash

printf "======================================================"
printf "Testing GET"

curl -X GET \
  "$TESTURL/api/tasks" \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json'

printf "======================================================"
printf "Testing POST"

curl -X POST \
  "$TESTURL/api/tasks" \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json' \
  -d '    {
        "title": "Commission Summary Report",
        "description": "Calculate commissions over the past month",
        "startDate": "2020-03-01T00:00:00",
        "endDate": "2020-04-01T00:00:00",
        "priority": 1,
        "category": "top",
        "status": 200
    }'

printf "======================================================"
printf "Testing GET Again!"

curl -X GET \
  "$TESTURL/api/tasks" \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/json'