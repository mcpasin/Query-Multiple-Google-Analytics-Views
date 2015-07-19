### Step 1: Authenticate to Google Analytics via RGoogleAnalytics package

library(RGoogleAnalytics)
client.id <- "yourClientID"
client.secret <- "yourClientSecret"
 
if (!file.exists("./oauth_token")) {
oauth_token <- Auth(client.id,client.secret)
oauth_token <- save(token,file="./oauth_token")
} else {
load("./oauth_token")
}
 
ValidateToken(token)

### Step 2:  Create the View IDs category

viewID<-GetProfiles(token)
viewID
 
category1<- c("79242136", "89242136", "892421","242136","242138","242140","242141")
category2<- c("54120", "54121", "54125","54126")
category3<- c("60123", "60124", "60125")

### Step 3: Initialize an empty data frame

df<-data.frame()

### Step 4: Run the for loop over each category

for (v in category1){
     start.date <- "2015-04-01"
     end.date <- "2015-04-30"
     view.id <- paste("ga:",v,sep="") #the View ID parameter need to have "ga:" in front of the ID 
 
     query.list <- Init(start.date = start.date, end.date = end.date, dimensions = "ga:date,    ga:deviceCategory, ga:channelGrouping,", metrics = "ga:sessions, ga:users, ga:bounceRate, ga:goalCompletions1", table.id = view.id)
     ga.query <- QueryBuilder(query.list)
     ga.data <- GetReportData(ga.query, token, paginate_query = F)
 
     df<-rbind(df,ga.data)
}

