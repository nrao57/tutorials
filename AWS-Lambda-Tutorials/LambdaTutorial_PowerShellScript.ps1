#Type Path Where Your Go Code is located
$sourcecodepath = ""
#Type Path Where Your Go file is located
$sourcecodefile = ""
#Type Path Where Your Compiled Main executible is located
$sourcecompiledpath = "G:\Documents\Youtube\LambdaTutorial\main"
#Type Path Where Your LambdaBuilderTool is located
$lambdabuilderpath = ""
#Type the name of your lambda function
#Make sure your aws is configured with the correct region!
$awslambdafunctionname = ""


cd $sourcecodepath
$env:GOOS = "linux"
$env:GOARCH = "amd64"
go build -o main $sourcecodefile
cd "lambdabuilderpath"
build-lambda-zip.exe -o main.zip $sourcecompiledpath
aws lambda update-function-code --function-name $awslambdafunctionname --zip-file fileb://main.zip

