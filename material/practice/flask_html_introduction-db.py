#!/usr/bin/env python
# coding: utf-8

# In[1]:


#製作flask環境
from weatherAPI import WeatherAPI
from flask import Flask, request, jsonify, make_response
import pymysql
import time
import json
import base64
import random

# 將QRcode上傳MySQL資料庫
conn = pymysql.connect(
    host = "35.221.150.133",
    port = int(3306),user = "uuboyscy",
    password = "howdoyouturnthison",
    db = "TESTDB",
    charset='utf8', 
    cursorclass=pymysql.cursors.DictCursor 
    )
cursor = conn.cursor()
print('Connected successfully!')

# In[2]:


#呼叫出Flask
app = Flask(__name__)
app.config['JSON_AS_ASCII'] = False
wth = WeatherAPI()


# In[3]:


#製作一個接口，將server內部的程式做區隔，接口位置在“/hello”
#將變數加在url中
@app.route('/hello/<name>')
#做一個函式是當接口被拜訪時會被啟動
def hello(name):
    #做一個變數
    text = "Hello %s!!" % (name)
    #回傳函式的結果給使用者
    return text


# In[4]:


#將變數加在url之後，要再特別的擷取出變數
@app.route('/hello_get')
def add():
    name = request.args.get('name')
    #print(name)
    age = request.args.get('age')
    #print(age)
    if name == None:
        text = "Who are you?"
    elif age == None:
        text = "Hello %s!!" % (name)
    else:
        text = "Hello %s!! You are %s years old!!" % (name, age)
    outStr = """
    <html>
    <head>
    <title>Hello, World!</title>
    </head>
    <body>
    <div>
    %s
    </div>
    <!--
    123123123
    123123
    123
    -->
    </body>
    </html>
    """%(text)
    return outStr


# In[5]:


@app.route('/hello_post', methods=['GET'])
def getdata():
    outStr = """
    <!doctype html>
    <title>Hello, World!</title>
    <h1>Hello, your name is ?</h1>
    <p></p>
    <form action="/hello_post" method="post">
    <label>Name:</label>
    <input type="textbox" name="username">
    <input type="submit" value="Submit">
    </form>
    """
    #return render_template('text.html')
    return outStr


# In[6]:


@app.route('/hello_post', methods=['POST'])
def submit():
    outStr = """
    <!doctype html>
    <title>Hello, World!</title>
    <h1>Hello, your name is ?</h1>
    <p></p>
    <form action="/hello_post" method="post">
    <label>Name:</label>
    <input type="textbox" name="username">
    <input type="submit" value="Submit">
    </form>
    """
    name = request.form.get('username')
    
    outStr += """
    <h1>Hello %s !!</h1>
    """%(name)
    return outStr


# In[ ]:


@app.route('/weather', methods=['GET'])
def getWeather():
    outStr = """
    <!doctype html>
    <html>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <head>
<title>Hello, Weather !</title>
</head>
<body>
<h1>你好, 請輸入中文地名獲取天氣資訊 !</h1>
<p></p>
<form action="/weather" method="post">
 <label>Location:</label>
 <input type="textbox" name="location">
 <input type="submit" value="Submit">
</form>
</body>
</html>
    """
#     return str(wth.setTownID(location))
    return outStr


# In[ ]:


@app.route('/weather', methods=['POST'])
def showWeather():
    outStr = """
    <!doctype html>
    <html>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <head>
<title>Hello, Weather !</title>
</head>
<body>
<h1>Hello, 請輸入中文地名獲取天氣資訊 !</h1>
<p></p>
<form action="/weather" method="post">
 <label>Location:</label>
 <input type="textbox" name="location">
 <input type="submit" value="Submit">
</form>
    """
    loc = request.form.get('location')
    print(loc)
    wth.setTownID(loc)
    wth.getTownWeatherInformationDetail()
    outStr += """<h2>%s</h2><br>"""%(loc)
    outStr += """<img src="%s"><br>"""%(wth.img_url)
    outStr += """%s<br>"""%(wth.desc)
    outStr += """現在氣溫 %s 度<br>"""%(wth.temperature)
    outStr += """體感溫度 %s 度<br>"""%(wth.felt_air_temp)
    outStr += """濕度 %s ％<br>"""%(wth.humidity)
