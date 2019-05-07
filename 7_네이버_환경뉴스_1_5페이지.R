library(httr)
library(rvest)

title_list <- c()
for(p in 1:5){
  URL <- 'https://news.naver.com/main/list.nhn'
  param <- list(mode='LS2D',mid='shm',sid2=252,sid1=102,date=20190412,page=p)
  d <- GET(URL,query=param)
  html <- read_html(d, encoding="EUC-KR")
  
  title_nodes <- html_nodes(html,
  "#main_content > div.list_body.newsflash_body > ul.type06_headline > li > dl > dt:nth-child(2) > a")
  titles <- html_text(title_nodes)
  #url <- html_attrs(title_nodes)
  
  titles <- gsub("[\t\r\n]","",titles)
  titles <- trimws(titles, which="left")
  titles <- trimws(titles, which="right")
  title_list <- c(title_list,titles)
}
title_list
