#!/usr/bin/env python3

import requests
from bs4 import BeautifulSoup
import re

URL = 'https://www.weather-atlas.com/en/china/suzhou'
page = requests.get(URL)
rex = re.compile('Humidity: ..')

soup = BeautifulSoup(page.content, 'html.parser')
temperature = soup.find('li', class_='font_175_rem')
humidity_result = soup.find('li', text=rex)
humidity_full = humidity_result.text
humidity = humidity_full.replace('Humidity: ', '').strip()

print('| SZ ' + temperature.text + ' ' + humidity)