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
    "success": true,
    "result":
    {
        "default":
        {
            "name": "default",
            "type": "trading",
            "created": "2018-12-06T10:36:55.483Z",
            "balance":
            {
                "EUR":
                {
                    "available": "2000",
                    "freeze": "0"
                },
                "BTC":
                {
                    "available": "2",
                    "freeze": "0"
                },
                "ETH":
                {
                    "available": "30.80414074",
                    "freeze": "18.48526163"
                }
            }
        }
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
  "success": true,
  "result": {
    "email": "kami@noku.exchange",
    "nickname": "kami",
    "phone": {
      "verified": false,
      "value": ""
    },
    "country": "CH",
    "timezone": "Europe/Zurich",
    "language": "eng"
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
  "success": true,
  "result": {
    "accounts": 1,
    "asyncTaskLimit": 400,
    "exchange": {
      "opened_order_limit": 500,
      "trading": {
        "maker_fee": "0.0025",
        "taker_fee": "0.0025",
        "enabled": true
      }
    },
    "wallet": {
      "deposits": true,
      "withdrawals": true,
      "withdrawal_crypto_limit": {
        "daily": {
          "asset": "EUR",
          "amount": "2500"
        },
        "monthly": {
          "asset": "EUR",
          "amount": "20000"
        }
      },
      "deposit_fiat_limit": {
        "daily": {
          "asset": "EUR",
          "amount": "0"
        },
        "monthly": {
          "asset": "EUR",
          "amount": "0"
        }
      },
      "withdrawal_fiat_limit": {
        "daily": {
          "asset": "EUR",
          "amount": "0"
        },
        "monthly": {
          "asset": "EUR",
          "amount": "0"
        }
      }
    }
  }
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.noku.exchange/user/type`

## Get limits 

```shell
curl "https://api.noku.exchange/user/limits"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let type = api.limits();
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "result": {
    "current_usage": {
      "withdrawal_fiat_daily_limit": {
        "asset": "EUR",
        "amount": "0"
      },
      "withdrawal_fiat_monthly_limit": {
        "asset": "EUR",
        "amount": "0"
      },
      "deposit_fiat_daily_limit": {
        "asset": "EUR",
        "amount": "0"
      },
      "deposit_fiat_monthly_limit": {
        "asset": "EUR",
        "amount": "0"
      },
      "withdrawal_crypto_daily_limit": {
        "asset": "EUR",
        "amount": "0"
      },
      "withdrawal_crypto_monthly_limit": {
        "asset": "EUR",
        "amount": "0"
      }
    },
    "my_limits": {
      "withdrawal_crypto_limit": {
        "daily": {
          "asset": "EUR",
          "amount": "2500"
        },
        "monthly": {
          "asset": "EUR",
          "amount": "20000"
        }
      },
      "deposit_fiat_limit": {
        "daily": {
          "asset": "EUR",
          "amount": "0"
        },
        "monthly": {
          "asset": "EUR",
          "amount": "0"
        }
      },
      "withdrawal_fiat_limit": {
        "daily": {
          "asset": "EUR",
          "amount": "0"
        },
        "monthly": {
          "asset": "EUR",
          "amount": "0"
        }
      }
    }
  }
}
```

This endpoint retrieves account kyc limitations.

### HTTP Request

`GET https://api.noku.exchange/user/limits`

## Get workspace 

```shell
curl "https://api.noku.exchange/user/workspace"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let type = api.workspace();
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "result": [
    {
      "address": "0xcdd5bdae31d6a92dc83b30e33cde826777b94ee4",
      "name": "wcqedwdw",
      "order": "0",
      "haveprivetekey": "true",
      "chain": "ETH"
    }
  ]
}
```

This endpoint retrieves the list of noku accounts listed in your workspace.

### HTTP Request

`GET https://api.noku.exchange/user/workspace`