#     outStr += """降雨量 %s ％<br>"""%(wth.rainfall)    
    outStr += """日出時間 %s<br>"""%(wth.sunrise)
    outStr += """日落時間 %s<br>"""%(wth.sunset)
    outStr += """</body></html>"""
    
    return outStr


# In[ ]:


@app.route('/get_ip')
def get_ip():
    return jsonify({'ip' : request.remote_addr}), 200

'''

For homework

'''

@app.route('/homework', methods=['GET'])
def homework():
    classID = request.args.get('classID')
    studentID = request.args.get('studentID')
    outStr = """
    <!doctype html>
    <html>
        <head>
            <title>HOMEWORK</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        </head>
        <body>
        <script type="text/javascript">
            function ValidateValue(textbox) {
                var IllegalString = "[`~!#$^&*()=|{}':;',\\[\\].<>/?~！#￥……&*（）——|{}【】‘；：”“'。，、？]‘'";
                var textboxvalue = textbox.value;
                var index = textboxvalue.length - 1;
                var s = textbox.value.charAt(index);
                if (IllegalString.indexOf(s) >= 0) {
                s = textboxvalue.substring(0, index);
                textbox.value = s;
                }
            }
        </script>
        <div class="w3-animate-opacity">
    """
    if classID == None or studentID == None:
        outStr += """
        <div>
            <h1>你是誰？</h1>
        </div>
        """
    else:
        outStr += """
        <div>
        <form action="/homework_score?classID=%s&studentID=%s" method="post">
         <label>請輸入你的名字：</label>
         <input type="textbox" name="stname" onkeyup="ValidateValue(this)">
         <br><br>
         <label>Q1. 請問透過網址後面帶參數進入此頁面的http method為何？</label><!--GET-->
         <input type="textbox" name="q1" onkeyup="ValidateValue(this)"><br>
         <label>Q2. 請問用來寫網頁的基礎標籤語法為何？</label><!--HTML-->
         <input type="textbox" name="q2" onkeyup="ValidateValue(this)"><br>
         <label>Q3. 請問按下下方"Submmit"後將答案提交的http method為何？</label><!--POST-->
         <input type="textbox" name="q3" onkeyup="ValidateValue(this)"><br>
         <label>Q4. 承Q2，它是由什麼元素組成的，且此元素通常成對出現？</label><!--標籤、TAG-->
         <input type="textbox" name="q4" onkeyup="ValidateValue(this)"><br>
         <label>Q5. 承上題，該元素由什麼元素來描述其額外資訊？</label><!--屬性、ATTRIBUTE-->
         <input type="textbox" name="q5" onkeyup="ValidateValue(this)"><br>
         <label>Q6. 在網頁中能被顯示的元素為何？</label><!--內容、CONTENT-->
         <input type="textbox" name="q6" onkeyup="ValidateValue(this)"><br>
         <label>Q7. 圖片通常被放在何種標籤中？輸入標籤名稱即可，不用打括號。</label><!--img-->
         <input type="textbox" name="q7" onkeyup="ValidateValue(this)"><br>
         <label>Q8. 統一管理網頁樣式的文件為何？</label><!--CSS-->
         <input type="textbox" name="q8" onkeyup="ValidateValue(this)"><br>
         <label>Q9. 承上題，該文件的連結通常放在哪一層標籤下？輸入標籤名稱即可，不用打括號。</label><!--head-->
         <input type="textbox" name="q9" onkeyup="ValidateValue(this)"><br>
         <label>Q10.描述一個會用到爬蟲的專題情境(自由發揮)。</label><!--文章列表、氣象局、-->
         <input type="textbox" name="q10" size="100"><br>
         <br>
         <input type="submit" value="Submit">
        </form>
        <div>
        """%(classID, studentID)
        
    outStr += """
        </div>
        </body>
    </html>
    """
    
    return outStr

