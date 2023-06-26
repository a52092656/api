# -*- coding: UTF-8 -*-

import sys, os, re, json, base64
if sys.version_info >= (3,0,0):
# for Python 3
	to_unicode = str
	from resources.lib.cmf3 import parseDOM
	from resources.lib.cmf3 import replaceHTMLCodes
	from urllib.parse import unquote, parse_qs, parse_qsl, quote, urlencode, quote_plus

else:
	# for Python 2
	to_unicode = unicode
	from resources.lib.cmf2 import parseDOM
	from resources.lib.cmf2 import replaceHTMLCodes
	from urllib import unquote, quote, urlencode, quote_plus
	from urlparse import parse_qsl, parse_qs
	
import io

from resources.lib import recaptcha_v2

import xbmc, xbmcvfs

import requests
import xbmcgui
import xbmcplugin
import xbmcaddon

import resolveurl 

#urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)
base_url = sys.argv[0]
addon_handle = int(sys.argv[1])
params = dict(parse_qsl(sys.argv[2][1:]))
addon = xbmcaddon.Addon(id='plugin.video.fmoviesto')

PATH			= addon.getAddonInfo('path')
try:
	DATAPATH		= xbmcvfs.translatePath(addon.getAddonInfo('profile'))
except:
	DATAPATH	= xbmc.translatePath(addon.getAddonInfo('profile')).decode('utf-8')
	
if not os.path.exists(DATAPATH):
	os.makedirs(DATAPATH)
	
jfilename = os.path.join(DATAPATH,'jfilename')
napisy = os.path.join(DATAPATH,'napisy')

RESOURCES	   = PATH+'/resources/'

FANART=RESOURCES+'fanart.jpg'

exlink = params.get('url', None)
nazwa= params.get('title', None)
rys = params.get('image', None)
page = params.get('page',[1])[0]


fsortv = addon.getSetting('fsortV')
fsortn = addon.getSetting('fsortN') if fsortv else 'default'

fkatv = addon.getSetting('fkatV')
fkatn = addon.getSetting('fkatN') if fkatv else 'all'

fkrajv = addon.getSetting('fkrajV')
fkrajn = addon.getSetting('fkrajN') if fkrajv else 'all'

frokv = addon.getSetting('frokV')
frokn = addon.getSetting('frokN') if frokv else 'all'

fwerv = addon.getSetting('fwerV')
fwern = addon.getSetting('fwerN') if fwerv else 'all'

fnapv = addon.getSetting('fnapV')
fnapn = addon.getSetting('fnapN') if fnapv else 'all'

fratyv = addon.getSetting('fratyV')
fratyn = addon.getSetting('fratyN') if fratyv else 'all'

sratyv = addon.getSetting('sratyV')
sratyn = addon.getSetting('sratyN') if sratyv else 'all'

snapv = addon.getSetting('snapV')
snapn = addon.getSetting('snapN') if snapv else 'all'

ssortv = addon.getSetting('ssortV')
ssortn = addon.getSetting('ssortN') if ssortv else 'default'

skatv = addon.getSetting('skatV')
skatn = addon.getSetting('skatN') if skatv else 'all'

skrajv = addon.getSetting('skrajV')
skrajn = addon.getSetting('skrajN') if skrajv else 'all'

srokv = addon.getSetting('srokV')
srokn = addon.getSetting('srokN') if srokv else 'all'

swerv = addon.getSetting('swerV')
swern = addon.getSetting('swerN') if swerv else 'all'

dataf =  addon.getSetting('fdata')	
datas =  addon.getSetting('sdata')	

wybornapisow = True

UA='Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0'

headers = {
	'User-Agent': UA,
	'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
	'Accept-Language': 'pl,en-US;q=0.7,en;q=0.3',
	'Connection': 'keep-alive',
	'Upgrade-Insecure-Requests': '1',
	'TE': 'Trailers',
}
sess = requests.Session()
def build_url(query):
	return base_url + '?' + urlencode(query)

def add_item(url, name, image, mode, folder=False, IsPlayable=False, infoLabels=False, movie=True,itemcount=1, page=1,fanart=FANART,moviescount=0):
	list_item = xbmcgui.ListItem(label=name)

	if IsPlayable:
		list_item.setProperty("IsPlayable", 'True')
	if not infoLabels:
		infoLabels={'title': name,'plot':name}
	list_item.setInfo(type="video", infoLabels=infoLabels)	
	list_item.setArt({'thumb': image, 'poster': image, 'banner': image, 'icon': image, 'fanart': FANART})
	ok=xbmcplugin.addDirectoryItem(
		handle=addon_handle,
		url = build_url({'mode': mode, 'url' : url, 'page' : page, 'moviescount' : moviescount,'movie':movie,'title':name,'image':image}),			
		listitem=list_item,
		isFolder=folder)
	xbmcplugin.addSortMethod(addon_handle, sortMethod=xbmcplugin.SORT_METHOD_NONE, label2Mask = "%R, %Y, %P")
	return ok
	
def menuMovies():
	add_item('https://fmovies.to/filter?keyword=&type[]=movie', 'List movies', 'DefaultMovies.png', "listmovies", True)	
	add_item('', "-	  [COLOR lightblue]sort:[/COLOR] [B]"+fsortn+'[/B]','DefaultRecentlyAddedMovies.png', 'filtr:fsort', folder=False,fanart='')
	add_item('', "-	  [COLOR lightblue]country:[/COLOR] [B]"+fkrajn+'[/B]','DefaultRecentlyAddedMovies.png', 'filtr:fkraj', folder=False,fanart='')
	add_item('', "-	  [COLOR lightblue]genre:[/COLOR] [B]"+fkatn+'[/B]','DefaultRecentlyAddedMovies.png', 'filtr:fkat', folder=False,fanart='')
	add_item('', "-	  [COLOR lightblue]year:[/COLOR] [B]"+frokn+'[/B]','DefaultRecentlyAddedMovies.png', 'filtr:frok', folder=False,fanart='')
	add_item('', "-	  [COLOR lightblue]quality:[/COLOR] [B]"+fwern+'[/B]','DefaultRecentlyAddedMovies.png', 'filtr:fwer', folder=False,fanart='')
	add_item('', "-	  [COLOR lightblue]rating:[/COLOR] [B]"+fratyn+'[/B]','DefaultRecentlyAddedMovies.png', 'filtr:fraty', folder=False,fanart='')
	add_item('', '[COLOR lightblue]Search[/COLOR]', 'DefaultAddonsSearch.png', "search", True)	
	add_item('f', "[I][COLOR violet][B]Reset all filters[/COLOR][/I][/B]",'DefaultAddonService.png', "resetfil", folder=False)

	xbmcplugin.endOfDirectory(addon_handle)
	
