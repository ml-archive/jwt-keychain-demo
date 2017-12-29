# JWT demo
[![Swift Version](https://img.shields.io/badge/Swift-3-brightgreen.svg)](http://swift.org)
[![Vapor Version](https://img.shields.io/badge/Vapor-1-F6CBCA.svg)](http://vapor.codes)
[![Circle CI](https://circleci.com/gh/nodes-vapor/jwt-keychain-demo/tree/master.svg?style=shield)](https://circleci.com/gh/nodes-vapor/jwt-keychain-demo)
[![codebeat badge](https://codebeat.co/badges/4654d3cd-633f-450c-8d19-91700b66fffe)](https://codebeat.co/projects/github-com-nodes-vapor-jwt-keychain-demo-master)
[![Readme Score](http://readme-score-api.herokuapp.com/score.svg?url=https://github.com/nodes-vapor/jwt-keychain-demo)](http://clayallsopp.github.io/readme-score?url=https://github.com/nodes-vapor/jwt-keychain-demo)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/nodes-vapor/jwt-keychain-demo/master/LICENSE)


Simple demo project of a keychain using JWT

https://github.com/nodes-vapor/jwt-keychain

## APIs

### Create user
CURL
```
curl -X POST -H "Content-Type: multipart/form-data" -F "name=Casper" -F "email=cr@nodes.dk" -F "password=TestTest123" "http://0.0.0.0:8080/api/users"
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
curl -X POST -H "Content-Type: multipart/form-data" -F "email=cr@nodes.dk" -F "password=TestTest123" "0.0.0.0:8080/api/users/login"
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
curl -X GET -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE0ODQyNTUwNDMsInN1YiI6Im51bWJlcigxKSJ9.KPCnzpGInmuOoByGoIJ/mfiAmnQjgpVYQLmZo6DYjI4=" "http://0.0.0.0:8080/api/users/me"
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
curl -X PATCH -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE0ODQyNTUxNTQsInN1YiI6Im51bWJlcigxKSJ9./62Xg5sZvVIbM12wvzhmjins35x9+kZqyvDWlKk/j1c=" -H "Content-Type: multipart/form-data" -F "email=cr@nodes.dk" -F "password=TestTest123" "http://0.0.0.0:8080/api/users/token/regenerate"
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
```


## 🏆 Credits

This package is developed and maintained by the Vapor team at [Nodes](https://www.nodesagency.com).
The package owner for this project is [Siemen](https://github.com/siemensikkema/).


## 📄 License

This package is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT)