@app.route('/homework_score', methods=['POST'])
def homework_score():
    classID = request.args.get('classID')
    studentID = request.args.get('studentID')
    
    stnumber = studentID
    stname = request.form.get('stname')
    stclass = classID
    q1 = request.form.get('q1')
    q2 = request.form.get('q2')
    q3 = request.form.get('q3')
    q4 = request.form.get('q4')
    q5 = request.form.get('q5')
    q6 = request.form.get('q6')
    q7 = request.form.get('q7')
    q8 = request.form.get('q8')
    q9 = request.form.get('q9')
    q10 = request.form.get('q10')
    
    check_answer = [q1, q2, q3, q4, q5, q6, q7, q8, q9, q10]
    for a in check_answer:
        if '\\' in a:
            return '請勿輸入特殊字元，如反斜線(\)'
    
    if stname == None or stname == '':
        return '請輸入你的名字'
    else:  
        check_ans = []
        correct_amount = 0
        if q1.replace(' ', '').upper() != 'GET':
            check_ans.append(['red', 'False!'])
        else:
            check_ans.append(['green', 'True!'])
            correct_amount += 1
        if q2.replace(' ', '').upper() != 'HTML':
            check_ans.append(['red', 'False!'])
        else:
            check_ans.append(['green', 'True!'])
            correct_amount += 1
        if q3.replace(' ', '').upper() != 'POST':
            check_ans.append(['red', 'False!'])
        else:
            check_ans.append(['green', 'True!'])
            correct_amount += 1
        if q4.replace(' ', '').upper() != 'TAG' and q4.replace(' ', '').upper() != '標籤':
            check_ans.append(['red', 'False!'])
        else:
            check_ans.append(['green', 'True!'])
            correct_amount += 1
        if q5.replace(' ', '').upper() != 'ATTRIBUTE' and q5.replace(' ', '').upper() != '屬性':
            check_ans.append(['red', 'False!'])
        else:
            check_ans.append(['green', 'True!'])
            correct_amount += 1
        if q6.replace(' ', '').upper() != 'CONTENT' and q6.replace(' ', '').upper() != '內容':
            check_ans.append(['red', 'False!'])
        else:
            check_ans.append(['green', 'True!'])
            correct_amount += 1
        if q7.replace(' ', '').upper().replace('<', '').replace('>', '') != 'IMG':
            check_ans.append(['red', 'False!'])
        else:
            check_ans.append(['green', 'True!'])
            correct_amount += 1
        if q8.replace(' ', '').upper() != 'CSS':
            check_ans.append(['red', 'False!'])
        else:
            check_ans.append(['green', 'True!'])
            correct_amount += 1
        if q9.replace(' ', '').upper().replace('<', '').replace('>', '') != 'HEAD':
            check_ans.append(['red', 'False!'])
        else:
            check_ans.append(['green', 'True!'])
            correct_amount += 1
        if q10.replace(' ', '').upper() == '':
            check_ans.append(['red', 'False!'])
        else:
            check_ans.append(['green', 'True!'])
            correct_amount += 1


        outStr = """
        <!doctype html>
        <html>
            <head>
                <title>HOMEWORK</title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            </head>
            <body>
            
        """
        
        try:
            cursor.execute("DELETE FROM TESTDB.tibame WHERE stnumber=%s", (stnumber))
            cursor.execute("INSERT INTO TESTDB.tibame SET stnumber=%s, stname=%s, stclass=%s, \
                               q1=%s, q2=%s, q3=%s, q4=%s, q5=%s, q6=%s, q7=%s, q8=%s, q9=%s, q10=%s, \
                               stscore=%s",
                              (int(stnumber), 
                               stname, 
                               stclass.upper(), 
                               q1, 
                               q2, 
                               q3, 
                               q4, 
                               q5, 
                               q6, 
                               q7, 
                               q8, 
                               q9, 
                               q10, correct_amount)
                          )
            conn.commit()
        except pymysql.InternalError as error:
            print('InternalError')
        except:
            outStr += """
            <div>
                <font color="red"><u>資料未成功上傳資料庫，請檢查輸入訊息！</u></font>
            </div>
            """
        
        outStr += """
        <div>
            <p>
                <h1>%s , %s , %s號</h1>
                <h2>你輸入的答案為：</h2>
            </p>
            <br>
            <p>
                <h4> A1 : %s</h4><font color="%s">%s</font>
                <h4> A2 : %s</h4><font color="%s">%s</font>
                <h4> A3 : %s</h4><font color="%s">%s</font>
                <h4> A4 : %s</h4><font color="%s">%s</font>
                <h4> A5 : %s</h4><font color="%s">%s</font>
                <h4> A6 : %s</h4><font color="%s">%s</font>
                <h4> A7 : %s</h4><font color="%s">%s</font>
                <h4> A8 : %s</h4><font color="%s">%s</font>
                <h4> A9 : %s</h4><font color="%s">%s</font>
                <h4> A10: %s</h4><font color="%s">%s</font>
            </p>
        </div>
        """%(stclass, stname, stnumber, q1, check_ans[0][0], check_ans[0][1], 
                                        q2, check_ans[1][0], check_ans[1][1],
                                        q3, check_ans[2][0], check_ans[2][1],
                                        q4, check_ans[3][0], check_ans[3][1],
                                        q5, check_ans[4][0], check_ans[4][1],
                                        q6, check_ans[5][0], check_ans[5][1],
                                        q7, check_ans[6][0], check_ans[6][1],
                                        q8, check_ans[7][0], check_ans[7][1],
                                        q9, check_ans[8][0], check_ans[8][1],
                                        q10, check_ans[9][0], check_ans[9][1],
            )

        outStr += """
        <div>
        <br>
        <h3>你答對 %s 題！</h3>
        </div>
        """%(correct_amount)

        outStr += """
            </body>
        </html>
        """
        return outStr


