#Creating Python Deployment Package for AWS Lambda
import json
from bs4 import BeautifulSoup

print('Loading function')


def respond(err, res=None):
    return {
        'statusCode': '400' if err else '200',
        'body': err if err else json.dumps(res),
        'headers': {
            'Content-Type': 'application/json',
        },
    }


def lambda_handler(event, context):
    html_doc = """
		<html><head><title>The Dormouse's story</title></head>
		<body>
		<p class="title"><b>The Dormouse's story</b></p>

		<p class="story">Once upon a time there were three little sisters; and their names were
		<a href="http://example.com/elsie" class="sister" id="link1">Elsie</a>,
		<a href="http://example.com/lacie" class="sister" id="link2">Lacie</a> and
		<a href="http://example.com/tillie" class="sister" id="link3">Tillie</a>;
		and they lived at the bottom of a well.</p>

		<p class="story">...</p>
		"""

    soup = BeautifulSoup(html_doc, 'html.parser')
	
	
    return respond(None, soup.get_text())