def menuTVshows():
	add_item('https://fmovies.to/filter?keyword=&type[]=tv', 'List tv-series', 'DefaultMovies.png', "listmovies", True)	
	add_item('', "-	  [COLOR lightblue]sort:[/COLOR] [B]"+ssortn+'[/B]','DefaultRecentlyAddedMovies.png', 'filtr:ssort', folder=False,fanart='')
	add_item('', "-	  [COLOR lightblue]country:[/COLOR] [B]"+skrajn+'[/B]','DefaultRecentlyAddedMovies.png', 'filtr:skraj', folder=False,fanart='')
	add_item('', "-	  [COLOR lightblue]genre:[/COLOR] [B]"+skatn+'[/B]','DefaultRecentlyAddedMovies.png', 'filtr:skat', folder=False,fanart='')
	add_item('', "-	  [COLOR lightblue]year:[/COLOR] [B]"+srokn+'[/B]','DefaultRecentlyAddedMovies.png', 'filtr:srok', folder=False,fanart='')
	add_item('', "-	  [COLOR lightblue]quality:[/COLOR] [B]"+swern+'[/B]','DefaultRecentlyAddedMovies.png', 'filtr:swer', folder=False,fanart='')
	add_item('', "-	  [COLOR lightblue]rating:[/COLOR] [B]"+sratyn+'[/B]','DefaultRecentlyAddedMovies.png', 'filtr:sraty', folder=False,fanart='')
	
	
	add_item('s', "[I][COLOR violet][B]Reset all filters[/COLOR][/I][/B]",'DefaultAddonService.png', "resetfil", folder=False)
	add_item('', '[COLOR lightblue]Search[/COLOR]', 'DefaultAddonsSearch.png', "search", True)	
	xbmcplugin.endOfDirectory(addon_handle)
def home():
	try:
		if addon.getSetting('pic')!='1':
			ResetAllFilters()
	except:
		pass
	add_item('https://fmovies.to/movies', 'Movies', 'DefaultMovies.png', "menumov", True)	
	add_item('https://fmovies.to/movies', 'TV-Series', 'DefaultMovies.png', "menutvs", True)	
	add_item('', '[COLOR lightblue]Search[/COLOR]', 'DefaultAddonsSearch.png', "search", True)	

	xbmcplugin.endOfDirectory(addon_handle)
	
def ResetAllFilters()	:
	for x in ['f','s']:
		addon.setSetting(x+'sortN','default')
		addon.setSetting(x+'sortV','&sort=default')
		
		addon.setSetting(x+'katN','all')
		addon.setSetting(x+'katV','')
		
		addon.setSetting(x+'krajN','all')
		addon.setSetting(x+'krajV','')
		
		addon.setSetting(x+'rokN','all')
		addon.setSetting(x+'rokV','')
		
		addon.setSetting(x+'napN','all')
		addon.setSetting(x+'napV','')
		
		
		addon.setSetting(x+'ratyN','all')
		addon.setSetting(x+'ratyV','')
		
		addon.setSetting(x+'data','&sort=default')
		addon.setSetting('pic','1')
		return
def ListMovies(exlink,page):

	links, serials, pagin = getMovies(exlink,page)

	itemz=links
	items = len(links)
	mud='getLinks'
	fold=True
	for f in itemz:
		add_item(name=f.get('title'), url=f.get('href'), mode=mud, image=f.get('img'), folder=fold, infoLabels={'plot':f.get('title'),'title':f.get('title')}, itemcount=items, IsPlayable=False)	
	itemzx=serials
	items = len(serials)
	mud='getseasons'
	fold=True
	for f in itemzx:
		add_item(name=f.get('title'), url=f.get('href'), mode=mud, image=f.get('img'), folder=fold, infoLabels={'plot':f.get('title'),'title':f.get('title')}, itemcount=items)	
	
	if pagin:
		add_item(name='[COLOR blue]>> Next page [/COLOR]', url=exlink, mode='listmovies', image='', folder=True, page=pagin)
	if links or serials:
		xbmcplugin.setContent(addon_handle, 'videos')	

		xbmcplugin.endOfDirectory(addon_handle)		

def getMovies(url,page=1):

	#if not 'search?keyword' in url:
	if '?keyword=&' in url:
		datax = datas if '=tv' in url else dataf
	
		if '&page=' in url:
		
			url = re.sub('\&page=\\d+','&page=%d'%int(page),url)
		else:
		
			url = url +datax+ '&page=%d' %int(page)
	else:
		if '&page=' in url:
		
			url = re.sub('\&page=\\d+','&page=%d'%int(page),url)
		else:
		
			url = url +'&page=%d' %int(page)
	
	nturl = '&amp;page=%d"' %(int(page)+1) 
	#xbmc.log('urlurlurlurlurlurlurlurlurlurlurl: %s'%str(url), level=xbmc.LOGINFO)
	r = sess.get(url,verify=False, headers=headers)
	html=r.content
	if sys.version_info >= (3,0,0):
		html = html.decode(encoding='utf-8', errors='strict')
	out=[]
	serout=[]

	npage=False

	pagination = parseDOM(html, 'ul', attrs={'class': "pagination"}) 
	if pagination:
		npage = str(int(page)+1)if nturl in pagination[0] else False

	result = parseDOM(html, 'div', attrs={'class': "movies\s+.*?"}) [0]
	ids = [(a.start(), a.end()) for a in re.finditer('<div class="item"', result)]
	ids.append( (-1,-1) )
	out=[]
	serout=[]
	for i in range(len(ids[:-1])):
		link = result[ ids[i][1]:ids[i+1][0] ]
		try:
			imag= parseDOM(link, 'img', ret='src')[0]
		except:
			imag= parseDOM(link, 'img', ret='data-src')[0]
		imag = 'https:'+imag if imag.startswith('//') else imag
		title= parseDOM(link, 'a')[-1]
		
		href = parseDOM(link, 'a', ret='href')[-1]
		id =re.findall('([^\-]+$)',href)[0]
		href = 'https://fmovies.to'+href if href.startswith('/') else href
		typ = parseDOM(html, 'i', attrs={'class': "type"})
		typ = typ[0].strip() if typ else ''
			
		
		
		
		plot =''

		ploturl = re.findall('data\-tip\s*=\s*"(.+?)"',link)[0]
		ploturl = 'https://fmovies.to/ajax/film/tooltip/'+ ploturl
		genre =''
		code =''
		year =''

		if 'to/tv/' in href:
			title = title + ' [COLOR gold](serie)[/COLOR]'
			serout.append({'title':PLchar(title),'href':href+'|'+id,'img':imag,'plot':PLchar(plot),'genre':genre,'year':year,'code':code})
		else:
			out.append({'title':PLchar(title),'href':href+'|'+id,'img':imag,'plot':PLchar(plot),'genre':genre,'year':year,'code':code})
	return (out,serout, npage) 
	