@app.route('/homework_all/<stclass>', methods=['GET'])
def homework_all_get(stclass):
    #if 'Python' in request.headers['User-Agent'] or 'python' in request.headers['User-Agent']:
    if 1==1:
        hidden_code = str(int(time.time()))
        outStr = """
        <!doctype html>
        <html>
            <head>
                <title>HOMEWORK</title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
            </head>
            <body>
            <div class="w3-animate-opacity">
        """

        outStr += """
        <form action="/homework_all/%s" method="post">
            <div>
                <label for="pwd">Password:</label>
                <input name="pwd" type="password" id="pwd">
            </div>
            <div>
                <input name="_hidden_info" type="hidden" value="%s">
            </div>
            <div>
                <input type="submit" value="Submit">
            </div>
        </form>
        """%(stclass, int(hidden_code)*3)

        outStr += """
            </div>
            </body>
        </html>
        """
        resp = make_response(outStr)
        resp.set_cookie('class_id', stclass)
        resp.set_cookie('hidden_code', hidden_code, max_age=3600)
        return resp
    else:
        return 'Bad request.'

@app.route('/homework_all/<stclass>', methods=['POST'])
def homework_all(stclass):
    cookie_class_id = request.cookies.get('class_id')
    cookie_hidden_code = request.cookies.get('hidden_code')
    post_pwd = request.form.get('pwd')
    post_hidden_info = request.form.get('_hidden_info')
    
    if cookie_hidden_code == None:
        cookie_hidden_code = 1
    if post_hidden_info == None:
        post_hidden_info = 1
    
    if base64.b64decode(post_pwd).decode('ascii') == stclass.upper() and post_pwd[-1] == '=' and '=' not in post_pwd[0:-1] \
        and int(post_hidden_info) == int(cookie_hidden_code)*3 and int(time.time()) - int(cookie_hidden_code) < 7:
        all_data = {}
        conn.commit()
        cursor.execute("SELECT * FROM TESTDB.tibame WHERE stclass = '%s';"%(stclass.upper()))
        for each_person in cursor.fetchall():
            each_data = {
                            'number' : '機敏資料已遮罩',
                            'name' : '機敏資料已遮罩',
                            'class' : each_person['stclass'],
                            'score' : each_person['stscore'],
                            'answer' : {
                                            'q1':each_person['q1'],
                                            'q2':each_person['q2'],
                                            'q3':each_person['q3'],
                                            'q4':each_person['q4'],
                                            'q5':each_person['q5'],
                                            'q6':each_person['q6'],
                                            'q7':each_person['q7'],
                                            'q8':each_person['q8'],
                                            'q9':each_person['q9']
                                        }
                        }
            t = base64.b64encode(('%s'%(each_person['stnumber'])).encode()).decode('ascii')
            q = base64.b64encode(('%s'%(t)).encode()).decode('ascii')
            #all_data['student_%s'%(each_person['stnumber'])] = each_data
            all_data['student_%s'%(q)] = each_data
        return jsonify(all_data), 200
    else:
        return 'Bad request.'

