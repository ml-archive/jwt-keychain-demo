# JWT demo
https://github.com/nodes-vapor/jwt-keychain


## APIs

### Create user
CURL
```
curl -X POST -H "Content-Type: multipart/form-data" -F "name=Casper" -F "email=cr@nodes.dk" -F "password=TestTest123" "http://0.0.0.0:8080/api/v1/users"
```
Response
```json
{
  "created_at": "2017-01-12T20:35:38+0100",
  "deleted_at": null,
  "email": "cr@nodes.dk",
  "id": 1,
  "name": "Casper",
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE0ODQyNTM3MzIsInN1YiI6Im51bWJlcigxKSJ9.06X3LOa20U/Ezpo4qdKbFHd5xjqBBtM+Pfkjob+Fyqk=",
  "updated_at": "2017-01-12T20:35:38+0100"
}
```

### Login
CURL
```
curl -X POST -H "Content-Type: multipart/form-data" -F "email=cr@nodes.dk" -F "password=TestTest123" "0.0.0.0:8080/api/v1/users/login"
```
Response
```json
{
  "created_at": "2017-01-12T20:35:38+0100",
  "deleted_at": null,
  "email": "cr@nodes.dk",
  "id": 1,
  "name": "Casper",
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE0ODQyNTM3MzIsInN1YiI6Im51bWJlcigxKSJ9.06X3LOa20U/Ezpo4qdKbFHd5xjqBBtM+Pfkjob+Fyqk=",
  "updated_at": "2017-01-12T20:35:38+0100"
}
```

### ME
CURL
```swift
curl -X GET -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE0ODQyNTUwNDMsInN1YiI6Im51bWJlcigxKSJ9.KPCnzpGInmuOoByGoIJ/mfiAmnQjgpVYQLmZo6DYjI4=" "http://0.0.0.0:8080/api/v1/users/me"
```

Response
```json
{
  "created_at": "2017-01-12T20:35:38+0100",
  "deleted_at": null,
  "email": "cr@nodes.dk",
  "id": 1,
  "name": "Casper",
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE0ODQyNTM3MzIsInN1YiI6Im51bWJlcigxKSJ9.06X3LOa20U/Ezpo4qdKbFHd5xjqBBtM+Pfkjob+Fyqk=",
  "updated_at": "2017-01-12T20:35:38+0100"
}
```

### Regenerate token
CURL
```
curl -X PATCH -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE0ODQyNTUxNTQsInN1YiI6Im51bWJlcigxKSJ9./62Xg5sZvVIbM12wvzhmjins35x9+kZqyvDWlKk/j1c=" -H "Content-Type: multipart/form-data" -F "email=cr@nodes.dk" -F "password=TestTest123" "http://0.0.0.0:8080/api/v1/users/token/regenerate"
```

Response
```json
{
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE0ODQyNTUxNjUsInN1YiI6Im51bWJlcigxKSJ9.MBshiGEcOzonAEvxbf5OFDOU2lpXMBICEVpjtj7bjVQ="
}
```

### Logout
CURL
```
curl -X GET -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE0ODQyNTUxNTQsInN1YiI6Im51bWJlcigxKSJ9./62Xg5sZvVIbM12wvzhmjins35x9+kZqyvDWlKk/j1c=" "http://0.0.0.0:8080/api/v1/users/logout"
```

Response
```json
{
  "success": true
}
