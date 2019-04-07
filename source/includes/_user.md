# User

## Get balance 

```shell
curl "https://api.noku.exchange/user/balance"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let balance = api.balance();
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":{
        
   }
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.noku.exchange/user/balance`

## Get data 

```shell
curl "https://api.noku.exchange/user/data"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let data = api.data();
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":{
        
   }
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.noku.exchange/user/data`

## Get type 

```shell
curl "https://api.noku.exchange/user/type"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let type = api.type();
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":{
        
   }
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.noku.exchange/user/type`
