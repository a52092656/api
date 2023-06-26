AT=b'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='
AU='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/='
AV='getEpisodes'
AW='Links are not available.'
AX=' - [I][COLOR khaki]'
AY='03AGdBq25eDJkrezDo2y'
AZ='https://fmovies.to/ajax/episode/list/'
Aa='duration'
Ab='country'
Ac='itemprop'
Ad='quality'
Ae='span>(\\d+)\\s*min<'
Af='Country\\:(.+?)<\\/div>'
Ag='Genre\\:(.+?)<\\/div>'
Ah='<[^>]*>'
Ai='section'
Aj='getseasons'
Ak='menutvs'
Al='menumov'
Am='DefaultAddonService.png'
An='[I][COLOR violet][B]Reset all filters[/COLOR][/I][/B]'
Ao='-\t  [COLOR lightblue]rating:[/COLOR] [B]'
Ap='-\t  [COLOR lightblue]quality:[/COLOR] [B]'
Aq='-\t  [COLOR lightblue]year:[/COLOR] [B]'
Ar='-\t  [COLOR lightblue]genre:[/COLOR] [B]'
As='-\t  [COLOR lightblue]country:[/COLOR] [B]'
At='-\t  [COLOR lightblue]sort:[/COLOR] [B]'
Au='skrajV'
Av='ssortV'
Aw='sratyV'
Ax='fratyV'
Ay='fkrajV'
Az='fsortV'
A_='profile'
AA='result'
AB='[B]Error[/B]'
AC='playlink'
AD='Referer'
AE='Latin_1'
AF='https://fmovies.to'
AG='https:'
AH='videos'
AI='getLinks'
AJ='data'
AK='resetfil'
AL='DefaultAddonsSearch.png'
AM='[COLOR lightblue]Search[/COLOR]'
AN='url'
t='\\"'
u='vrf'
v='span'
w='>([^<]+)<\\/a>'
x='data\\-id\\s*=\\s*"([^"]+)"'
y='genre'
z='src'
A0='div'
A1='&sort=default'
A2='search'
A3='listmovies'
A4='DefaultMovies.png'
A5='1'
A6=bytes
A7=quit
i='&'
j='-'
k=', '
l='year'
m='/'
n='default'
g=str
e='strict'
f='plot'
d='href'
Y='"'
Z='|'
a='class'
b=range
c=int
T='img'
U='DefaultRecentlyAddedMovies.png'
V='[/B]'
W=chr
X=ord
R=len
L='title'
M='utf-8'
J=None
I=True
E='all'
D=False
A=''
import sys as G,os,re as C,json as AO,base64 as A8
if G.version_info>=(3,0,0):B0=g;from resources.lib.cmf3 import parseDOM as H,replaceHTMLCodes;from urllib.parse import unquote,parse_qs,parse_qsl as AP,quote,urlencode,quote_plus
else:B0=unicode;from resources.lib.cmf2 import parseDOM as H,replaceHTMLCodes;from urllib import unquote,quote,urlencode,quote_plus;from urlparse import parse_qsl as AP,parse_qs
import io
from resources.lib import recaptcha_v2 as BC
import xbmc as AQ,xbmcvfs,requests as BD,xbmcgui as S,xbmcplugin as N,xbmcaddon as BE,resolveurl as BF
BG=G.argv[0]
P=c(G.argv[1])
A9=dict(AP(G.argv[2][1:]))
B=BE.Addon(id='plugin.video.fmoviesto')
BH=B.getAddonInfo('path')
try:o=xbmcvfs.translatePath(B.getAddonInfo(A_))
except:o=AQ.translatePath(B.getAddonInfo(A_)).decode(M)
if not os.path.exists(o):os.makedirs(o)
B1=os.path.join(o,'jfilename')
B2=os.path.join(o,'napisy')
BI=BH+'/resources/'
B3=BI+'fanart.jpg'
K=A9.get(AN,J)
h=A9.get(L,J)
B4=A9.get('image',J)
BJ=A9.get('page',[1])[0]
BK=B.getSetting(Az)
BL=B.getSetting('fsortN')if BK else n
BM=B.getSetting('fkatV')
BN=B.getSetting('fkatN')if BM else E
BO=B.getSetting(Ay)
BP=B.getSetting('fkrajN')if BO else E
BQ=B.getSetting('frokV')
BR=B.getSetting('frokN')if BQ else E
BS=B.getSetting('fwerV')
BT=B.getSetting('fwerN')if BS else E
B5=B.getSetting('fnapV')
C4=B.getSetting('fnapN')if B5 else E
BU=B.getSetting(Ax)
BV=B.getSetting('fratyN')if BU else E
BW=B.getSetting(Aw)
BX=B.getSetting('sratyN')if BW else E
B6=B.getSetting('snapV')
C5=B.getSetting('snapN')if B6 else E
BY=B.getSetting(Av)
BZ=B.getSetting('ssortN')if BY else n
Ba=B.getSetting('skatV')
Bb=B.getSetting('skatN')if Ba else E
Bc=B.getSetting(Au)
Bd=B.getSetting('skrajN')if Bc else E
Be=B.getSetting('srokV')
Bf=B.getSetting('srokN')if Be else E
Bg=B.getSetting('swerV')
Bh=B.getSetting('swerN')if Bg else E
Bi=B.getSetting('fdata')
Bj=B.getSetting('sdata')
Bk=I
AR='Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0'
O={'User-Agent':AR,'Accept':'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8','Accept-Language':'pl,en-US;q=0.7,en;q=0.3','Connection':'keep-alive','Upgrade-Insecure-Requests':A5,'TE':'Trailers'}
Q=BD.Session()
def Bl(query):return BG+'?'+urlencode(query)
def F(url,name,image,mode,folder=D,IsPlayable=D,infoLabels=D,movie=I,itemcount=1,page=1,fanart=B3,moviescount=0):
	D=infoLabels;B=name;A=image;C=S.ListItem(label=B)
	if IsPlayable:C.setProperty('IsPlayable','True')
	if not D:D={L:B,f:B}
	C.setInfo(type='video',infoLabels=D);C.setArt({'thumb':A,'poster':A,'banner':A,'icon':A,'fanart':B3});E=N.addDirectoryItem(handle=P,url=Bl({'mode':mode,AN:url,'page':page,'moviescount':moviescount,'movie':movie,L:B,'image':A}),listitem=C,isFolder=folder);N.addSortMethod(P,sortMethod=N.SORT_METHOD_NONE,label2Mask='%R, %Y, %P');return E
