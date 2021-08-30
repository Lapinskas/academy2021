#!/bin/bash

 curl -X POST http://localhost:8000/products \
 -H "Accept: application/json" \
 -H "Content-Type: application/json" \
 -d '{"name": "API test", "description": "Just a test", "price": "123.45"}'
