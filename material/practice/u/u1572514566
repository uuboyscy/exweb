
# coding: utf-8

# In[1]:


import requests
from bs4 import BeautifulSoup
from urllib import request


# In[2]:


'''

Set defult cookies

'''
url_index = 'https://web.pcc.gov.tw/pis/main/pis/client/index.do'

JSESSIONID = '0000_t5sctmtqkShzYKXhD-xKb7:14iier93p'
NSC_xfc_qfstjtufodf = 'ffffffff09081f7645525d5f4f58455e445a4a423660'
cookiesession1 = '07474E029M3YQFG2F49B90LLI4HQ6B92'

headers = {}
original_headers_str = """Accept: text/html,application/xhtml xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7
Cache-Control: max-age=0
Connection: keep-alive
Host: web.pcc.gov.tw
Sec-Fetch-Mode: navigate
Sec-Fetch-Site: none
Sec-Fetch-User: ?1
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36"""

for d in original_headers_str.split('\n'):
    headers[d.split(': ')[0]] = d.split(': ')[1].strip()

ss = requests.session()
# ss.cookies['JSESSIONID'] = '000054g6-UfO1zCH4zAaiVh6mvR:14iier93p'
# ss.cookies['NSC_xfc_qfstjtufodf'] = 'f09081f7645525d5f4f58455e445a4a423660'
# ss.cookies['cookiesession1'] = '07474E02SXYBIZW2NW3VLBQCYMSO4C99'
res = ss.get(url_index, headers = headers)
# soup = BeautifulSoup(res.text, 'html.parser')
cookies_dict = ss.cookies.get_dict()
for ckey in cookies_dict:
    if ckey == 'JSESSIONID':
        JSESSIONID = cookies_dict[ckey]
    if ckey == 'NSC_xfc_qfstjtufodf':
        NSC_xfc_qfstjtufodf = cookies_dict[ckey]
    if ckey == 'cookiesession1':
        cookiesession1 = cookies_dict[ckey]


# In[3]:


headers={}

# This is used to request 'https://web.pcc.gov.tw/tps/pss/tender.do?searchMode=common