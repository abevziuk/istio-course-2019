# No auth header:
## Request
```
curl --request GET \
  --url http://35.224.195.150/frontend-catalog/api/v1/dashboard \
  --header 'cache-control: no-cache'
```
## Response:
```
Origin authentication failed.
```

# With auth header
## Request
```
curl --request GET \
  --url http://35.224.195.150/frontend-catalog/api/v1/dashboard \
  --header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6Ik5rWkVPVEJETkRrNU1qQkRRVFUzUWpRMU9FTkJPVEU1TURaQ01ESkVNRFUwUkVFM01UaEZNQSJ9.eyJpc3MiOiJodHRwczovL2FiZXZ6aXVrLmV1LmF1dGgwLmNvbS8iLCJzdWIiOiJpMzlqNGhPZVNqenl3NnBJbkVpRFFHUmVocTlGb09OekBjbGllbnRzIiwiYXVkIjoiaHR0cDovLzM1LjIyNC4xOTUuMTUwLyIsImlhdCI6MTU3MjQ1Njk1MCwiZXhwIjoxNTcyNTQzMzUwLCJhenAiOiJpMzlqNGhPZVNqenl3NnBJbkVpRFFHUmVocTlGb09OeiIsImd0eSI6ImNsaWVudC1jcmVkZW50aWFscyJ9.hlh-ugNu5oSvwF7GYYmRrdwP2XgirEQL0D0hXpnc_gcVJ8GG7U2VUYcvQAtZwwCRHUb-SLlZ14yxKP8R0Ln8aseG1Uo-oqJnxXBwlPqio8e-wL2L9LGzw0rEw4ks2OWzBuigGiWuIzWUMRdv_WqMbrgFrf1C4OI9NPxeq4trJfL48JDvA8qcP42rlxEeO_ykaRc_XTXWn14JGFo8rP5iRCJ6llW5nHadbFPIxxOxiD3cLZ9JlgieP6vhj7jfDUlSv6LYdxHMX1pD4NHO_T6Sdmj7TCnOUWPN-NrM4FFIbgOgIudEJlXEWVf6N-ZJK6IGedMm4srPukI1qDLV_b9y6Q' \
  --header 'cache-control: no-cache'
```

## Response:
```
{"authors":[{"id":1,"firstName":"Loreth Anne","lastName":"White"},{"id":2,"firstName":"Lisa","lastName":"Regan"},{"id":3,"firstName":"Ty","lastName":"Patterson"}],"developer":"Alex Bevziuk","books":{"books":[{"id":1,"title":"Semiosis: A Novel","pages":326,"authorId":1},{"id":2,"title":"The Loosening Skin","pages":132,"authorId":1},{"id":3,"title":"Ninefox Gambit","pages":384,"authorId":2},{"id":4,"title":"Raven Stratagem","pages":400,"authorId":3},{"id":5,"title":"Revenant Gun","pages":466,"authorId":3}],"version":2}}
```

[Used material](https://programmaticponderings.com/2019/01/06/securing-kubernetes-withistio-end-user-authentication-using-json-web-tokens-jwt/)