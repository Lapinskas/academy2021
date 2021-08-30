#!/bin/bash

 curl -X DELETE http://localhost:8000/products/5 \
 -H "Accept: application/json" \
 -H "Content-Type: application/json"
