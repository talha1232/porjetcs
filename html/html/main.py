from bs4 import BeautifulSoup
import requests


html_text=requests.get("https://www.afterschoolafrica.com/51914/top-10-hardest-undergraduate-degrees-in-the-world/").text
soup=BeautifulSoup(html_text,"lxml")
dificulty=soup.findall("div",class_="entry-content content")
print(dificulty)