def Bm():F('https://fmovies.to/filter?keyword=&type[]=movie','List movies',A4,A3,I);F(A,At+BL+V,U,'filtr:fsort',folder=D,fanart=A);F(A,As+BP+V,U,'filtr:fkraj',folder=D,fanart=A);F(A,Ar+BN+V,U,'filtr:fkat',folder=D,fanart=A);F(A,Aq+BR+V,U,'filtr:frok',folder=D,fanart=A);F(A,Ap+BT+V,U,'filtr:fwer',folder=D,fanart=A);F(A,Ao+BV+V,U,'filtr:fraty',folder=D,fanart=A);F(A,AM,AL,A2,I);F('f',An,Am,AK,folder=D);N.endOfDirectory(P)
def Bn():F('https://fmovies.to/filter?keyword=&type[]=tv','List tv-series',A4,A3,I);F(A,At+BZ+V,U,'filtr:ssort',folder=D,fanart=A);F(A,As+Bd+V,U,'filtr:skraj',folder=D,fanart=A);F(A,Ar+Bb+V,U,'filtr:skat',folder=D,fanart=A);F(A,Aq+Bf+V,U,'filtr:srok',folder=D,fanart=A);F(A,Ap+Bh+V,U,'filtr:swer',folder=D,fanart=A);F(A,Ao+BX+V,U,'filtr:sraty',folder=D,fanart=A);F('s',An,Am,AK,folder=D);F(A,AM,AL,A2,I);N.endOfDirectory(P)
def Bo():
	C='https://fmovies.to/movies'
	try:
		if B.getSetting('pic')!=A5:Bp()
	except:pass
	F(C,'Movies',A4,Al,I);F(C,'TV-Series',A4,Ak,I);F(A,AM,AL,A2,I);N.endOfDirectory(P)
def Bp():
	for C in['f','s']:B.setSetting(C+'sortN',n);B.setSetting(C+'sortV',A1);B.setSetting(C+'katN',E);B.setSetting(C+'katV',A);B.setSetting(C+'krajN',E);B.setSetting(C+'krajV',A);B.setSetting(C+'rokN',E);B.setSetting(C+'rokV',A);B.setSetting(C+'napN',E);B.setSetting(C+'napV',A);B.setSetting(C+'ratyN',E);B.setSetting(C+'ratyV',A);B.setSetting(C+AJ,A1);B.setSetting('pic',A5);return
def B7(exlink,page):
	K=exlink;C,E,M=Bq(K,page);O=C;G=R(C);H=AI;J=I
	for B in O:F(name=B.get(L),url=B.get(d),mode=H,image=B.get(T),folder=J,infoLabels={f:B.get(L),L:B.get(L)},itemcount=G,IsPlayable=D)
	Q=E;G=R(E);H=Aj;J=I
	for B in Q:F(name=B.get(L),url=B.get(d),mode=H,image=B.get(T),folder=J,infoLabels={f:B.get(L),L:B.get(L)},itemcount=G)
	if M:F(name='[COLOR blue]>> Next page [/COLOR]',url=K,mode=A3,image=A,folder=I,page=M)
	if C or E:N.setContent(P,AH);N.endOfDirectory(P)
