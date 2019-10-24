'''
CarouselContainerJsonDict
For items on sale
'''
from liff_api import *
# initiate token
secretFileContentJson=json.load(open("../line_secret_key",'r'))
liff_init(secretFileContentJson.get("channel_access_token"))
administratorList = (json.load(open("../administrator_list",'r'))).get("administrator_user_id")

def member_centre_flex(userID, server_url, qrcodeurl, user_id, username):
    liffUrl = "https://%s/usercentre/%s"%(server_url, userID)
    liffID = (liff_add(liffUrl, "compact"))['liffId']
    
    ADMINISTRATOR = ''
    if userID in administratorList:
        ADMINISTRATOR = """
            ,{
              "type": "button",
              "action": {
                "type": "uri",
                "label": "Administrator",
                "uri": "https://%s/administrator"
              },
              "color": "#905C44",
              "margin": "xxl",
              "style": "primary"
            }
        """%(server_url)
    
    tmp = """
        {

            "type": "carousel",
            "contents": [ 
                {
                    "type": "bubble",
                    "header": {
                        "type": "box",
                        "layout": "vertical",
                        "flex": 0,
                        "contents": [
                            {
                                "type": "text",
                                "text": "ＭＥＭＢＥＲ ＣＥＮＴＲＥ",
                                "size": "lg",
                                "align": "center",
                                "gravity": "center",
                                "weight": "bold",
                                "color": "#000000"
                            }
                        ]
                    },
                    "hero": {
                        "type": "image",
                        "url": "%s",
                        "size": "full",
                        "aspectRatio": "20:13",
                        "aspectMode": "cover",
                        "action": {
                            "type": "uri",
                            "label": "Action",
                            "uri": "https://linecorp.com"
                        }
                    },
                    "body": {
                        "type": "box",
                        "layout": "vertical",
                        "spacing": "md",
                        "action": {
                            "type": "uri",
                            "label": "Action",
                            "uri": "https://linecorp.com"
                        },
                        "contents": [
                            {
                                "type": "text",
                                "text": "User ID",
                                "size": "lg",
                                "weight": "bold",
                                "color": "#000000"
                            },
                            {
                                "type": "text",
                                "text": "%s",
                                "size": "md"
                            },
                            {
                                "type": "text",
                                "text": "User Name",
                                "size": "lg",
                                "weight": "bold",
                                "color": "#000000",
                                "wrap": true
                            },
                            {
                                "type": "text",
                                "text": "%s",
                                "align": "start"
                            }
                        ]
                    },
                    "footer": {
                        "type": "box",
                        "layout": "vertical",
                        "contents": [
                            {
                                "type": "spacer",
                                "size": "xxl"
                            },
                            {
                                "type": "button",
                                "action": {
                                    "type": "uri",
                                    "label": "Modify",
                                    "uri": "line://app/%s"
                                },
                                "color": "#905C44",
                                "style": "primary"
                            }%s
                        ]
                    }
                }
            ]
    }"""%(qrcodeurl, user_id, username, liffID, ADMINISTRATOR)
    return tmp
    
    

tmp = """
    {

        "type": "carousel",
        "contents": [ 
            {
                "type": "bubble",
                "header": {
                    "type": "box",
                    "layout": "vertical",
                    "flex": 0,
                    "contents": [
                        {
                            "type": "text",
                            "text": "ＭＥＭＢＥＲ ＣＥＮＴＲＥ",
                            "size": "lg",
                            "align": "center",
                            "gravity": "center",
                            "weight": "bold",
                            "color": "#000000"
                        }
                    ]
                },
                "hero": {
                    "type": "image",
                    "url": "%s",
                    "size": "full",
                    "aspectRatio": "20:13",
                    "aspectMode": "cover",
                    "action": {
                        "type": "uri",
                        "label": "Action",
                        "uri": "https://linecorp.com"
                    }
                },
                "body": {
                    "type": "box",
                    "layout": "vertical",
                    "spacing": "md",
                    "action": {
                        "type": "uri",
                        "label": "Action",
                        "uri": "https://linecorp.com"
                    },
                    "contents": [
                        {
                            "type": "text",
                            "text": "User ID",
                            "size": "lg",
                            "weight": "bold",
                            "color": "#000000"
                        },
                        {
                            "type": "text",
                            "text": "%s",
                            "size": "md"
                        },
                        {
                            "type": "text",
                            "text": "User Name",
                            "size": "lg",
                            "weight": "bold",
                            "color": "#000000",
                            "wrap": true
                        },
                        {
                            "type": "text",
                            "text": "%s",
                            "align": "start"
                        }
                    ]
                },
                "footer": {
                    "type": "box",
                    "layout": "vertical",
                    "contents": [
                        {
                            "type": "spacer",
                            "size": "xxl"
                        },
                        {
                            "type": "button",
                            "action": {
                                "type": "message",
                                "label": "Modify",
                                "text": "[::text:]Modify"
                            },
                            "color": "#905C44",
                            "style": "primary"
                        }
                    ]
                }
            }
        ]
}"""
