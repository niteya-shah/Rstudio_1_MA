#Twitter 1 - Working using my Keys
library("curl")
library("twitteR")
library("ROAuth")

download.file(url="http://curl.haxx.se/ca/cacert.pem",destfile="cacert.pem")

#different for each account
consumerKey="	IorE6VAmI5oyyLcCLeUVFPGxt"
consumerSecret="UcwSWdWqgdJpJsbaYzR7U8JCUwyzJf7v3Br22WofWjjozuKW29"
AccessToken="977802952734924801-50z2JEF5tw9WfxrjcttXBKc0QlZ6nCp"
AccessTokenSecret="FkWaFW8yu4PLWV5NMlhdnwNRQk8YRcpuL1nryNuhYRcPa"

#Commont for all accounts except the keys

cred <- OAuthFactory$new(consumerKey=consumerKey, consumerSecret=consumerSecret, requestURL='https://api.twitter.com/oauth/request_token', accessURL='https://api.twitter.com/oauth/access_token', authURL='https://api.twitter.com/oauth/authorize')


cred$handshake(cainfo="cacert.pem") # it will take browser
save(cred, file="twitter authentication.Rdata") # store this to avoid asking again


#Load saved authentication cert
load("twitter authentication.Rdata")
#registerTwitterOAuth(cred)

setup_twitter_oauth(consumerKey, consumerSecret, AccessToken, AccessTokenSecret)

search.string <- "#businessanalytics"
no.of.tweets <- 100

tweets <- searchTwitter(search.string, n=no.of.tweets,lang="en")
tweets