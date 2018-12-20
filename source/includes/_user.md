# User

## Get balance 

```shell
curl "https://api.kamiswiss.ch/user/balance"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = KamiApi.authorize('<api_token>');
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

`GET https://api.kamiswiss.ch/user/balance`

## Get data 

```shell
curl "https://api.kamiswiss.ch/user/data"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = KamiApi.authorize('<api_token>');
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

`GET https://api.kamiswiss.ch/user/data`

## Get type 

```shell
curl "https://api.kamiswiss.ch/user/type"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = KamiApi.authorize('<api_token>');
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

`GET https://api.kamiswiss.ch/user/type`
