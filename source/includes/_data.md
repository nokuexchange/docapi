# Data

## Get instruments

```shell
curl "https://api.kamiswiss.ch/data/instruments"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = KamiApi.authorize('<api_token>');
let instruments = api.instruments();
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":[
      {
         "stock":{
            "alias":"KSC",
            "precision":8
         },
         "money":{
            "alias":"ETH",
            "precision":8
         },
         "ticker":"KSCETH",
         "enabled":true,
         "options":{
            "decimal_precision":8,
            "min_amount_pow":3,
            "max_amount_pow":8
         }
      }
   ]
}
```

This endpoint retrieves all the trading instruments.

### HTTP Request

`GET https://api.kamiswiss.ch/data/instruments`

<aside class="success">
Instruments — list of all the trading instruments available right now
</aside>

## Get market status

```shell
curl "https://api.kamiswiss.ch/data/status/:ticker"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = KamiApi.authorize('<api_token>');
let status = api.marketStatus("{ticker}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":[
     "period": 86400,
     "last": "0.91366975",
     "close": "0.91366975",
     "open": "0.78037677",
     "high": "0.99984749",
     "low": "0.50020203",
     "volume": "305306.72190451",
     "stock_volume": "407351"
   ]
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.kamiswiss.ch/data/status/:ticker`

### URL Parameters

Parameter | Description
--------- | -----------
ticker | The ticker of the trading instrument

## Get order book

```shell
curl "https://api.kamiswiss.ch/data/orderbook/:ticker/:side"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = KamiApi.authorize('<api_token>');
let orderbook_side = api.orderbook("{ticker}", "{side}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":[
      {
        "left": "7",
        "id": 309444,
        "market": "KSCETH",
        "ctime": 1545241277.558155,
        "amount": "13",
        "side": "ask",
        "price": "0.99922623"
      }
   ]
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.kamiswiss.ch/data/orderbook/:ticker/:side`

### URL Parameters

Parameter | Description
--------- | -----------
ticker | The ticker of the trading instrument
side | The market side: ask or bid


## Get history

```shell
curl "https://api.kamiswiss.ch/data/history/:ticker"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = KamiApi.authorize('<api_token>');
let history = api.history("{ticker}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":[
      {
        "time": 1545256146.774268,
        "id": 160519,
        "price": "0.51913934",
        "type": "buy",
        "amount": "15"
      }
   ]
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.kamiswiss.ch/data/history/:ticker`

### URL Parameters

Parameter | Description
--------- | -----------
ticker | The ticker of the trading instrument


## Get candles

```shell
curl "https://api.kamiswiss.ch/data/candles/:ticker"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = KamiApi.authorize('<api_token>');
let candles = api.candles("{ticker}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":[
      {
        [
          1545253200, // unixtime
          "0.58426724", // o
          "0.5582087",  // c
          "0.99922623", // h
          "0.50040023", // l
          "17317",      // stock volume
          "12907.18433863", // money volume
          "KSCETH" // ticker
        ]
      }
   ]
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.kamiswiss.ch/data/candles/:ticker`

### URL Parameters

Parameter | Description
--------- | -----------
ticker | The ticker of the trading instrument
