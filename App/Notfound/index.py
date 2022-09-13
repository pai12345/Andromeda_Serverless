import json


def lambda_handler(event, context):
    print({"event": event, "context": context}, {'statusCode': 200, 'body': json.dumps(
        '404 - Not Found'), 'headers': {"Content-Type": "application/json"}})
    return {
        'statusCode': 200,
        'body': json.dumps('404 - Not Found'),
        'headers': {"Content-Type": "application/json"}
    }