def Bq(url,page=1):
	X='code';Y='\\&page=\\d+';h='&page=';N='&page=%d';I=page;B=url
	if'?keyword=&'in B:
		u=Bj if'=tv'in B else Bi
		if h in B:B=C.sub(Y,N%c(I),B)
		else:B=B+u+N%c(I)
	elif h in B:B=C.sub(Y,N%c(I),B)
	else:B=B+N%c(I)
	v='&amp;page=%d"'%(c(I)+1);w=Q.get(B,verify=D,headers=O);J=w.content
	if G.version_info>=(3,0,0):J=J.decode(encoding=M,errors=e)
	U=[];V=[];i=D;j=H(J,'ul',attrs={a:'pagination'})
	if j:i=g(c(I)+1)if v in j[0]else D
	k=H(J,A0,attrs={a:'movies\\s+.*?'})[0];P=[(A.start(),A.end())for A in C.finditer('<div class="item"',k)];P.append((-1,-1));U=[];V=[]
	for n in b(R(P[:-1])):
		K=k[P[n][1]:P[n+1][0]]
		try:F=H(K,T,ret=z)[0]
		except:F=H(K,T,ret='data-src')[0]
		F=AG+F if F.startswith('//')else F;S=H(K,'a')[-1];E=H(K,'a',ret=d)[-1];id=C.findall('([^\\-]+$)',E)[0];E=AF+E if E.startswith(m)else E;W=H(J,'i',attrs={a:'type'});W=W[0].strip()if W else A;o=A;p=C.findall('data\\-tip\\s*=\\s*"(.+?)"',K)[0];p='https://fmovies.to/ajax/film/tooltip/'+p;q=A;r=A;t=A
		if'to/tv/'in E:S=S+' [COLOR gold](serie)[/COLOR]';V.append({L:s(S),d:E+Z+id,T:F,f:s(o),y:q,l:t,X:r})
		else:U.append({L:s(S),d:E+Z+id,T:F,f:s(o),y:q,l:t,X:r})
	return U,V,i
def p(id):
	F='DZmuZuXqa9O0z3b7';F='MPPBJLgFwShfqIBx';I=id;D=BB(F,I)
	if G.version_info>=(3,0,0):D=D.encode(AE)
	E=BA(D)
	if G.version_info>=(3,0,0):E=E.decode(M)
	def H(matchobj):
		C=matchobj.group(0)
		if C<='Z':A=90
		else:A=122
		B=X(C)+13
		if A>=B:A=B
		else:A=B-26
		D=W(A);return D
	def J(t):
		E='[a-zA-Z]';t=C.sub(E,H,t);t=C.sub(E,H,t);F=A
		for B in b(R(t)):
			D=X(t[B])
			if D==0:D=0
			elif B%7==4:D-=6
			elif B%7==3:D-=4
			elif B%7==5:D+=6
			elif B%7==1 or B%7==0 or B%7==6:D-=2
			elif B%7==2:D+=6
			F+=W(D)
		return F[::-1]
	B=J(E)
	if G.version_info>=(3,0,0):B=B.encode(AE)
	B=BA(B)
	if G.version_info>=(3,0,0):B=B.decode(M)
	return B
def Br(exlink):
	n='https://fmovies.to/ajax/server/list/';o='.to/tv/';W,id=exlink.split(Z);B=Q.get(W,headers=O,verify=D).content
	if G.version_info>=(3,0,0):B=B.decode(encoding=M,errors=e)
	K=C.findall(x,B,C.DOTALL)
	if K:
		L=H(B,Ai,attrs={'id':'w\\-info.*?'})[0];U=H(L,A0,attrs={a:'description\\s*cts.*?'});U=s(U[0])if U else A;U=C.sub(Ah,A,U);E=H(L,T,ret=z);E=E[0]if E else A;E=AG+E if E.startswith('//')else E;X=C.findall(Ag,L);X=X[0]if X else A;j=C.findall(w,X);A1=k.join([A.strip().lower()for A in j])if j else A;b=C.findall(Af,L);b=b[0]if b else A;A2=C.findall(w,b);A3=k.join([A.strip()for A in A2])if j else A;d=C.findall(Ae,L);d=c(d[0])*60 if d else A;m=H(L,v,attrs={a:Ad});m=m[0].strip()if m else A;g=H(L,v,attrs={Ac:'dateCreated'});g=g[0].strip()if g else A;A4={f:U,y:A1,Ab:A3,Aa:d,l:g};O.update({AD:W})
		if o in W:i=p(id)
		else:
			K=C.findall('class\\s*=\\s*"watch".*?data\\-id\\s*=\\s*"([^"]+)',B,C.DOTALL);i=p(K[0]);V=(u,i),;J=Q.get(AZ+K[0],headers=O,params=V,verify=D);B=J.content
			if G.version_info>=(3,0,0):B=B.decode(encoding=M,errors=e)
			B=B.replace(t,Y);K=C.findall(x,B,C.DOTALL);i=p(K[0])
		AA=AY;V=(u,i),
		if o in W:J=Q.get(n+id,headers=O,params=V,verify=D)
		else:J=Q.get(n+K[0],headers=O,params=V,verify=D)
		B=J.content
		if G.version_info>=(3,0,0):B=B.decode(encoding=M,errors=e)
		B=B.replace(t,Y)
		if'sitekey='in B:A5=C.findall('data\\-sitekey="(.+?)"',B)[0];q=BC.UnCaptchaReCaptcha().processCaptcha(A5,lang='en');A6={'g-recaptcha-response':q};J=Q.post('https://fmovies.to/waf-verify',headers=O,data=A6,cookies=Q.cookies,verify=D);V=('id',id),('token',q);J=Q.get('https://fmovies.to/ajax/film/servers',headers=O,params=V,cookies=J.cookies,verify=D)
		B=J.content
		if G.version_info>=(3,0,0):B=B.decode(encoding=M,errors=e)
		B=B.replace(t,Y);r=C.findall('data\\-link\\-id\\s*=\\s*"([^"]+).*?<span>([^<]+)',B)
		for(A7,A8)in r:A9=h+AX+A8+'[/I] '+' [B][/COLOR][/B]';F(name=A9,url=A7+Z+W,mode=AC,image=E,folder=D,infoLabels=A4,IsPlayable=I)
		if R(r)>0:N.setContent(P,AH);N.endOfDirectory(P)
		else:S.Dialog().notification(AB,AW,S.NOTIFICATION_INFO,8000,D)