def getVerid(id):

	ab = 'DZmuZuXqa9O0z3b7' #####stare
	ab = 'MPPBJLgFwShfqIBx'

	ac = id
	hj = dekoduj(ab,ac) #

	if sys.version_info >= (3,0,0):
		hj=hj.encode('Latin_1')

	hj2 = encode2(hj)   

	if sys.version_info >= (3,0,0):
		hj2=(hj2.decode('utf-8'))

		
###### 31.05.23		
	def convert_func(matchobj):
		m =  matchobj.group(0)
	
		if m <= 'Z':
			mx = 90
		else:
			mx = 122
		mx2 = ord( m)+ 13    #  m.charCodeAt(0) + 13 
		if mx>=mx2:
			mx = mx2
		else:
			mx = mx2-26
		gg = chr(mx)
		return gg
	

	def but(t):
		t = re.sub("[a-zA-Z]", convert_func, t)
		t = re.sub("[a-zA-Z]", convert_func, t)
		o=''
		for s in range(len(t)):
			u = ord(t[s]) 
			if u ==0:
				u=0
			else:
				if (s % 7 == 4):
					u -= 6
				else:
					if (s % 7 == 3):
						u -= 4
					else:
						if (s % 7 == 5):
							u += 6
						else:
	
							if (s % 7 == 1 or s % 7 == 0 or s % 7 == 6):
								u -= 2
							else:
								if (s % 7 == 2):
									u += 6
			o += chr(u) 
		return o[::-1]  
	xc= but(hj2) 
	
	
	
	
	
	if sys.version_info >= (3,0,0):
		xc=xc.encode('Latin_1')
	xc = encode2(xc)   

	if sys.version_info >= (3,0,0):
		xc=(xc.decode('utf-8'))

	return xc
	
def getLinks(exlink):
	href,id = exlink.split('|')

	html = sess.get(href, headers=headers, verify=False).content

	if sys.version_info >= (3,0,0):
		html = html.decode(encoding='utf-8', errors='strict')
	idx=re.findall('data\-id\s*=\s*"([^"]+)"',html,re.DOTALL)
	if idx:
	
		result = parseDOM(html, 'section', attrs={'id': "w\-info.*?"})[0]  
		plot = parseDOM(result, 'div', attrs={'class': "description\s*cts.*?"}) 
		plot = PLchar(plot[0]) if plot else ''
		plot = re.sub("<[^>]*>","",plot)
		imag = parseDOM(result, 'img', ret='src')
		imag = imag[0] if imag else ''
		imag = 'https:'+imag if imag.startswith('//') else imag
		
		genres = re.findall('Genre\:(.+?)<\/div>',result)
		genres = genres[0] if genres else ''
		
		gg = re.findall('>([^<]+)<\/a>',genres)
		genre = ', '.join([(x.strip()).lower() for x in gg]) if gg else ''
		
		countries = re.findall('Country\:(.+?)<\/div>',result)  
		countries = countries[0] if countries else ''
		cc = re.findall('>([^<]+)<\/a>',countries)
		country = ', '.join([x.strip() for x in cc]) if gg else ''
		
		tim = re.findall('span>(\d+)\s*min<',result)
		tim = int(tim[0])*60 if tim else ''
		
		
		
		qual = parseDOM(result, 'span', attrs={'class': "quality"}) 
		qual = qual[0].strip() if qual else ''
		
		yr = parseDOM(result, 'span', attrs={'itemprop': "dateCreated"})  
		yr = yr[0].strip() if yr else ''
		infol = {'plot':plot,'genre': genre,'country':country,'duration':tim,'year':yr}
		
		headers.update({'Referer': href})

		if '.to/tv/' in href:
			verid = getVerid(id)
		else:
			
			idx = re.findall('class\s*=\s*"watch".*?data\-id\s*=\s*"([^"]+)',html,re.DOTALL)
			verid = getVerid(idx[0])
			params = (
			
				('vrf', verid),
			
			)
			response = sess.get('https://fmovies.to/ajax/episode/list/'+idx[0], headers=headers, params=params, verify=False)

			html= (response.content)
	
			if sys.version_info >= (3,0,0):
				html = html.decode(encoding='utf-8', errors='strict')
			html= html.replace('\\"','"')	
			idx=re.findall('data\-id\s*=\s*"([^"]+)"',html,re.DOTALL)
		
			verid = getVerid(idx[0])
		recap="03AGdBq25eDJkrezDo2y"

		params = (

			('vrf', verid),

		)
		if '.to/tv/' in href:
			response = sess.get('https://fmovies.to/ajax/server/list/'+id, headers=headers, params=params, verify=False)
		else:
			response = sess.get('https://fmovies.to/ajax/server/list/'+idx[0], headers=headers, params=params, verify=False)

		html= (response.content)
		if sys.version_info >= (3,0,0):
			html = html.decode(encoding='utf-8', errors='strict')
		html= html.replace('\\"','"')

		if 'sitekey=' in html:
		
			sitek=re.findall('data\-sitekey="(.+?)"',html)[0]
		
			token = recaptcha_v2.UnCaptchaReCaptcha().processCaptcha(sitek, lang='en')
		
			data = {
					'g-recaptcha-response': token}
			
			response = sess.post('https://fmovies.to/waf-verify', headers=headers, data=data, cookies=sess.cookies, verify=False)
			
			params = (
				('id', id),
				('token', token),
			)
			response = sess.get('https://fmovies.to/ajax/film/servers', headers=headers, params=params, cookies=response.cookies, verify=False)
		
		html = (response.content)
		if sys.version_info >= (3,0,0):
			html = html.decode(encoding='utf-8', errors='strict')
		html= html.replace('\\"','"')

		linki = re.findall('data\-link\-id\s*=\s*"([^"]+).*?<span>([^<]+)',html)
		for linkid1,host in linki:
			tyt = nazwa+' - [I][COLOR khaki]'+host+'[/I] '+' [B][/COLOR][/B]'

			add_item(name=tyt, url=linkid1+'|'+href, mode='playlink', image=imag, folder=False, infoLabels=infol, IsPlayable=True)
		
		
		
		
		if len(linki)>0:
		
			xbmcplugin.setContent(addon_handle, 'videos')
			xbmcplugin.endOfDirectory(addon_handle)	
		else:
			xbmcgui.Dialog().notification('[B]Error[/B]', 'Links are not available.',xbmcgui.NOTIFICATION_INFO, 8000,False)
		
