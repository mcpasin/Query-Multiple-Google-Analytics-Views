# Query-Multiple-Google-Analytics-Views
How to Query Multiple Google Analytics View IDs using the RGoogleAnalytics package

The problem:
Extracting Google Analytics data from one website is pretty easy, and there are several options to do it quickly. But what if you need to extract data from multiple websites or, to be more precise, from multiple Views?
The current Query Explorer version allows you to query only one View ID at a time. Despite its plural nomenclature (ids), the View ID is a unique value as explained in Core Reporting API documentation, and you will  have to run your request several times in order to query multiple websites.

Solution:
To query multiple Google Analytics Views at once, I used R and the RGoogleAnalytics with for loop. Here are the steps I followed:

1) Step 1: Authenticate to Google Analytics via RGoogleAnalytics package
2) Step 2:  Create the View IDs category
3) Step 3: Initialize an empty data frame
4) Step 4: Run the for loop over each category

More info here: http://www.analyticsforfun.com/2015/05/query-multiple-google-analytics-view.html

