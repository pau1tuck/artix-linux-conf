#!/usr/bin/env python3

import requests
from bs4 import BeautifulSoup

URL = 'https://www.weather-atlas.com/en/china/suzhou'
page = requests.get(URL)

soup = BeautifulSoup(page.content, 'html.parser')
result = soup.find('li', class_='font_175_rem')

print('| SZ ' + result.text)
