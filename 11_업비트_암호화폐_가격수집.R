# 필요한 패키지를 불러옵니다.
library(httr)
library(rvest)
library(jsonlite)

# 업비트 거래 암호화폐 출력
res <- GET(url = 'https://api.upbit.com/v1/market/all')

# 응답 결과
coinList <- fromJSON(content(res,as = 'text') )

# 코인 선택
coinName <- '비트코인'

# 코인 코드 얻기
coinList[coinList$korean_name == coinName, 'market']

# 관심 코인 조회
res <- GET(url = 'https://api.upbit.com/v1/ticker', query = list(markets = 'KRW-BTC') )
coinInfo <- fromJSON(content(res,as = 'text') )
coinInfo$trade_price