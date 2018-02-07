command: 'curl -s "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=MNST&interval=1min&apikey=F4EQD3QPQM6TLB54"'

refreshFrequency: 30000

style: """
    top: 35%
    right: 3.25%
    margin-left: -260px
    color: #000000
    font-family: Helvetica Neue

    table
        border: 1px solid black
        font-size: 38px
        font-weight: lighter
        font-smoothing: antialiased
        background: rgba(255,255,255,0.15)
        border-spacing: 5px
"""

render: -> """
    <table>
        <tbody></tbody>
    </table>
"""

getPrice: (output, table) ->
    price = null
    stock = null

    # In case API call returns an error
    try
        json = JSON.parse(output)
        current = json['Meta Data']['3. Last Refreshed']
        price = parseFloat(json['Time Series (1min)'][current]['1. open'])
        price = String(price.toFixed(2))
        stock = json['Meta Data']['2. Symbol']

    tbody = table.find("tbody")
    tbody.empty()

    # If price and stock are both still null, API call didn't return a valid JSON string
    if price == null and stock == null
        tbody.append "<tr><td>----</td><td>00.00</td></tr>"
    else
        tbody.append "<tr><td>#{stock}</td><td>#{price}</td></tr>"

update: (output, domEl) ->
    table = $(domEl).find("table")

    @getPrice output, table