def dec(chra):
	excludelist = ['\\xc4\\x99', '\\xc5\\x82', '\\xc5\\x81','\\xc4\\x98','\\xc5\\x9b','\\xc5\\x9a']
	
	try:	
		if sys.version_info >= (3,0,0):

			chra =repr(chra.encode('utf-8'))

			if any(exclude in chra for exclude in excludelist):
			
				return False
			chra = chra.replace('\\xc3\\xaa','ę').replace('\\xc3\\x8a','Ę')

			chra = chra.replace('\\xc3\\xa6','ć').replace('\\xc3\\x86','Ć')
			
			chra = chra.replace('\\xc2\\xbf','ż').replace('\\xc2\\x9f','Ż')
			
			chra = chra.replace('\\xc2\\xb9','ą').replace('\\xc2\\x99','Ą')
			
			chra = chra.replace('\\xc5\\x93','ś').replace('\\xc5\\x92','Ś')
			chra = chra.replace('\\xc3\\xb3','ó').replace('\\xc3\\x93','Ó')
			
			chra = chra.replace('\\xc5\\xb8','ź').replace('\\xc5\\xb7','Ź')
			
			chra = chra.replace('\\xc2\\xb3','ł').replace('\\xc2\\x93','Ł')
			
			chra = chra.replace('\\xc3\\xb1','ń').replace('\\xc3\\x91','Ń')
			

			
			chra = chra .replace("b\'",'')

			chra = chra .replace("\\n",'\n').replace("\\r",'\r') 
			chra = chra .replace("\\'","'")

		else:

			chra = chra.replace('\xc3\xaa','ę').replace('\xc3\x8a','Ę')
			chra = chra.replace('\xc3\xa6','ć').replace('\xc3\x86','Ć')
			chra = chra.replace('\xc2\xbf','ż').replace('\xc2\x9f','Ż')
			chra = chra.replace('\xc2\xb9','ą').replace('\xc2\x99','Ą')
			
			chra = chra.replace('\xc5\x93','ś').replace('\xc5\x92','Ś')
			chra = chra.replace('\xc3\xb3','ó').replace('\xc3\x93','Ó')
			
			chra = chra.replace('\xc5\xb8','ź').replace('\xc5\xb7','Ź')
			
			chra = chra.replace('\xc2\xb3','ł').replace('\xc2\x93','Ł')
			
			chra = chra.replace('\xc3\xb1','ń').replace('\xc3\x91','Ń')



	except:
		pass
		
	return chra
	
def transPolish(subtlink):

	try:
		response = sess.get(subtlink, headers=headers, verify=False)

		if sys.version_info >= (3,0,0):
		
			response  = response.text
		else:
			response  = response.content
		gg=dec(response)

		open(napisy, 'w').write(gg)

		return True
	except:
		return False
	
def PlayLink(exlink):
	id,href = exlink.split('|')

	verid = getVerid(id)

	params = (
		('vrf', verid),
	)

	headers.update({'Referer': href})

	response = sess.get('https://fmovies.to/ajax/server/'+id, headers=headers, params=params, verify=False)
	
	ab=response.content
	if sys.version_info >= (3,0,0):
		ab = ab.decode(encoding='utf-8', errors='strict')
	
	
	try:
		jsonab = json.loads(ab)
	except:
		pass
	if jsonab:
		url = jsonab.get('result',None).get('url',None)

	link2 = DecodeLink(url)

	reg = '?sub.info='
	reg = reg if reg in link2 else '?subtitle_json='
	try:
		link,subt = link2.split(reg)
	except:
		link = link2
		subt = ''
	
	subsout=[]

	subtx = unquote(subt)
	subt = False
	if subtx:
		response = sess.get(subtx, headers=headers, verify=False).json()

		for subtitle in response:
			subt = subtitle.get('src',None)
			subt2 = subtitle.get('file',None)
			subt = subt if subt else subt2
			label = subtitle.get('label',None)
			subsout.append({'label':label,'subt':subt})
	if wybornapisow and subsout:
		labels = [x.get('label') for x in subsout]
		sel = xbmcgui.Dialog().select('Subtitle language',labels)	
		if sel>-1:
			subt=subsout[sel].get('subt')
			if subsout[sel].get('label') == 'Polish':
			
				subt = napisy if transPolish(subt) else subt
				
		else:
			subt = False

	if 'mcloud' in link2 or 'vizcloud' in link2:

		pattern = r'(?://|\.)((?:my?|viz)cloud\.(?:to|digital|cloud))/(?:embed|e)/([0-9a-zA-Z]+)'
		hostm_id = re.findall(pattern,link,re.DOTALL)
		#

		if hostm_id:
			media_id = hostm_id[0][1]
			host = hostm_id[0][0]
			med_id = vidcloud_deco(media_id).replace('=','').replace('/','_')

			link = re.sub('/(?:embed|e)/','/info/',link2).replace(media_id,med_id.replace('=','').replace('/','_'))
		stream_url = ''
		try:
			response = sess.get(link, headers=headers, verify=False).json()
			outz=[]
	
			if 'success' in response:
				if response.get('success',None):
					srcs = response.get('media',None).get('sources',None)
					for src in srcs:
						fil = src.get('file',None)
						if 'm3u8' in fil:
							stream_url = fil+'|User-Agent='+UA+'&Referer='+link2
							break
			elif 'status' in response:
				if response.get('status',None) == 200:
					srcs = response.get('data',None).get('media',None).get('sources',None)
					for src in srcs:
						fil = src.get('file',None)
						if 'm3u8' in fil:
							stream_url = fil+'|User-Agent='+UA+'&Referer='+link2
							break
		except:
			pass
	
	
	

	else:
		try:
			stream_url = resolveurl.resolve(link)
		except Exception as som:
			xbmcgui.Dialog().notification('[B]Error[/B]', str(som),xbmcgui.NOTIFICATION_INFO, 8000,False)
			quit()

	if stream_url:
		
		play_item = xbmcgui.ListItem(path=stream_url)
	
		if subt:
			play_item.setSubtitles([subt])
		xbmcplugin.setResolvedUrl(addon_handle, True, listitem=play_item)

def DecodeLink(mainurl):

	ab=mainurl[0:6]   #23.09.21
	ac2 = mainurl[6:]	#23.09.21

	
	
	
	#ab = 'DZmuZuXqa9O0z3b7'
	ab= 'hlPeNwkncH0fq9so'
	ac= decode2(mainurl)

	link = dekoduj(ab,ac)
	link = unquote(link)
	return link


	
