library(httr)
library(rvest)

URL <- 'https://eungdapso.seoul.go.kr/Shr/Shr01/Shr01_lis.jsp'
d <- GET(URL)
html <- read_html(d)

title_nodes <- html_nodes(html,
"#content_cont > div.info_wrap > div > form > div.pclist_table.mt20 
> div > ul > li.pclist_list_tit42 > a")

titles <- html_text(title_nodes)
#url <- html_attrs(title_nodes)

titles <- gsub("[\t\r\n]","",titles)
titles <- trimws(titles, which="left")
titles <- trimws(titles, which="right")

#html %>% html_nodes("#content_cont > div.info_wrap > div > form > div.pclist_table.mt20 
> div > ul > li.pclist_list_tit42 > a") %>% html_text
