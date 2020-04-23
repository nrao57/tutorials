//Lambda Function Go Code
package main
import "github.com/aws/aws-lambda-go/lambda"
import "github.com/aws/aws-lambda-go/events"
import "errors"

func main(){
	lambda.Start(HandleRequest)
}

func HandleRequest(request events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error){
	if request.HTTPMethod == "GET"{
		var stringResponse string = "Yay a successful Response!!"
		ApiResponse := events.APIGatewayProxyResponse{Body: stringResponse, StatusCode: 200}
		return ApiResponse, nil
	} else {
		err := errors.New("Method Not Allowed!")
		ApiResponse := events.APIGatewayProxyResponse{Body: "Method Not OK", StatusCode: 502}
		return ApiResponse, err
	}
}