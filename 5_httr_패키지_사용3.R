library(httr)

param <- list(vPstrCategory= 'TOT',
              vPstrKeyWord= '&#44221;&#50689;&#54617;',
              vPplace= 'top',
              searchCategory = 'TOT'
)

#d3 <- POST("http://www.kyobobook.co.kr/search/SearchCommonMain.jsp", body=param,encode="form")
d3 <- GET("http://www.kyobobook.co.kr/search/SearchCommonMain.jsp", query=param)
d3_result <- content(d3,"text")
cat(d3_result,"\n")
