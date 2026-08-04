# API Reference
## Overview
This document describes the API endpoints.
## Endpoints
### GET /api/users
Get all users. 
**Response:**
```json
{
"users": [
{"id": 1, "name": "John"},
{"id": 2, "name": "Jane"}
]
}
```
### POST /api/users
Create a new user. 
**Request:**
```json
{
"name": "Alice",
"email": "aclice@example.com"
}
```
