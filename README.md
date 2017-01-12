# Basic Template

## APIs

### Create user
CURL
```
curl -X POST  -H "Content-Type: application/x-www-form-urlencoded" -d 'name=Casper&email=cr@nodes.dk&password=TestTest123' "http://0.0.0.0:8080/api/v1/users"
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
Curl
```
curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -d 'email=cr@nodes.dk&password=TestTest123' "0.0.0.0:8080/api/v1/users/login"
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


