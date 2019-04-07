# Wallet

## Get deposit address

```shell
curl "https://api.kamiswiss.ch/wallet/depositAddress/:asset"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let deposit_address = api.depositAddress("{asset}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":{
      "asset": "ethereum",
      "address": "<eth_address>" 
   }
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.kamiswiss.ch/wallet/depositAddress/:asset`

### URL Parameters

Parameter | Description
--------- | -----------
asset | Cryptocurrency or token address
offset | Skip a number of elements as defined in offset
limit | Return a number of records not higher of limit

## create withdrawal request

```shell
curl "https://api.kamiswiss.ch/wallet/withdrawal/:asset"
  -X PUT
  -d '{asset, amount, address, validation}'
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let deposits = api.withdrawalRequest("{assets, amount, address, validation}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`PUT https://api.kamiswiss.ch/wallet/withdrawal/:asset`

### URL Parameters

Parameter | Description
--------- | -----------
asset | Asset to withdraw
amount | Amount to withdraw
address | Withdrawal address
validation.sfauth | Second Factor Authentication


## Get data

```shell
curl "https://api.kamiswiss.ch/wallet/data"
  -d "{pending, offset, limit}"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let deposits = api.walletData("{pending, offset:0, limit:20}");
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "result": [
    {
      "confirmed": true,
      "txid": "0x6a3952a5fe8ee6d78b5cd7d8511200fadc19aa479a16b9cddad45d9faad76120",
      "asset": "ethereum",
      "created": 1554211918,
      "amount": "0.2",
      "type": "deposit",
      "isFiat": false
    },
    {
      "confirmed": true,
      "txid": "1e1c67b6f708d9dd2371a8361ade59075547b63eb704f56d15787a4d90565f1a",
      "asset": "litecoin",
      "created": 1554209670,
      "amount": "5",
      "type": "deposit",
      "isFiat": false
    },
    {
      "confirmed": true,
      "txid": "4216c436edc645e60b54bcd2a7454aae7b97a00f3213aa35ead420a57171041a",
      "asset": "dash",
      "created": 1554133870,
      "amount": "99.999",
      "type": "deposit",
      "isFiat": false
    }
  ]
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.kamiswiss.ch/wallet/data`

### URL Parameters

Parameter | Description
--------- | -----------
pending | If true return pending transactions otherwise it will return confirmed transactions
