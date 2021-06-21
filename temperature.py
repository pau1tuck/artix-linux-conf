#!/usr/bin/env python3

import requests
from bs4 import BeautifulSoup

URL = 'https://weather.com/en-GB/weather/tenday/l/CHXX0520:1:CH'
page = requests.get(URL)

soup = BeautifulSoup(page.content, 'html.parser')
result = soup.find('span', class_='DailyContent--temp--_8DL5')

print('| Suzhou: ' + result.text + 'C')
