# Powershell Code for API Gateway
aws apigateway create-rest-api --name TestAPI --description "Test API for Youtube Video"
aws apigateway get-resources --rest-api-id "milyu87qk5"
aws apigateway create-resource --rest-api-id "milyu87qk5" --parent-id "8abc5nneel" --path-part "new-resource"
aws apigateway put-method --rest-api-id "milyu87qk5" --resource-id "za4bto" --http-method "GET" --authorization-type "NONE"
aws apigateway put-integration --rest-api-id "milyu87qk5" --resource-id "za4bto" --http-method GET --type MOCK 
aws apigateway create-deployment --rest-api-id "milyu87qk5" --stage-name "dev" 