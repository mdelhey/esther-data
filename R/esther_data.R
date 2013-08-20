library(RCurl)
library(stringr)

username <- ""
password <- ""

loginURL <- "https://esther.rice.edu/selfserve/twbkwbis.P_WWWLogin"
authURL <- "https://esther.rice.edu/selfserve/twbkwbis.P_ValLogin"

ch <- getCurlHandle()

curlSetOpt(curl = ch,
           ssl.verifypeer = FALSE,
           useragent = "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13",
           timeout = 60,
           followlocation = TRUE,
           cookiejar = "./cookies",
           cookiefile = "./cookies")

loginpage <- getURL(loginURL, curl = ch)

authPage <- postForm(authURL, .params = list(sid = username, PIN = password), curl = ch)
authPage <- postForm(authURL, sid = username, PIN = password, submitButton = "Login", style = "POST", curl = ch)
postForm(authURL, UserID = username, submitButton = "loginform")
postForm(authURL, UserID = '')
