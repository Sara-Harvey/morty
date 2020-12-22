<H1>A Ruby/Sinatra and D3.js app ...</h1>
<H3>that could make a good visual companion for interactive journalism</h3>

Morty is a Sinatra app based on the [2017 Mortality Report](https://www1.nyc.gov/assets/doh/downloads/pdf/vs/2017sum.pdf), a Summary of Vital Statistics for the City of New York. The app scrapes the report to show death rates for individual neighborhoods, ranked. Development still in progress.

[Morty on Heroku](https://shpm.herokuapp.com/)

<b>Installation</b><br>
Clone this repository<br>
Execute<br>
`bundle install`<br>
Then<br>
`rake db:migrate`<br>
Then<br>
`shotgun`<br>

![](morty-2-gif.gif)