def getFileJson():

	from contextlib import closing
	from xbmcvfs import File
	
	with closing(File(jfilename)) as f:
		jsondata = f.read()
		
	jsondata = json.loads(jsondata)

	html =	 jsondata.get('result',None)
	return html


def getLinksSerial(hrefx):

	href,servid = hrefx.split('|')

	html = sess.get(href, headers=headers, verify=False).content
	if sys.version_info >= (3,0,0):
		html = html.decode(encoding='utf-8', errors='strict')
	
	result = parseDOM(html, 'section', attrs={'id': "w\-info"})[0] 
	plot = parseDOM(result, 'div', attrs={'class': "description.*?"})
	
	mname = parseDOM(result, 'h1', attrs={'itemprop': "name","class":"name"}) 
	mname = '[B]'+mname[0]+'[/B] ' if mname else ''
	
	plot = mname+'[CR]'+plot[0] if plot else ''
	imag = parseDOM(result, 'img', ret='src')
	imag = imag[0] if imag else ''
	imag = 'https:'+imag if imag.startswith('//') else imag
	
	genres = re.findall('Genre\:(.+?)<\/div>',result)
	genres = genres[0] if genres else ''
	
	gg = re.findall('>([^<]+)<\/a>',genres)
	genre = ', '.join([(x.strip()).lower() for x in gg]) if gg else ''
	
	countries = re.findall('Country\:(.+?)<\/div>',result) 
	countries = countries[0] if countries else ''
	cc = re.findall('>([^<]+)<\/a>',countries)
	country = ', '.join([x.strip() for x in cc]) if gg else ''
	
	tim = re.findall('span>(\d+)\s*min<',result)
	tim = int(tim[0])*60 if tim else ''
	
	
	
	qual = parseDOM(result, 'span', attrs={'class': "quality"}) 
	qual = qual[0].strip() if qual else ''
	
	yr = parseDOM(result, 'span', attrs={'class': "year"})  
	yr = yr[0].strip() if yr else ''
	infol = {'plot':plot,'genre': genre,'country':country,'duration':tim,'year':yr}
	
	
	servid = 1
	try:
		href1,serwery = re.findall("""href="([^"]+)"\\n\s*data-kname="%s".*?data\-ep=\\'({.*?)}"""%(hrefx),htmlx,re.DOTALL)[0]
	except:
		servid = 0

	href = 'https://fmovies.to'+href1 if href1.startswith('/') else href1

	linki = re.findall('data-id="([^"]+).*?<div>([^<]+)',htmlx,re.DOTALL)
	
	
	
	
	
	
	
	
	nazwax = '- '+nazwa if mname else nazwa
	
	for linkid1,host in linki:
		tyt = mname + nazwax+' - [I][COLOR khaki]'+host+'[/I][/COLOR] '
	
		linkid = re.findall(linkid1+'"\:"([^"]+)',serwery)
		if linkid:
			add_item(name=tyt, url=linkid[0]+'|'+href, mode='playlink', image=imag, folder=False, infoLabels=infol, IsPlayable=True)

	if servid:
		xbmcplugin.setContent(addon_handle, 'videos')
		xbmcplugin.endOfDirectory(addon_handle)	
	else:
		xbmcgui.Dialog().notification('[B]Error[/B]', 'Links are not available.',xbmcgui.NOTIFICATION_INFO, 8000,False)

def ListEpisodes(exlink):

	links= getEpisodes(exlink)	
	items = len(links)
	for f in links:
		add_item(name=f.get('title'), url=f.get('href'), mode='getLinks', image=f.get('img'), folder=True, infoLabels= {'plot':nazwa}, itemcount=items, IsPlayable=True)		
	
	xbmcplugin.setContent(addon_handle, 'files')	

	xbmcplugin.endOfDirectory(addon_handle)	
	
def getEpisodes(href):
	seaz,serv = href.split('|')

	html =	 getFileJson() 

	episodes = parseDOM(html,'ul', attrs={'class': "episodes",'data\-season': str(seaz)})[0] 
	
	
	
	out=[]

	epizody = parseDOM(episodes, 'li')

	for epi in epizody:

		kname = re.findall('data\-id\s*=\s*"([^"]+)"',epi,re.DOTALL)[0]

		seas = 'S%02d'%int(seaz)
		epis = re.findall('data\-num\s*=\s*"([^"]+)"',epi,re.DOTALL)[0]
		try:
			episod = 'E%02d'%int(epis)
		except:
			episod = 'E-%s'%str(epis)

		title = re.findall('span>\s*<span>([^<]+)',epi,re.DOTALL)
		if title:
			title = re.sub("<[^>]*>","",title[0].strip())
		else:
			title = nazwa.split('-')[-1]
		title = title+' ('+seas+episod+')'
		href = parseDOM(epi, 'a', ret='href')[-1]
		href = 'https://fmovies.to'+href if href.startswith('/') else href
		
		out.append({'title':title ,'href':href+'|'+kname,'img':rys})

	return out
def ListSeasons(exlink):

	links= getSerial(exlink)	
	items = len(links)
	for f in links:
		add_item(name=f.get('title'), url=f.get('href'), mode='getEpisodes', image=f.get('img'), folder=True, infoLabels= {'plot':nazwa}, itemcount=items, IsPlayable=True)		
	xbmcplugin.setContent(addon_handle, 'files')	

	xbmcplugin.endOfDirectory(addon_handle)	
	
def getSerial(href):

	out=[]
	href,id = href.split('|')

	headers.update({'Referer': href})
	html = sess.get(href, headers=headers, verify=False).content

	if sys.version_info >= (3,0,0):
		html = html.decode(encoding='utf-8', errors='strict')
	idx=re.findall('data\-id\s*=\s*"([^"]+)"',html,re.DOTALL)#[0]
	#i#f idx:
	recap =		 addon.getSetting('cap_token')
	if not recap:
	
	
		recap="03AGdBq25eDJkrezDo2y"

	if idx:
		verid = getVerid(idx[0])	

		params = (
			('vrf', verid),
		
		)

		response = sess.get('https://fmovies.to/ajax/episode/list/'+idx[0], headers=headers, params=params, verify=False)
		

		html = (response.content)
		
		if sys.version_info >= (3,0,0):
			html = html.decode(encoding='utf-8', errors='strict')
		html= html.replace('\\"','"')
		

		jsondata = response.json()
		
		with io.open(jfilename, 'w', encoding='utf8') as f:
			str_ = json.dumps(jsondata,
				indent=4, sort_keys=True,
				separators=(',', ': '), ensure_ascii=False)
			f.write(to_unicode(str_))
		
		html = jsondata.get('result',None)

		sezony = parseDOM(html, 'div', attrs={'class': "head"})[0]
		
		
		
		sezonyx = re.findall('<a(.*?<)\/a>',sezony,re.DOTALL)

		for sez in sezonyx:
			sesid,title = re.findall('data\-season\s*=\s*"([^"]+)"\s*>([^<]+)<',sez,re.DOTALL)[0]

			servers = ''
			out.append({'title':title+nazwa,'href':sesid+'|'+servers,'img':rys})
	return out
	

