# Wallet

## Get deposit address

```shell
curl "https://api.kamiswiss.ch/wallet/depositAddress/:asset"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = KamiApi.authorize('<api_token>');
let deposit_address = api.depositAddress("{asset}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":{
        asset:"ethereum",
        address: "<eth_address>" 
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

## Get deposits

```shell
curl "https://api.kamiswiss.ch/wallet/deposits/:asset"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = KamiApi.authorize('<api_token>');
let deposits = api.deposits("{assets}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":[{
    
   }]
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.kamiswiss.ch/wallet/deposits/:asset`

### URL Parameters

Parameter | Description
--------- | -----------
asset | Cryptocurrency or token address


## create withdrawal request

```shell
curl "https://api.kamiswiss.ch/wallet/withdrawal/:asset"
  -X PUT
  -d '{asset, amount, address, validation}'
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = KamiApi.authorize('<api_token>');
let deposits = api.withdrawalRequest("{assets, amount, address, validation}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":{}
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
validation | Second Factor Authentication


## create withdrawal request

```shell
curl "https://api.kamiswiss.ch/wallet/withdrawal/:asset"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = KamiApi.authorize('<api_token>');
let deposits = api.withdrawal("{assets}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":[{
   }]
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.kamiswiss.ch/wallet/withdrawal/:asset`
