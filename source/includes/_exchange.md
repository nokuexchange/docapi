# Exchange 

## Create order

```shell
curl "https://api.noku.exchange/exchange/order/:ticker"
  -X PUT
  -d '{market, price, amount, side, defaultAccount}'
  -H "Content-Type: application/json"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let candles = api.orderCreate("{ticker}", "{price}", "{amount}", "{side}", "{type:-limit}", "{defaultAccount:-default}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":{
      amount: "10"
      time: 1545244756.72277
      id: 3179
      left: "10"
      market: "KSCETH"
      price: "0.50061306"
      side: 2
      trigger: "0e-8"
      type: 'limit'  
   }
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`PUT https://api.noku.exchange/exchange/order/:ticker`

### URL Parameters

Parameter | Description
--------- | -----------
ticker | The ticker of the trading instrument
price | Price of the order
amount | Amount of the order 
side | Market side of the order
type | Order type must be [limit, market, stop], stop orders are an optional feature  
defaultAccount | default trading account for the current user, always default unless you know what you are doing.

## Pending orders

```shell
curl "https://api.noku.exchange/exchange/order/:ticker"
  -X POST
  -d '{defaultAccount, market}'
  -H "Content-Type: application/json"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let pendings = api.orderPendings("{ticker}", "{defaultAccount:-default}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":[
      {
          amount: "10"
          time: 1545244756.72277
          id: 3179
          left: "10"
          market: "KSCETH"
          price: "0.50061306"
          side: 2
          trigger: "0e-8"
          type: 'limit'
      }
   ]
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`PUT https://api.noku.exchange/exchange/order/:ticker`

### URL Parameters

Parameter | Description
--------- | -----------
ticker | The ticker of the trading instrument
market | is an alias for ticker and must me always equal to it     
defaultAccount | default trading account for the current user, always default unless you know what you are doing.


## Cancel order

```shell
curl "https://api.noku.exchange/exchange/order/:ticker/:id"
  -X DELETE
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let cancel = api.orderCancel("{ticker}", "{id}", "{defaultAccount:-default}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":{
      amount: "1123"
      time: 1544093795.424283
      id: 6
      left: "1123"
      market: "KSCETH"
      price: "0.44"
      side: 2
      trigger: "0e-8"
      type: 'limit'
   }
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`DELETE https://api.noku.exchange/exchange/order/:ticker`

### URL Parameters

Parameter | Description
--------- | -----------
ticker | The ticker of the trading instrument
id | The order id to cancel     
defaultAccount | Default trading account for the current user, always default unless you know what you are doing.

## Get transaction history 

```shell
curl "https://api.noku.exchange/exchange/history/:ticker/"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let cancel = api.transactionHistory("{ticker}", "{defaultAccount:-default}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":[
     {
        amount: "11"
        deal: "5.51862861"
        deal_order_id: 3387
        fee: "0.0099"
        id: 1742
        market: "KSCETH"
        price: "0.50169351"
        role: 1
        side: 2
        time: 1545275958.081128
     }
   ]
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`POST https://api.noku.exchange/exchange/order/:ticker`

### URL Parameters

Parameter | Description
--------- | -----------
ticker | The ticker of the trading instrument
defaultAccount | Default trading account for the current user, always default unless you know what you are doing.