def Bs(chra):
	B=chra;C=['\\xc4\\x99','\\xc5\\x82','\\xc5\\x81','\\xc4\\x98','\\xc5\\x9b','\\xc5\\x9a']
	try:
		if G.version_info>=(3,0,0):
			B=repr(B.encode(M))
			if any(A in B for A in C):return D
			B=B.replace('\\xc3\\xaa','ę').replace('\\xc3\\x8a','Ę');B=B.replace('\\xc3\\xa6','ć').replace('\\xc3\\x86','Ć');B=B.replace('\\xc2\\xbf','ż').replace('\\xc2\\x9f','Ż');B=B.replace('\\xc2\\xb9','ą').replace('\\xc2\\x99','Ą');B=B.replace('\\xc5\\x93','ś').replace('\\xc5\\x92','Ś');B=B.replace('\\xc3\\xb3','ó').replace('\\xc3\\x93','Ó');B=B.replace('\\xc5\\xb8','ź').replace('\\xc5\\xb7','Ź');B=B.replace('\\xc2\\xb3','ł').replace('\\xc2\\x93','Ł');B=B.replace('\\xc3\\xb1','ń').replace('\\xc3\\x91','Ń');B=B.replace("b'",A);B=B.replace('\\n','\n').replace('\\r','\r');B=B.replace("\\'","'")
		else:B=B.replace('Ãª','ę').replace('Ã\x8a','Ę');B=B.replace('Ã¦','ć').replace('Ã\x86','Ć');B=B.replace('Â¿','ż').replace('Â\x9f','Ż');B=B.replace('Â¹','ą').replace('Â\x99','Ą');B=B.replace('Å\x93','ś').replace('Å\x92','Ś');B=B.replace('Ã³','ó').replace('Ã\x93','Ó');B=B.replace('Å¸','ź').replace('Å·','Ź');B=B.replace('Â³','ł').replace('Â\x93','Ł');B=B.replace('Ã±','ń').replace('Ã\x91','Ń')
	except:pass
	return B
def Bt(subtlink):
	try:
		A=Q.get(subtlink,headers=O,verify=D)
		if G.version_info>=(3,0,0):A=A.text
		else:A=A.content
		B=Bs(A);open(B2,'w').write(B);return I
	except:return D
def Bu(exlink):
	d='status';f='&Referer=';h='|User-Agent=';i='m3u8';j='sources';k='media';l='success';n='subt';V='file';T='label';id,t=exlink.split(Z);v=p(id);w=(u,v),;O.update({AD:t});E=Q.get('https://fmovies.to/ajax/server/'+id,headers=O,params=w,verify=D);W=E.content
	if G.version_info>=(3,0,0):W=W.decode(encoding=M,errors=e)
	try:o=AO.loads(W)
	except:pass
	if o:x=o.get(AA,J).get(AN,J)
	F=Bv(x);U='?sub.info=';U=U if U in F else'?subtitle_json='
	try:H,B=F.split(U)
	except:H=F;B=A
	K=[];q=unquote(B);B=D
	if q:
		E=Q.get(q,headers=O,verify=D).json()
		for X in E:B=X.get(z,J);y=X.get(V,J);B=B if B else y;A0=X.get(T,J);K.append({T:A0,n:B})
	if Bk and K:
		A1=[A.get(T)for A in K];Y=S.Dialog().select('Subtitle language',A1)
		if Y>-1:
			B=K[Y].get(n)
			if K[Y].get(T)=='Polish':B=B2 if Bt(B)else B
		else:B=D
	if'mcloud'in F or'vizcloud'in F:
		A2='(?://|\\.)((?:my?|viz)cloud\\.(?:to|digital|cloud))/(?:embed|e)/([0-9a-zA-Z]+)';a=C.findall(A2,H,C.DOTALL)
		if a:r=a[0][1];A5=a[0][0];A3=C2(r).replace('=',A).replace(m,'_');H=C.sub('/(?:embed|e)/','/info/',F).replace(r,A3.replace('=',A).replace(m,'_'))
		L=A
		try:
			E=Q.get(H,headers=O,verify=D).json();A6=[]
			if l in E:
				if E.get(l,J):
					b=E.get(k,J).get(j,J)
					for c in b:
						R=c.get(V,J)
						if i in R:L=R+h+AR+f+F;break
			elif d in E:
				if E.get(d,J)==200:
					b=E.get(AJ,J).get(k,J).get(j,J)
					for c in b:
						R=c.get(V,J)
						if i in R:L=R+h+AR+f+F;break
		except:pass
	else:
		try:L=BF.resolve(H)
		except Exception as A4:S.Dialog().notification(AB,g(A4),S.NOTIFICATION_INFO,8000,D);A7()
	if L:
		s=S.ListItem(path=L)
		if B:s.setSubtitles([B])
		N.setResolvedUrl(P,I,listitem=s)
