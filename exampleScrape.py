import requests
from bs4 import BeautifulSoup
import pandas as pd

# URL of the website to scrape
url = 'http://books.toscrape.com/'

# Send a request to the website
response = requests.get(url)
soup = BeautifulSoup(response.content, 'html.parser')

# Scrape the required data
data = []
for item in soup.find_all('article', class_='product_pod'):
    name = item.h3.a['title']
    price = item.find('p', class_='price_color').text
    availability = item.find('p', class_='instock availability').text.strip()
    data.append({'Name': name, 'Price': price, 'Availability': availability})

# Create a DataFrame
df = pd.DataFrame(data)

# Save the DataFrame to a CSV file
df.to_csv('books_data.csv', index=False)
print("Data scraped and saved to books_data.csv")
