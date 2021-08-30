#!/bin/bash

 curl -X PUT http://localhost:8000/products/1 \
 -H "Accept: application/json" \
 -H "Content-Type: application/json" \
 -H "Cookie: XDEBUG_SESSION=XDEBUG_ECLIPSE" \
 -d '{"name": "API test", "description": "Update via API", "price": "100.00"}'