try:
	import string
	STANDARD_ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='
	#CUSTOM_ALPHABET =   "5uLKesbh0nkrpPq9VwMC6+tQBdomjJ4HNl/fWOSiREvAYagT8yIG7zx2D13UZFXc"   #23/05/22
	CUSTOM_ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='#'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/='

	ENCODE_TRANS = string.maketrans(STANDARD_ALPHABET, CUSTOM_ALPHABET)
	DECODE_TRANS = string.maketrans(CUSTOM_ALPHABET, STANDARD_ALPHABET)
except:
	STANDARD_ALPHABET = b'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='
	#CUSTOM_ALPHABET =   b"5uLKesbh0nkrpPq9VwMC6+tQBdomjJ4HNl/fWOSiREvAYagT8yIG7zx2D13UZFXc"  #23/05/22
	CUSTOM_ALPHABET = b'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='#'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+/='
	
	
	ENCODE_TRANS = bytes.maketrans(STANDARD_ALPHABET, CUSTOM_ALPHABET)
	DECODE_TRANS = bytes.maketrans(CUSTOM_ALPHABET, STANDARD_ALPHABET)

	
	
	
def encode2(input):
	return base64.b64encode(input).translate(ENCODE_TRANS)
def decode2(input):
	try:	
		xx= input.translate(DECODE_TRANS)
	except:
		xx= str(input).translate(DECODE_TRANS)
	return base64.b64decode(xx)

def vidcloud_deco(media_id):
	try:
		import string
	 #   STANDARD_ALPHABETx = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
		STANDARD_ALPHABETx = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' #26/05/22
		
		
	 #   CUSTOM_ALPHABETx =   '0wMrYU+ixjJ4QdzgfN2HlyIVAt3sBOZnCT9Lm7uFDovkb/EaKpRWhqXS5168ePcG='  #23/05/22
		CUSTOM_ALPHABETx =   "51wJ0FDq/UVCefLopEcmK3ni4WIQztMjZdSYOsbHr9R2h7PvxBGAuglaN8+kXT6y"  #26/05/22
	
		ENCODE_TRANSx = string.maketrans(STANDARD_ALPHABETx, CUSTOM_ALPHABETx)
		DECODE_TRANSx = string.maketrans(CUSTOM_ALPHABETx, STANDARD_ALPHABETx)
	except:
	   # STANDARD_ALPHABETx = b'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='
		STANDARD_ALPHABETx = b'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' #26/05/22
		
		
	  #  CUSTOM_ALPHABETx =   b'0wMrYU+ixjJ4QdzgfN2HlyIVAt3sBOZnCT9Lm7uFDovkb/EaKpRWhqXS5168ePcG=' #23/05/22
		CUSTOM_ALPHABETx =   b"51wJ0FDq/UVCefLopEcmK3ni4WIQztMjZdSYOsbHr9R2h7PvxBGAuglaN8+kXT6y"  #26/05/22
		
		
		ENCODE_TRANSx = bytes.maketrans(STANDARD_ALPHABETx, CUSTOM_ALPHABETx)
		DECODE_TRANSx = bytes.maketrans(CUSTOM_ALPHABETx, STANDARD_ALPHABETx)
	
		
		
		
	def encode2x(input):
		return base64.b64encode(input).translate(ENCODE_TRANSx)
	def decode2x(input):
		try:	
			xx= input.translate(DECODE_TRANSx)
		except:
			xx= str(input).translate(DECODE_TRANSx)
		return base64.b64decode(xx)
	
	
	

	try:
		media_id = encode2x(media_id)
	except:
		media_id = encode2x(media_id.encode('utf-8')).decode('utf-8')
   # seed = 'LCbu3iYC7ln24K7P'  #23/05/22
	seed = 'dOuhV3IsSvf7jeI5' #28/05/22
	
	
	
	
	
	
	#
	array_list = list(range(0, 256))
	
	j = 0;
	
	pix_color = "";
	
	length = 256;
	
	i = 0;
	for i in range(length):
	
		j = (j + array_list[i] + ord(seed[i%len(seed)]))%length
	
		tmp = array_list[i];
		array_list[i] = array_list[j];
		array_list[j] = tmp;
	
	j = i = 0;
	
	index = 0;
	for index in range(len(media_id)):
	
		i = (i + index) % length
		j = (j + array_list[i]) % length;
		tmp = array_list[i];
		array_list[i] = array_list[j];
		array_list[j] = tmp;
	
		if sys.version_info >= (3,0,0):
			try:
				pix_color += chr((media_id[index])^ array_list[(array_list[i] + array_list[j]) % length] )
			except:
				pix_color += chr(ord(media_id[index])^ array_list[(array_list[i] + array_list[j]) % length] )
		
		else:
			pix_color += chr(ord(media_id[index])^ array_list[(array_list[i] + array_list[j]) % length] )

	if sys.version_info >= (3,0,0):
		pix_color=pix_color.encode('Latin_1')

	pix_color = encode2x(pix_color)

	if sys.version_info >= (3,0,0):
		pix_color = pix_color.decode('utf-8')

	return pix_color;
	
	
#function av(n, t) {
#    var r = _0x450c;
#    for (var i, u = [], e = 0, o = r7, c = 0; c < 256; c++) u[c] = c;
#    for (c = 0; c < 256; c++) e = (e + u[c] + n[K4 + e4 + s4](c % n[ii])) % (256), i = u[c], u[c] = u[e], u[e] = i;
#    for (var c = 0, e = 0, f = 0; p.rdOti(f, t[ii]); f++) e = (e + u[c = p[r(1086) + "Dg"](c, 1) % (256)]) % (256), i = u[c], u[c] = u[e], u[e] = i, o += A3[e5 + qt + e4](t[K4 + e4 + s4](f) ^ u[p.AXpPG(u[c] + u[e], 256)]);
#    return o;
#}
	
