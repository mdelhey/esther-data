import mechanize
import cookielib

# Following:
# http://stockrt.github.io/p/emulating-a-browser-in-python-with-mechanize/

username = ""
password = ""

#####
##### Initialize browser
#####
br = mechanize.Browser()
cj = cookielib.LWPCookieJar()
br.set_cookiejar(cj) 

br.set_handle_equiv(True)
br.set_handle_gzip(True)
br.set_handle_redirect(True)
br.set_handle_referer(True)
br.set_handle_robots(False)

# Follows refresh 0 but not hangs on refresh > 0
br.set_handle_refresh(mechanize._http.HTTPRefreshProcessor(), max_time=1)

# Want debugging messages?
#br.set_debug_http(True)
#br.set_debug_redirects(True)
#br.set_debug_responses(True)

# User-Agent (this is cheating, ok?)
br.addheaders = [('User-agent', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Gecko/2008071615 Fedora/3.0.1-1.fc9 Firefox/3.0.1')]

#####
##### Login to esther
#####
r = br.open("https://esther.rice.edu/selfserve/twbkwbis.P_ValLogin")

# Show forms
for f in br.forms():
	print f

br.select_form(nr = 0)
br.form['sid'] = username
br.form['PIN'] = password
br.submit()

#main_menu = br.response()
#print br.response().read()

r2 = br.open("https://esther.rice.edu/selfserve/swkscmt.main")
r3 = br.click(type = "submit", nr = 1)
#br.submit("Proceed to Evaluations")
