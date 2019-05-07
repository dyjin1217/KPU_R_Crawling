temp = URLdecode("%26%2344221%3B%26%2350689%3B%26%2354617%3B")
s <- c()
s[1] <- intToUtf8(44221)
s[2] <- intToUtf8(50689)
s[3] <- intToUtf8(54617)

#paste(s,collapse = "")