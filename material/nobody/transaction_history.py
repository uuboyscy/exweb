import datetime
# 製作交易紀錄的Liff
from liff_api import *
# initiate token
secretFileContentJson=json.load(open("../line_secret_key",'r'))
liff_init(secretFileContentJson.get("channel_access_token"))

def transaction_flex(userID, server_url, timestamp_list):
    single_flex_bubble = """"""
    if len(timestamp_list) == 0:
        single_flex_bubble = """{
                    "type": "text",
                    "text": "No Transaction.",
                    "margin": "md",
                    "size": "lg",
                    "align": "center"
                }"""
    else:
        for i in range(0, len(timestamp_list)):
            liffUrl = "https://%s/transaction/%s/%s"%(server_url, userID, str(timestamp_list[i]['datetime']).replace(' ', '%20'))
            liffID = (liff_add(liffUrl, "tall"))['liffId']
            single_flex_bubble += """{
                        "type": "text",
                        "text": "%s",
                        "margin": "md",
                        "size": "lg",
                        "align": "center",
                        "action": {
                            "type": "uri",
                            "uri": "line://app/%s"
                          }
                    }""" % (timestamp_list[i]['datetime'], liffID)
            if i < len(timestamp_list) - 1:
                single_flex_bubble += ""","""
    flex_bubble = """
    {

        "type": "bubble",
        "direction": "ltr",
        "header": {
            "type": "box",
            "layout": "vertical",
            "contents": [
                {
                    "type": "text",
                    "text": "ＴＲＡＮＳＡＣＴＩＯＮ  ＨＩＳＴＯＲＹ",
                    "size": "xs",
                    "align": "center",
                    "weight": "bold"
                }
            ]
        },
          "hero": {
          "type": "image",
          "url": "https://%s/food/logo.png",
          "size": "full",
          "aspectRatio": "1.51:1",
          "aspectMode": "fit"
    },
        "body": {
            "type": "box",
            "layout": "vertical",
            "contents": [
                %s
            ]
        }

    }
    """ % (server_url, single_flex_bubble)

    return flex_bubble

def transaction_now_flex(userID, server_url):
    single_flex_bubble = """"""
    liffUrl = "https://%s/transaction/now/%s"%(server_url, userID)
    liffID = (liff_add(liffUrl, "tall"))['liffId']
    single_flex_bubble += """
                        {
                            "type": "button",
                            "action": {
                                "type": "uri",
                                "label": "Press to check your bill",
                                "uri": "line://app/%s"
                            },
                            "color": "#905C44",
                            "style": "primary"
                        }""" % (liffID)
    flex_bubble = """
    {
        "type": "bubble",
        "direction": "ltr",
        "header": {
            "type": "box",
            "layout": "vertical",
            "contents": [
                {
                    "type": "text",
                    "text": "ＴＲＡＮＳＡＣＴＩＯＮ  ＳＴＡＴＵＳ",
                    "size": "xs",
                    "align": "center",
                    "weight": "bold"
                }
            ]
        },
          "hero": {
          "type": "image",
          "url": "https://%s/food/logo.png",
          "size": "full",
          "aspectRatio": "1.51:1",
          "aspectMode": "fit"
    },
        "body": {
            "type": "box",
            "layout": "vertical",
            "contents": [
                %s
            ]
        }

    }
    """ % (server_url, single_flex_bubble)

    return flex_bubble

def tryLiff():
    single_flex_bubble = """"""
    liffUrl = "https://google.com"
    liffID = (liff_add(liffUrl, "compact"))['liffId']
    single_flex_bubble += """{
                "type": "text",
                "text": "Check the Liff",
                "margin": "md",
                "size": "lg",
                "align": "center",
                "action": {
                    "type": "uri",
                    "uri": "line://app/%s"
                  }
            }""" % (liffID)
    flex_bubble = """
    {
        "type": "bubble",
        "direction": "ltr",
        "header": {
            "type": "box",
            "layout": "vertical",
            "contents": [
                {
                    "type": "text",
                    "text": "ＴＥＳＴ ＴＨＥ ＬＩＦＦ",
                    "size": "xs",
                    "align": "center",
                    "weight": "bold"
                }
            ]
        },
        "body": {
            "type": "box",
            "layout": "vertical",
            "contents": [
                %s
            ]
        }

    }
    """ % (single_flex_bubble)

    return flex_bubble
    
if __name__ == "__main__":
    server_url = 'f9439967.ngrok.io'
    userID = 'U7173dc299af6ac3fe7697a75c2a280ad'
    data = [{'datetime': datetime.datetime(2019, 2, 5, 2, 30, 42)},
            {'datetime': datetime.datetime(2019, 2, 6, 7, 40, 42)}]
    print(transaction_flex(userID, server_url, data))

