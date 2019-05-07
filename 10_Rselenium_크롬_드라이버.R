library(httr)
library(rvest)
library(RSelenium)

remDrv <- remoteDriver(remoteServerAddr="localhost", 
                      port=4444L, browserName="chrome")
remDrv$open()

remDrv$navigate(url = "https://www.kyobobook.co.kr/login/login.laf")

id <- remDrv$findElement(using='css',value='#memid')
pw <- remDrv$findElement(using='css',value='#pw')

id$sendKeysToElement(sendKeys=list('eodydsla'))
pw$sendKeysToElement(sendKeys=list('eodydsla'))

# ¹öÆ°
btn <- remDrv$findElement(using='css',value='#login_zone1 > p:nth-child(2) > input')
btn$clickElement()

remDrv$navigate(url = "http://order.kyobobook.co.kr/cart/cartListMain")
d <- remDrv$getPageSource()[[1]]
html <- read_html(d,encoding="UTF-8")
book_nodes <- html_nodes(html,
  css= '#cartFrm > table > tbody > tr > td.align_left.ver_top > div > a:nth-child(2) > span
')
html_text(book_nodes)