def Bv(mainurl):A=mainurl;C=A[0:6];E=A[6:];C='hlPeNwkncH0fq9so';D=C1(A);B=BB(C,D);B=unquote(B);return B
def Bw():
	from contextlib import closing as B;from xbmcvfs import File
	with B(File(B1))as C:A=C.read()
	A=AO.loads(A);D=A.get(AA,J);return D
def Bx(hrefx):
	i='name';j=hrefx;W,X=j.split(Z);Y=Q.get(W,headers=O,verify=D).content
	if G.version_info>=(3,0,0):Y=Y.decode(encoding=M,errors=e)
	B=H(Y,Ai,attrs={'id':'w\\-info'})[0];K=H(B,A0,attrs={a:'description.*?'});J=H(B,'h1',attrs={Ac:i,a:i});J='[B]'+J[0]+'[/B] 'if J else A;K=J+'[CR]'+K[0]if K else A;E=H(B,T,ret=z);E=E[0]if E else A;E=AG+E if E.startswith('//')else E;L=C.findall(Ag,B);L=L[0]if L else A;b=C.findall(w,L);o=k.join([A.strip().lower()for A in b])if b else A;R=C.findall(Af,B);R=R[0]if R else A;p=C.findall(w,R);q=k.join([A.strip()for A in p])if b else A;U=C.findall(Ae,B);U=c(U[0])*60 if U else A;d=H(B,v,attrs={a:Ad});d=d[0].strip()if d else A;V=H(B,v,attrs={a:l});V=V[0].strip()if V else A;r={f:K,y:o,Ab:q,Aa:U,l:V};X=1
	try:g,s=C.findall('href="([^"]+)"\\n\\s*data-kname="%s".*?data\\-ep=\\\'({.*?)}'%j,htmlx,C.DOTALL)[0]
	except:X=0
	W=AF+g if g.startswith(m)else g;t=C.findall('data-id="([^"]+).*?<div>([^<]+)',htmlx,C.DOTALL);u='- '+h if J else h
	for(x,A1)in t:
		A2=J+u+AX+A1+'[/I][/COLOR] ';n=C.findall(x+'"\\:"([^"]+)',s)
		if n:F(name=A2,url=n[0]+Z+W,mode=AC,image=E,folder=D,infoLabels=r,IsPlayable=I)
	if X:N.setContent(P,AH);N.endOfDirectory(P)
	else:S.Dialog().notification(AB,AW,S.NOTIFICATION_INFO,8000,D)
def By(exlink):
	B=Bz(exlink);C=R(B)
	for A in B:F(name=A.get(L),url=A.get(d),mode=AI,image=A.get(T),folder=I,infoLabels={f:h},itemcount=C,IsPlayable=I)
	N.setContent(P,'files');N.endOfDirectory(P)
def Bz(href):
	B=href;F,Q=B.split(Z);K=Bw();M=H(K,'ul',attrs={a:'episodes','data\\-season':g(F)})[0];G=[];N=H(M,'li')
	for E in N:
		O=C.findall(x,E,C.DOTALL)[0];P='S%02d'%c(F);I=C.findall('data\\-num\\s*=\\s*"([^"]+)"',E,C.DOTALL)[0]
		try:J='E%02d'%c(I)
		except:J='E-%s'%g(I)
		D=C.findall('span>\\s*<span>([^<]+)',E,C.DOTALL)
		if D:D=C.sub(Ah,A,D[0].strip())
		else:D=h.split(j)[-1]
		D=D+' ('+P+J+')';B=H(E,'a',ret=d)[-1];B=AF+B if B.startswith(m)else B;G.append({L:D,d:B+Z+O,T:B4})
	return G
