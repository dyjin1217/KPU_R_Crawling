library(httr)
library(rvest)

URL <- "http://www.naver.com"

d <- GET(URL)

html <- read_html(d)
rt_nodes <- html_nodes(html,"#PM_ID_ct > div.header > 
div.section_navbar > div.area_hotkeyword.PM_CL_realtimeKeyword_base 
> div.ah_roll.PM_CL_realtimeKeyword_rolling_base > div 
> ul > li > a > span.ah_k
")

rt_texts <- html_text(rt_nodes)