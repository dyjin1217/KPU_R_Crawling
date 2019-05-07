#install.packages("httr",dependencies = T)

library(httr)

d1 <- GET("http://comic.naver.com/webtoon/list.nhn?titleId=183559&weekday=mon")
d2 <- GET("http://comic.naver.com/webtoon/list.nhn",query=list(titleId=183559,weekday="
mon"))


d1_result <- content(d1,"text")
cat(d1_result,"\n")

d2_result <- content(d2,"text")
cat(d1_result,"\n")