def B_(exlink):
	B=C0(exlink);C=R(B)
	for A in B:F(name=A.get(L),url=A.get(d),mode=AV,image=A.get(T),folder=I,infoLabels={f:h},itemcount=C,IsPlayable=I)
	N.setContent(P,'files');N.endOfDirectory(P)
def C0(href):
	F=href;N=[];F,id=F.split(Z);O.update({AD:F});E=Q.get(F,headers=O,verify=D).content
	if G.version_info>=(3,0,0):E=E.decode(encoding=M,errors=e)
	K=C.findall(x,E,C.DOTALL);P=B.getSetting('cap_token')
	if not P:P=AY
	if K:
		U=p(K[0]);V=(u,U),;R=Q.get(AZ+K[0],headers=O,params=V,verify=D);E=R.content
		if G.version_info>=(3,0,0):E=E.decode(encoding=M,errors=e)
		E=E.replace(t,Y);S=R.json()
		with io.open(B1,'w',encoding='utf8')as W:X=AO.dumps(S,indent=4,sort_keys=I,separators=(',',': '),ensure_ascii=D);W.write(B0(X))
		E=S.get(AA,J);b=H(E,A0,attrs={a:'head'})[0];c=C.findall('<a(.*?<)\\/a>',b,C.DOTALL)
		for f in c:g,i=C.findall('data\\-season\\s*=\\s*"([^"]+)"\\s*>([^<]+)<',f,C.DOTALL)[0];j=A;N.append({L:i+h,d:g+Z+j,T:B4})
	return N
try:import string as B8;q=AU;r=AU;B9=B8.maketrans(q,r);AS=B8.maketrans(r,q)
except:q=AT;r=AT;B9=A6.maketrans(q,r);AS=A6.maketrans(r,q)
def BA(input):return A8.b64encode(input).translate(B9)
def C1(input):
	try:A=input.translate(AS)
	except:A=g(input).translate(AS)
	return A8.b64decode(A)
def C2(media_id):
	F=media_id
	try:import string as P;I='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';J='51wJ0FDq/UVCefLopEcmK3ni4WIQztMjZdSYOsbHr9R2h7PvxBGAuglaN8+kXT6y';Q=P.maketrans(I,J);L=P.maketrans(J,I)
	except:I=b'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';J=b'51wJ0FDq/UVCefLopEcmK3ni4WIQztMjZdSYOsbHr9R2h7PvxBGAuglaN8+kXT6y';Q=A6.maketrans(I,J);L=A6.maketrans(J,I)
	def N(input):return A8.b64encode(input).translate(Q)
	def T(input):
		try:A=input.translate(L)
		except:A=g(input).translate(L)
		return A8.b64decode(A)
	try:F=N(F)
	except:F=N(F.encode(M)).decode(M)
	S='dOuhV3IsSvf7jeI5';B=list(b(0,256));D=0;E=A;H=256;C=0
	for C in b(H):D=(D+B[C]+X(S[C%R(S)]))%H;O=B[C];B[C]=B[D];B[D]=O
	D=C=0;K=0
	for K in b(R(F)):
		C=(C+K)%H;D=(D+B[C])%H;O=B[C];B[C]=B[D];B[D]=O
		if G.version_info>=(3,0,0):
			try:E+=W(F[K]^B[(B[C]+B[D])%H])
			except:E+=W(X(F[K])^B[(B[C]+B[D])%H])
		else:E+=W(X(F[K])^B[(B[C]+B[D])%H])
	if G.version_info>=(3,0,0):E=E.encode(AE)
	E=N(E)
	if G.version_info>=(3,0,0):E=E.decode(M)
	return E
def C6(t,n):
	H=[];B=[];D=0;I=A;E=256
	for C in b(E):B.append(C)
	C=0
	for C in b(E):D=(D+B[C]+X(t[C%R(t)]))%E;H=B[C];B[C]=B[D];B[D]=H
	F=0;D=0;C=0
	for F in b(R(n)):
		C=(C+F)%E;D=(D+B[C])%E;H=B[C];B[C]=B[D];B[D]=H
		if G.version_info>=(3,0,0):
			try:I+=W(n[F]^B[(B[C]+B[D])%E])
			except:I+=W(X(n[F])^B[(B[C]+B[D])%E])
		else:I+=W(X(n[F])^B[(B[C]+B[D])%E])
	return I
def BB(r,o):
	E=[];B=[];D=0;F=A
	for C in b(256):B.append(C)
	for C in b(256):D=(D+B[C]+X(r[C%R(r)]))%256;E=B[C];B[C]=B[D];B[D]=E
	C=0;D=0
	for H in b(R(o)):
		C=C+1;D=(D+B[C%256])%256
		if not C in B:C=0;E=B[C];B[C]=B[D];B[D]=E;F+=W(X(o[H])^B[(B[C]+B[D])%256])
		else:
			E=B[C];B[C]=B[D];B[D]=E
			if G.version_info>=(3,0,0):
				try:F+=W(o[H]^B[(B[C]+B[D])%256])
				except:F+=W(X(o[H])^B[(B[C]+B[D])%256])
			else:F+=W(X(o[H])^B[(B[C]+B[D])%256])
	return F
