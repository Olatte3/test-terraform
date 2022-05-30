import json
import http.client
import datetime

date_time_str = datetime.datetime.now()
d = str(date_time_str)
print(d[0:10])

conn = http.client.HTTPSConnection("search-terraform-domain-wlzzymuuza7spwbhoh7e7baxqm.ap-northeast-2.es.amazonaws.com")
payload = ''
headers = {
  'Authorization': 'Basic YWRtaW46UXdlcjEyMzQq'
}
conn.request("GET", "/location-index-"+d[0:10]+"/_search?q=truckerId:000000&sort=@timestamp_utc:desc&size=1", payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode("utf-8"))

def lambda_handler(event, context):
    # TODO implement
    return {
        'statusCode': 200,
        'body': json.dumps(data.decode("utf-8"))
    }