def dekodujNowe(t,n): #16.08.21
	#n = encode2(n)
	r=[]
	i=[]
	u=0
	x=''
	c = 256
	for o in range(c):
		i.append(o)
	o=0

	for o in range(c):
		#u = (u + i[o] + t.charCodeAt(o % t.length)) % c
		u = (u + i[o] + ord(t[o%len(t)]))%c
		r = i[o]
		i[o] = i[u]
		i[u] = r
	e = 0
	u = 0
	o =0
	for e in range(len(n)):
	#e+=1
		o = (o + e) % c
		u = (u + i[o]) % c
		r = i[o]
		i[o] = i[u]
		i[u] = r
	#x += String.fromCharCode(n.charCodeAt(e) ^ i[(i[o] + i[u]) % c])
		if sys.version_info >= (3,0,0):
			try:
				x += chr((n[e])^ i[(i[o] + i[u]) % c] )
			except:
				x += chr(ord(n[e])^ i[(i[o] + i[u]) % c] )
		else:
			x += chr(ord(n[e])^ i[(i[o] + i[u]) % c] )
	return x


def dekoduj(r,o):

	t = []
	e = []
	n = 0
	a = ""
	for f in range(256): 
		e.append(f)

	for f in range(256):

		n = (n + e[f] + ord(r[f % len(r)])) % 256
		t = e[f]
		e[f] = e[n]
		e[n] = t

	f = 0
	n = 0
	for h in range(len(o)):
		f = f + 1
		n = (n + e[f % 256]) % 256
		if not f in e:
			f = 0
			t = e[f]
			e[f] = e[n]
			e[n] = t

			a += chr(ord(o[h]) ^ e[(e[f] + e[n]) % 256])
		else:
			t = e[f]
			e[f] = e[n]
			e[n] = t
			if sys.version_info >= (3,0,0):
				#a += chr((o[h]) ^ e[(e[f] + e[n]) % 256])
				
				try:
					a += chr((o[h]) ^ e[(e[f] + e[n]) % 256])#x += chr((n[e])^ i[(i[o] + i[u]) % c] )
				except:
					a += chr(ord(o[h]) ^ e[(e[f] + e[n]) % 256])#x += chr(ord(n[e])^ i[(i[o] + i[u]) % c] )
				
				
				
				
				
				
				
			else:
				a += chr(ord(o[h]) ^ e[(e[f] + e[n]) % 256])

	return a

def PLchar(char):
	if type(char) is not str:
		char=char.encode('utf-8')
	char = char.replace('\\u0105','\xc4\x85').replace('\\u0104','\xc4\x84')
	char = char.replace('\\u0107','\xc4\x87').replace('\\u0106','\xc4\x86')
	char = char.replace('\\u0119','\xc4\x99').replace('\\u0118','\xc4\x98')
	char = char.replace('\\u0142','\xc5\x82').replace('\\u0141','\xc5\x81')
	char = char.replace('\\u0144','\xc5\x84').replace('\\u0144','\xc5\x83')
	char = char.replace('\\u00f3','\xc3\xb3').replace('\\u00d3','\xc3\x93')
	char = char.replace('\\u015b','\xc5\x9b').replace('\\u015a','\xc5\x9a')
	char = char.replace('\\u017a','\xc5\xba').replace('\\u0179','\xc5\xb9')
	char = char.replace('\\u017c','\xc5\xbc').replace('\\u017b','\xc5\xbb')
	char = char.replace('&#8217;',"'")
	char = char.replace('&#8211;',"-")	
	char = char.replace('&#8230;',"...")	
	char = char.replace("&gt;",">")	
	char = char.replace("&Iacute;","Í").replace("&iacute;","í")
	char = char.replace("&icirc;","î").replace("&Icirc;","Î")
	char = char.replace('&oacute;','ó').replace('&Oacute;','Ó')
	char = char.replace('&quot;','"').replace('&amp;quot;','"')
	char = char.replace('&bdquo;','"').replace('&rdquo;','"')
	char = char.replace("&Scaron;","Š").replace("&scaron;","š")
	char = char.replace("&ndash;","-").replace("&mdash;","-")
	char = char.replace("&Auml;","Ä").replace("&auml;","ä")

	char = char.replace('&#8217;',"'")
	char = char.replace('&#8211;',"-")	
	char = char.replace('&#8230;',"...")	
	char = char.replace('&#8222;','"').replace('&#8221;','"')	
	char = char.replace('[&hellip;]',"...")
	char = char.replace('&#038;',"&")	
	char = char.replace('&#039;',"'")
	char = char.replace('&quot;','"')
	char = char.replace('&nbsp;',".").replace('&amp;','&')
	
	
	
	char = char.replace('Napisy PL',"[COLOR lightblue](napisy pl)[/COLOR]")
	char = char.replace('Lektor PL',"[COLOR lightblue](lektor pl)[/COLOR]")
	char = char.replace('Dubbing PL',"[COLOR lightblue](dubbing pl)[/COLOR]")	
	return char	

	
