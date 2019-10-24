import datetime

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
            single_flex_bubble += """{
                        "type": "text",
                        "text": "%s",
                        "margin": "md",
                        "size": "lg",
                        "align": "center",
                        "action": {
                            "type": "uri",
                            "uri": "line://app/1640837947-2LoJj4BG"
                          }
                    }"""%(timestamp_list[i]['datetime'])
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
        "body": {
            "type": "box",
            "layout": "vertical",
            "contents": [
                %s
            ]
        }

    }
    """%(single_flex_bubble)
    
    return flex_bubble

if __name__ == "__main__":
    data = [{'datetime': datetime.datetime(2019, 2, 5, 2, 30, 42)},
    {'datetime': datetime.datetime(2019, 2, 6, 7, 40, 42)}]
    print(transaction_flex(data))
