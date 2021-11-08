resp=`curl -X POST http://localhost:5000/api/login -H 'Content-Type: application/json'   -d '{"username":"admin","password":"admin"}'`

token=`echo $resp | jq -r .access_token`

echo $token

curl http://localhost:5000/api/test -H "Authorization: Bearer $token"