def router(paramstring):
	args = dict(parse_qsl(paramstring))
	
	if args:
		mode = args.get('mode', None)

		if mode == 'listmovies':
			ListMovies(exlink,page)
		elif mode == 'getLinks':
			getLinks(exlink)	
		elif mode == 'playlink':
			PlayLink(exlink)
			
		elif mode == 'menumov':
			menuMovies()
		elif mode == 'menutvs':
			menuTVshows()
			
		elif 'filtr' in mode:
			ff = mode.split(':')[1]
			if 'wer' in ff:
				dd='quality:'

				label=['all',"HD","HDRip","SD","TS","CAM"]
				value=['',"quality[]=HD","quality[]=HDRip","quality[]=SD","quality[]=TS","quality[]=CAM"]

			
			elif 'kraj' in ff:
				dd='country:'

				label=['all',"Argentina","Australia","Austria","Belgium","Brazil","Canada","China","Czech Republic","Denmark","Finland","France","Germany","Hong Kong","Hungary","India","Ireland","Israel","Italy","Japan","Luxembourg","Mexico","Netherlands","New Zealand","Norway","Philippines","Poland","Romania","Russia","South Africa","South Korea","Spain","Sweden","Switzerland","Thailand","Turkey","United Kingdom","United States"]
				value=['',"country[]=181863","country[]=181851","country[]=181882","country[]=181849","country[]=181867","country[]=181861","country[]=108","country[]=181859","country[]=181855","country[]=181877","country[]=11","country[]=1025332","country[]=2630","country[]=181876","country[]=34","country[]=181862","country[]=181887","country[]=181857","country[]=36","country[]=181878","country[]=181852","country[]=181848","country[]=181847","country[]=181901","country[]=1025339","country[]=181880","country[]=181895","country[]=181860","country[]=181850","country[]=1025429","country[]=181871","country[]=181883","country[]=181869","country[]=94","country[]=1025379","country[]=8","country[]=2"]

			elif 'rok' in ff:
				dd='year:'
				label=['all',"2023","2022","2021","2020","2019","2018","2017","2016","2015","2014","2013","2012","2011","2010","2009","2008","2007","2006","2005","2004","2003","2000s","1990s","1980s","1970s","1960s","1950s","1940s","1930s","1920s","1910s"]
				value=['',"year[]=2023","year[]=2022","year[]=2021","year[]=2020","year[]=2019","year[]=2018","year[]=2017","year[]=2016","year[]=2015","year[]=2014","year[]=2013","year[]=2012","year[]=2011","year[]=2010","year[]=2009","year[]=2008","year[]=2007","year[]=2006","year[]=2005","year[]=2004","year[]=2003","year[]=2000s","year[]=1990s","year[]=1980s","year[]=1970s","year[]=1960s","year[]=1950s","year[]=1940s","year[]=1930s","year[]=1920s","year[]=1910s"]
			elif 'raty' in ff:
				dd= 'rating:'
				label=['all',"12","13+","16+","18","18+","AO","C","E","G","GP","M","M/PG","MA-13","MA-17","NC-17","PG","PG-13","R","TV_MA","TV-13","TV-14","TV-G","TV-MA","TV-PG","TV-Y","TV-Y7","TV-Y7-FV","X"]
				value=['',"rating[]=12","rating[]=13%2B","rating[]=16%2B","rating[]=18","rating[]=18%2B","rating[]=AO","rating[]=C","rating[]=E","rating[]=G","rating[]=GP","rating[]=M","rating[]=M%2FPG","rating[]=MA-13","rating[]=MA-17","rating[]=NC-17","rating[]=PG","rating[]=PG-13","rating[]=R","rating[]=TV_MA","rating[]=TV-13","rating[]=TV-14","rating[]=TV-G","rating[]=TV-MA","rating[]=TV-PG","rating[]=TV-Y","rating[]=TV-Y7","rating[]=TV-Y7-FV","rating[]=X"]

			elif 'kat' in ff:
				dd='genre:'
				
				label=['all',"action","adult","adventure","animation","biography","comedy","costume","crime","documentary","drama","family","fantasy","film-noir","game-show","history","horror","kungfu","music","musical","mystery","news","reality","reality-tv","romance","sci-fi","short","sport","talk","talk-show","thriller","tv movie","tv show","war","western"]
				value=['genre_mode=and',"genre[]=25","genre[]=1068691","genre[]=17","genre[]=10","genre[]=215","genre[]=14","genre[]=1693","genre[]=26","genre[]=131","genre[]=1","genre[]=43","genre[]=31","genre[]=1068395","genre[]=212","genre[]=47","genre[]=74","genre[]=248","genre[]=199","genre[]=1066604","genre[]=64","genre[]=1066549","genre[]=1123750","genre[]=4","genre[]=23","genre[]=15","genre[]=1066916","genre[]=44","genre[]=1124002","genre[]=1067786","genre[]=7","genre[]=1123752","genre[]=139","genre[]=58","genre[]=28"]

			elif 'sort' in ff:
				dd='sort (by):'
				value=["sort=default","sort=recently_updated","sort=recently_added","sort=release_date","sort=trending","sort=title_az","sort=scores","sort=imdb","sort=most_watched","most_favourited"]
				label=["default","recently updated","recently added","release date","trending","title a-z","scores","imdb","most watched","most favourited"]

			elif 'nap' in ff:
				dd='subtitles:'
				value=["", "subtitle[]=1","subtitle[]=0"]
				label=["all","on","off"]
				
			if 'sort' in ff or 'nap' in ff:
				sel = xbmcgui.Dialog().select('Select '+dd,label)
			else:
			
				sel = xbmcgui.Dialog().multiselect('Select '+dd,label)
			if sel:#<=-1: quit()#s=0
			
				if isinstance(sel,list):
					
					if 0 in sel: sel=[0]
					v = '&'+'%s'%('&'.join( [ value[i] for i in sel])) if sel[0]!=0 else ''
					n = ', '.join( [ label[i] for i in sel])
				else:
					sel = sel if sel>-1 else quit()
					v = '&'+'%s'%value[sel] if value[sel] else ''
					n = label[sel]
				
				addon.setSetting(ff+'V',v)
				addon.setSetting(ff+'N',n)
				
				fsortv = addon.getSetting('fsortV')
				
				fkatv = addon.getSetting('fkatV')
				
				fkrajv = addon.getSetting('fkrajV')
				
				frokv = addon.getSetting('frokV')
				
				fwerv = addon.getSetting('fwerV')
				
				fratyv = addon.getSetting('fratyV')
				
				sratyv = addon.getSetting('sratyV')
				
				ssortv = addon.getSetting('ssortV')
				
				skatv = addon.getSetting('skatV')
				
				skrajv = addon.getSetting('skrajV')
				
				srokv = addon.getSetting('srokV')
				
				swerv = addon.getSetting('swerV')
				
				dataf=fkatv+fnapv+fwerv+fsortv+frokv+fkrajv+fratyv
				datas=skatv+snapv+swerv+ssortv+srokv+skrajv+sratyv
				
				addon.setSetting('fdata',dataf)
				addon.setSetting('sdata',datas)
				xbmc.executebuiltin('Container.Refresh')
			else:
				quit()
		elif mode =='getseasons':
			ListSeasons(exlink)
		
		elif mode =='getEpisodes':
			ListEpisodes(exlink)

		elif mode == 'getLinksSerial':
			getLinksSerial(exlink)

		elif mode == "resetfil":

			addon.setSetting(exlink+'sortN','default')
			addon.setSetting(exlink+'sortV','&sort=default')
			
			addon.setSetting(exlink+'katN','all')
			addon.setSetting(exlink+'katV','')
			
			addon.setSetting(exlink+'krajN','all')
			addon.setSetting(exlink+'krajV','')
			
			addon.setSetting(exlink+'rokN','all')
			addon.setSetting(exlink+'rokV','')
			
			addon.setSetting(exlink+'napN','all')
			addon.setSetting(exlink+'napV','')
			
			
			addon.setSetting(exlink+'ratyN','all')
			addon.setSetting(exlink+'ratyV','')
			
			addon.setSetting(exlink+'data','&sort=default')
			xbmc.executebuiltin("Container.Refresh") 
			
		elif mode=='search':
			query = xbmcgui.Dialog().input(u'Search...', type=xbmcgui.INPUT_ALPHANUM)
			if query:  
				url = 'https://fmovies.to/filter?keyword='+query.replace(' ','+')
				ListMovies(url,'1')

			else:
				quit()
	else:
		home()	
if __name__ == '__main__':
	router(sys.argv[2][1:])
