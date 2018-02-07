# stock-widget

[Übersicht](http://tracesof.net/uebersicht/) widget to display stock prices pulled from [Alpha Vantage](https://www.alphavantage.co/).

![stock-widget in action](screenshot.png)

## Installation
- Install [Übersicht](http://tracesof.net/uebersicht/) if you haven't already.
- Download the stock-widget zip file.
- Unzip the downloaded file.
- Move the extracted folder 'stock.widget' to your Übersicht widgets folder.

## Info
Uses the (somtimes unreliable) [Alpha Vantage](https://www.alphavantage.co/) API. Occasionally the API call will return an error,
in which case the widget will display blanks in place of the stock symbol, and zeroes in place
of the stock price. Also, it seems that the API call is only capable of pulling one stock price
at a time, which in my case is fine but may not be for some people.

Since most, if not all, of the existing Übersicht stock price widgets were written to use the Google or Yahoo
finance APIs (which have both since been taken down), I decided to see if I could write one using a different
API for my own personal use and decided it might in fact be worth sharing with the world. Enjoy!
