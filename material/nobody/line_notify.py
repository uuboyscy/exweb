import requests 
 
def lineNotify(token, msg):
    url = "https://notify-api.line.me/api/notify"
    headers = {
        "Authorization": "Bearer " + token,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    payload = {'message': msg}
    r = requests.post(url, headers=headers, params=payload)
    return r.status_code

if __name__ == "__main__":
    notify_token = (json.load(open("../line_secret_key",'r'))).get("notify_token")
    notify_msg = "Notify from Python \nHave a nice day"
    lineNotify(notify_token, notify_msg)