def s(char):
	C='&quot;';D='&#8230;';E='&#8211;';F='&#8217;';G='\\u0144';B='...';A=char
	if type(A)is not g:A=A.encode(M)
	A=A.replace('\\u0105','Ä\x85').replace('\\u0104','Ä\x84');A=A.replace('\\u0107','Ä\x87').replace('\\u0106','Ä\x86');A=A.replace('\\u0119','Ä\x99').replace('\\u0118','Ä\x98');A=A.replace('\\u0142','Å\x82').replace('\\u0141','Å\x81');A=A.replace(G,'Å\x84').replace(G,'Å\x83');A=A.replace('\\u00f3','Ã³').replace('\\u00d3','Ã\x93');A=A.replace('\\u015b','Å\x9b').replace('\\u015a','Å\x9a');A=A.replace('\\u017a','Åº').replace('\\u0179','Å¹');A=A.replace('\\u017c','Å¼').replace('\\u017b','Å»');A=A.replace(F,"'");A=A.replace(E,j);A=A.replace(D,B);A=A.replace('&gt;','>');A=A.replace('&Iacute;','Í').replace('&iacute;','í');A=A.replace('&icirc;','î').replace('&Icirc;','Î');A=A.replace('&oacute;','ó').replace('&Oacute;','Ó');A=A.replace(C,Y).replace('&amp;quot;',Y);A=A.replace('&bdquo;',Y).replace('&rdquo;',Y);A=A.replace('&Scaron;','Š').replace('&scaron;','š');A=A.replace('&ndash;',j).replace('&mdash;',j);A=A.replace('&Auml;','Ä').replace('&auml;','ä');A=A.replace(F,"'");A=A.replace(E,j);A=A.replace(D,B);A=A.replace('&#8222;',Y).replace('&#8221;',Y);A=A.replace('[&hellip;]',B);A=A.replace('&#038;',i);A=A.replace('&#039;',"'");A=A.replace(C,Y);A=A.replace('&nbsp;','.').replace('&amp;',i);A=A.replace('Napisy PL','[COLOR lightblue](napisy pl)[/COLOR]');A=A.replace('Lektor PL','[COLOR lightblue](lektor pl)[/COLOR]');A=A.replace('Dubbing PL','[COLOR lightblue](dubbing pl)[/COLOR]');return A
