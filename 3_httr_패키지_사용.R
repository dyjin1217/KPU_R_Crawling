#install.packages("httr",dependencies = T)

library(httr)

d <- GET("http://www.naver.com")
result <- content(d,"text")
cat(result,"\n")