@app.route('/homework_all_secret/<stclass>', methods=['GET'])
def homework_all_secret(stclass):
    all_data = {}
    conn.commit()
    cursor.execute("SELECT * FROM TESTDB.tibame WHERE stclass='%s' ORDER BY stclass;"%(stclass.upper()))
    outStr = """
    <!doctype html>
        <html>
            <head>
                <title>SCORE</title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
            </head>
            <body>
    """
    outStr += """
    <table>
        <tbody>
    """
    for each_person in cursor.fetchall():
        try:
            each_data = {
                            'number' : each_person['stnumber'],
                            'name' : each_person['stname'],
                            'class' : each_person['stclass'],
                            'score' : each_person['stscore'],
                            'secret' : each_person['q10']
                        }
            outStr += """
            <tr><td>Number: </td><td>%s</td></tr>
            <tr><td>Name: </td><td>%s</td></tr>
            <tr><td>Class: </td><td>%s</td></tr>
            <tr><td>Score: </td><td>%s</td></tr>
            <tr><td>Secret: </td><td>%s</td></tr>
            """%(each_data['number'], each_data['name'], each_data['class'], each_data['score'], each_data['secret'])
        except:
            each_data = {
                            'number' : each_person['stnumber'],
                            'name' : each_person['stname'],
                            'class' : each_person['stclass'],
                            'score' : each_person['stscore'],
                            'secret' : each_person['q10'],
                            'answer' : {
                                            'q1':each_person['q1'],
                                            'q2':each_person['q2'],
                                            'q3':each_person['q3'],
                                            'q4':each_person['q4'],
                                            'q5':each_person['q5'],
                                            'q6':each_person['q6'],
                                            'q7':each_person['q7'],
                                            'q8':each_person['q8'],
                                            'q9':each_person['q9']
                                        }
                        }
        all_data['student_%s'%(each_person['stnumber'])] = each_data
        outStr += """
            <tr><td><br><br></td><td></td></tr>
            """
    outStr += """
        </tbody>
    </table>
    """
    outStr += """
    </body>
    </html>
    """
    #return jsonify(all_data), 200
    return outStr

@app.route('/get_headers')
def get_headers():
    t = request.headers['User-Agent']
    return str(t)

@app.route('/show_form')
def show_form():
    outStr = """
    <!doctype html>
        <html>
            <head>
                <title>SCORE</title>
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
            </head>
            <body>
    """
    outStr += """
    <div class="w3-animate-opacity">
    <div>
        <table class="table" style="font-family:serif;margin:0 auto;">
            <thead>
                <th>
                    <input type="button" value="全班成績" onclick="location.href='http://35.229.210.25:3000/d-solo/vN0j_kAWz/score?orgId=1&panelId=4'">
                </th>
            </thead>
        </table>
        <br>       
    </div>
    <div>
        <table class="table" style="font-family:serif;margin:0 auto;">
            <thead>
                <th>
                    <input type="button" value="成績分布" onclick="location.href='http://35.229.210.25:3000/d-solo/vN0j_kAWz/score?orgId=1&panelId=6'">
                </th>
            </thead>
        </table>
        <br> 
    </div>
    </div> 
    </body>
    </html>
    """
    return outStr

@app.route('/postu', methods=['POST'])
def testu():
    tmpstr = request.form.get('u')
    print(tmpstr)
    with open(r'./u/u%s'%(str(int(time.time()))), 'w', encoding = 'utf-8') as f:
        f.write(tmpstr if tmpstr != None else '')
    try:
        filename = request.files.get('f')
        filename.save(r'./u/f%s'%(filename.filename))
    except:
        pass
    return '200'


#運行flask server，運行在0.0.0.0:5000
#要特別注意假如運行在127.0.0.1的話，會變成只有本機連的到，外網無法
app.run(debug=True, host='0.0.0.0',port=5000)