def C3(paramstring):
	L='Container.Refresh';M='Select ';N='nap';O='sort';P=dict(AP(paramstring))
	if P:
		D=P.get('mode',J)
		if D==A3:B7(K,BJ)
		elif D==AI:Br(K)
		elif D==AC:Bu(K)
		elif D==Al:Bm()
		elif D==Ak:Bn()
		elif'filtr'in D:
			F=D.split(':')[1]
			if'wer'in F:I='quality:';G=[E,'HD','HDRip','SD','TS','CAM'];H=[A,'quality[]=HD','quality[]=HDRip','quality[]=SD','quality[]=TS','quality[]=CAM']
			elif'kraj'in F:I='country:';G=[E,'Argentina','Australia','Austria','Belgium','Brazil','Canada','China','Czech Republic','Denmark','Finland','France','Germany','Hong Kong','Hungary','India','Ireland','Israel','Italy','Japan','Luxembourg','Mexico','Netherlands','New Zealand','Norway','Philippines','Poland','Romania','Russia','South Africa','South Korea','Spain','Sweden','Switzerland','Thailand','Turkey','United Kingdom','United States'];H=[A,'country[]=181863','country[]=181851','country[]=181882','country[]=181849','country[]=181867','country[]=181861','country[]=108','country[]=181859','country[]=181855','country[]=181877','country[]=11','country[]=1025332','country[]=2630','country[]=181876','country[]=34','country[]=181862','country[]=181887','country[]=181857','country[]=36','country[]=181878','country[]=181852','country[]=181848','country[]=181847','country[]=181901','country[]=1025339','country[]=181880','country[]=181895','country[]=181860','country[]=181850','country[]=1025429','country[]=181871','country[]=181883','country[]=181869','country[]=94','country[]=1025379','country[]=8','country[]=2']
			elif'rok'in F:I='year:';G=[E,'2023','2022','2021','2020','2019','2018','2017','2016','2015','2014','2013','2012','2011','2010','2009','2008','2007','2006','2005','2004','2003','2000s','1990s','1980s','1970s','1960s','1950s','1940s','1930s','1920s','1910s'];H=[A,'year[]=2023','year[]=2022','year[]=2021','year[]=2020','year[]=2019','year[]=2018','year[]=2017','year[]=2016','year[]=2015','year[]=2014','year[]=2013','year[]=2012','year[]=2011','year[]=2010','year[]=2009','year[]=2008','year[]=2007','year[]=2006','year[]=2005','year[]=2004','year[]=2003','year[]=2000s','year[]=1990s','year[]=1980s','year[]=1970s','year[]=1960s','year[]=1950s','year[]=1940s','year[]=1930s','year[]=1920s','year[]=1910s']
			elif'raty'in F:I='rating:';G=[E,'12','13+','16+','18','18+','AO','C','E','G','GP','M','M/PG','MA-13','MA-17','NC-17','PG','PG-13','R','TV_MA','TV-13','TV-14','TV-G','TV-MA','TV-PG','TV-Y','TV-Y7','TV-Y7-FV','X'];H=[A,'rating[]=12','rating[]=13%2B','rating[]=16%2B','rating[]=18','rating[]=18%2B','rating[]=AO','rating[]=C','rating[]=E','rating[]=G','rating[]=GP','rating[]=M','rating[]=M%2FPG','rating[]=MA-13','rating[]=MA-17','rating[]=NC-17','rating[]=PG','rating[]=PG-13','rating[]=R','rating[]=TV_MA','rating[]=TV-13','rating[]=TV-14','rating[]=TV-G','rating[]=TV-MA','rating[]=TV-PG','rating[]=TV-Y','rating[]=TV-Y7','rating[]=TV-Y7-FV','rating[]=X']
			elif'kat'in F:I='genre:';G=[E,'action','adult','adventure','animation','biography','comedy','costume','crime','documentary','drama','family','fantasy','film-noir','game-show','history','horror','kungfu','music','musical','mystery','news','reality','reality-tv','romance','sci-fi','short','sport','talk','talk-show','thriller','tv movie','tv show','war','western'];H=['genre_mode=and','genre[]=25','genre[]=1068691','genre[]=17','genre[]=10','genre[]=215','genre[]=14','genre[]=1693','genre[]=26','genre[]=131','genre[]=1','genre[]=43','genre[]=31','genre[]=1068395','genre[]=212','genre[]=47','genre[]=74','genre[]=248','genre[]=199','genre[]=1066604','genre[]=64','genre[]=1066549','genre[]=1123750','genre[]=4','genre[]=23','genre[]=15','genre[]=1066916','genre[]=44','genre[]=1124002','genre[]=1067786','genre[]=7','genre[]=1123752','genre[]=139','genre[]=58','genre[]=28']
			elif O in F:I='sort (by):';H=['sort=default','sort=recently_updated','sort=recently_added','sort=release_date','sort=trending','sort=title_az','sort=scores','sort=imdb','sort=most_watched','most_favourited'];G=[n,'recently updated','recently added','release date','trending','title a-z','scores','imdb','most watched','most favourited']
			elif N in F:I='subtitles:';H=[A,'subtitle[]=1','subtitle[]=0'];G=[E,'on','off']
			if O in F or N in F:C=S.Dialog().select(M+I,G)
			else:C=S.Dialog().multiselect(M+I,G)
			if C:
				if isinstance(C,list):
					if 0 in C:C=[0]
					Q=i+'%s'%i.join([H[A]for A in C])if C[0]!=0 else A;R=k.join([G[A]for A in C])
				else:C=C if C>-1 else A7();Q=i+'%s'%H[C]if H[C]else A;R=G[C]
				B.setSetting(F+'V',Q);B.setSetting(F+'N',R);U=B.getSetting(Az);V=B.getSetting('fkatV');W=B.getSetting(Ay);X=B.getSetting('frokV');Y=B.getSetting('fwerV');Z=B.getSetting(Ax);a=B.getSetting(Aw);b=B.getSetting(Av);c=B.getSetting('skatV');d=B.getSetting(Au);e=B.getSetting('srokV');f=B.getSetting('swerV');g=V+B5+Y+U+X+W+Z;h=c+B6+f+b+e+d+a;B.setSetting('fdata',g);B.setSetting('sdata',h);AQ.executebuiltin(L)
			else:A7()
		elif D==Aj:B_(K)
		elif D==AV:By(K)
		elif D=='getLinksSerial':Bx(K)
		elif D==AK:B.setSetting(K+'sortN',n);B.setSetting(K+'sortV',A1);B.setSetting(K+'katN',E);B.setSetting(K+'katV',A);B.setSetting(K+'krajN',E);B.setSetting(K+'krajV',A);B.setSetting(K+'rokN',E);B.setSetting(K+'rokV',A);B.setSetting(K+'napN',E);B.setSetting(K+'napV',A);B.setSetting(K+'ratyN',E);B.setSetting(K+'ratyV',A);B.setSetting(K+AJ,A1);AQ.executebuiltin(L)
		elif D==A2:
			T=S.Dialog().input('Search...',type=S.INPUT_ALPHANUM)
			if T:j='https://fmovies.to/filter?keyword='+T.replace(' ','+');B7(j,A5)
			else:A7()
	else:Bo()
if __name__=='__main__':C3(G.argv[2][1:])