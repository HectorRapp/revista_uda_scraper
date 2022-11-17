import lxml.html as html
import requests
import mysql.connector
from unicodedata import normalize
import re



PAGE_LINK = 'http://www.revistaingenieria.uda.cl/seleccion.php'
EDITION_DIR = '//div/a/@href'
ADD_LINK = 'http://www.revistaingenieria.uda.cl/'
ADD_LINK2 = 'http://www.revistaingenieria.uda.cl'
PAPER_LINK = '//td[2]//*[@class = "Estilo1"]//a/@href'

PAPER_PATH = '//table[@class = "Estilo3"]'
AUTHOR_PATH = '//td[@width = "523"]/span[@class = "Estilo1"]/text()'
TITLE_PATH = '//td[@width = "523" and @class = "Estilo1"]/text()'
KEYWORDS_PATH = '//text()'


def insert_db(ed_number, paper_links, authors, titles, palabras_claves, keywords):
	try:
		connection = mysql.connector.connect(
			host = 'localhost',
			port = 3306,
			user = 'root',
			#password = 'root',
			db = 'db_revista',

		)

		cursor = connection.cursor()
		for i in range(len(paper_links)):
			sql = f"INSERT INTO `papers`(`autor`,`titulo`,`palabras`,`keywords`,`link`,`edicion`) VALUES ('{authors[i]}', '{titles[i]}', '{palabras_claves[i]}', '{keywords[i]}', '{paper_links[i]}', {ed_number})"
			cursor.execute(sql)
		
		connection.commit()
		cursor.close()
	except Exception as e:
		print(f'Error: \n{e}')



def paper_parse(papers):
	link_papers = []
	for link in papers:
		length = len(link)
		link = link[2:length]
		link_papers.append(ADD_LINK2+link)
	return link_papers

def parse_string(string):
	string = re.sub(r"([^n\u0300-\u036f]|n(?!\u0303(?![\u0300-\u036f])))[\u0300-\u036f]+",
			r"\1", normalize( "NFD", string), 0, re.I)
	string = re.sub('[^a-zA-Z0-9 .]', '', string)
	string = re.sub('\\\"\n[!@^&*[]{};:,./<>?|`~-=_+]', " ", string)
	return string.strip()


def extract_info(link):
	try:
		response = requests.get(link)
		if response.status_code == 200:
			new = response.content.decode('ISO-8859-1')
			parsed = html.fromstring(new)

			ed_number = link[-2:]
			papers = parsed.xpath(PAPER_LINK)
			paper_links = paper_parse(papers)
			#num_papers = len(paper_links)

			authors = parsed.xpath(PAPER_PATH+AUTHOR_PATH)
			titles = parsed.xpath(PAPER_PATH+TITLE_PATH)
			pc = parsed.xpath(PAPER_PATH+KEYWORDS_PATH)

			palabras_claves = []
			keywords = []
			for i in range(len(pc)):
				if 'PALABRAS CLAVES ' in pc[i]:
					palabras_claves.append(pc[i+2])
				if 'KEYWORDS ' in pc[i]:
					keywords.append(pc[i+2])

			for i in range(len(pc)):
				if 'KEYWORDS ' in pc[i]:
					keywords.append(pc[i+2])
		
			#Aquí se envían a la base de datos
			# insert_db(ed_number, paper_links, authors, titles, palabras_claves, keywords)
			
			#Esto es para descargar los papers
			for lk in paper_links:
				response = requests.get(lk)
				#Tienen el nombre del link
				open(f"{parse_string(lk)}", "wb").write(response.content)


	except (ValueError, IndexError) as ve:
			print(f"Error with link: {link}")


def extract_links():
	try:
		response = requests.get(PAGE_LINK)
		if response.status_code == 200:
			new = response.content.decode('ISO-8859-1')
			parsed = html.fromstring(new)

			edition_links = []
			links = parsed.xpath(EDITION_DIR)
			for link in links:
				if 'publicaa' in link:
					edition_links.append(ADD_LINK+link);
			edition_links.append(f'{ADD_LINK}publicaa.php?tipot=1&tipov=17')
			print(f'links: {len(edition_links)}')
			for link in edition_links:
				extract_info(link)

	except (ValueError, IndexError) as ve:
			print(f"Error: {ve}")

extract_links()