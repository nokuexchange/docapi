# Data

## Get instruments

```shell
curl "https://api.noku.exchange/data/instruments"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let instruments = api.instruments();
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":[
      {
         "stock":{
            "alias":"BTC",
            "precision":8
         },
         "money":{
            "alias":"EUR",
            "precision":8
         },
         "ticker":"BTCEUR",
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

`GET https://api.noku.exchange/data/instruments`

<aside class="success">
Instruments — list of all the trading instruments available right now
</aside>


## Get assets

```shell
curl "https://api.noku.exchange/data/assets"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let assets = api.assets();
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":[
      {
         "asset":	"eurn",
         "alias":	"EURN",
         "precision":	0,
         "isToken":	true,
         "tokenContract":	"0x2e23767ef9cd7065422e31f89355994ce37023b1"
      }
   ]
}
```

This endpoint retrieves all the listed assets.

### HTTP Request

`GET https://api.noku.exchange/data/assets`


## Get rates

```shell
curl "https://api.noku.exchange/data/rates"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let rates = api.rates();
```

> The above command returns JSON structured like this:

```json
{
  "success": true,
  "result": {
    "BTCEUR": {
      "price": "4595.8",
      "volume": "2763.49879717"
    },
    "ETHEUR": {
      "price": "149.695",
      "volume": "55317.6013"
    }
  }
}
```

This endpoint retrieves all the listed rates.

### HTTP Request

`GET https://api.noku.exchange/data/rates`

## Get candles

```shell
curl "https://api.noku.exchange/data/candles/history?symbol={ticker}&resolution=10&from=1554556417&to=1554562417"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let status = api.candles("{ticker}");
```

> The above command returns JSON structured like this:

```json
{
   "c":[
      "4487.95",
      "4470.5",
      "4475.7",
      "4473.15",
      "4477.85",
      "4468.55",
      "4465.75",
      "4467.7",
      "4477.1",
      "4477.65"
   ],
   "h":[
      "4487.95",
      "4487.9",
      "4477.45",
      "4477.65",
      "4484.55",
      "4477.65",
      "4468.65",
      "4468.5",
      "4479.9",
      "4477.9"
   ],
   "l":[
      "4479.45",
      "4470.5",
      "4470.35",
      "4473.15",
      "4473.1",
      "4464.5",
      "4465.05",
      "4465.05",
      "4468.2",
      "4476.85"
   ],
   "o":[
      "4479.45",
      "4487.9",
      "4470.35",
      "4475.7",
      "4473.1",
      "4477.65",
      "4468.55",
      "4465.75",
      "4468.2",
      "4477.1"
   ],
   "s":"ok",
   "t":[
      1554556800,
      1554557400,
      1554558000,
      1554558600,
      1554559200,
      1554559800,
      1554560400,
      1554561000,
      1554561600,
      1554562200
   ],
   "v":[
      "94407.14588",
      "103306.646376",
      "154391.949314",
      "88591.8501895",
      "214283.39567",
      "85021.556652",
      "40803.581524",
      "287607.2755005",
      "576087.616531",
      "30280.049529"
   ]
}                 
```

This endpoint retrieves the selected market status.

### HTTP Request

`GET https://api.noku.exchange/data/candles/history?symbol={ticker}&resolution=10&from=1554556417&to=1554562417`

### URL Parameters

Parameter | Description
--------- | -----------
ticker | The ticker of the trading instrument

## Get depth

```shell
curl "https://api.noku.exchange/data/depth"
  -d '{ticker}'
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
let orderbook_side = api.orderbook("{ticker}", "{side}");
```

> The above command returns JSON structured like this:

```json
{
   "success":true,
   "result":{
      "asks":[
         [
            "4496.7",
            "4.32495",
            "19448.002665",
            "19448.002665"
         ],
         [
            "4498.1",
            "0.0077",
            "34.63537",
            "19482.638035"
         ],
         [
            "4499.2",
            "0.3052",
            "1373.15584",
            "1407.79121"
         ],
         [
            "4499.6",
            "1.2432",
            "5593.90272",
            "6967.05856"
         ],
         [
            "4500",
            "0.5061",
            "2277.45",
            "7871.35272"
         ],
         [
            "4500.6",
            "0.35",
            "1575.21",
            "3852.66"
         ],
         [
            "4501.4",
            "0.0868",
            "390.72152",
            "1965.93152"
         ],
         [
            "4501.5",
            "0.12775",
            "575.066625",
            "965.788145"
         ],
         [
            "4503.4",
            "0.7",
            "3152.38",
            "3727.446625"
         ],
         [
            "4505",
            "0.0105",
            "47.3025",
            "3199.6825"
         ],
         [
            "4507.1",
            "0.3283",
            "1479.68093",
            "1526.98343"
         ],
         [
            "4507.7",
            "0.1239",
            "558.50403",
            "2038.18496"
         ],
         [
            "4508",
            "1.5183",
            "6844.4964",
            "7403.00043"
         ],
         [
            "4508.1",
            "2.1",
            "9467.01",
            "16311.5064"
         ],
         [
            "4508.7",
            "0.385",
            "1735.8495",
            "11202.8595"
         ],
         [
            "4510",
            "1.05",
            "4735.5",
            "6471.3495"
         ],
         [
            "4511.5",
            "0.021",
            "94.7415",
            "4830.2415"
         ],
         [
            "4512",
            "0.035",
            "157.92",
            "252.6615"
         ],
         [
            "4513.8",
            "1.01885",
            "4598.88513",
            "4756.80513"
         ],
         [
            "4513.9",
            "1.05805",
            "4775.931895",
            "9374.817025"
         ],
         [
            "4514.4",
            "0.3465",
            "1564.2396",
            "6340.171495"
         ],
         [
            "4515.5",
            "1.05",
            "4741.275",
            "6305.5146"
         ],
         [
            "4515.6",
            "3.458",
            "15614.9448",
            "20356.2198"
         ],
         [
            "4516.8",
            "1.75",
            "7904.4",
            "23519.3448"
         ],
         [
            "4517.1",
            "2.8",
            "12647.88",
            "20552.28"
         ],
         [
            "4518",
            "0.0105",
            "47.439",
            "12695.319"
         ],
         [
            "4519.2",
            "0.08365",
            "378.03108",
            "425.47008"
         ],
         [
            "4519.4",
            "0.6958",
            "3144.59852",
            "3522.6296"
         ],
         [
            "4520",
            "1.4",
            "6328",
            "9472.59852"
         ],
         [
            "4520.3",
            "1.05",
            "4746.315",
            "11074.315"
         ],
         [
            "4520.9",
            "0.08295",
            "375.008655",
            "5121.323655"
         ],
         [
            "4521",
            "0.8498",
            "3841.9458",
            "4216.954455"
         ],
         [
            "4521.4",
            "1.75",
            "7912.45",
            "11754.3958"
         ],
         [
            "4521.5",
            "0.0035",
            "15.82525",
            "7928.27525"
         ],
         [
            "4521.6",
            "3.458",
            "15635.6928",
            "15651.51805"
         ],
         [
            "4521.7",
            "0.0035",
            "15.82595",
            "15651.51875"
         ],
         [
            "4521.9",
            "0.0875",
            "395.66625",
            "411.4922"
         ],
         [
            "4522.6",
            "0.0035",
            "15.8291",
            "411.49535"
         ],
         [
            "4523",
            "0.0035",
            "15.8305",
            "31.6596"
         ],
         [
            "4523.4",
            "0.0035",
            "15.8319",
            "31.6624"
         ],
         [
            "4523.8",
            "0.0035",
            "15.8333",
            "31.6652"
         ],
         [
            "4523.9",
            "0.0175",
            "79.16825",
            "95.00155"
         ],
         [
            "4524",
            "0.05495",
            "248.5938",
            "327.76205"
         ],
         [
            "4524.5",
            "0.05635",
            "254.955575",
            "503.549375"
         ],
         [
            "4524.7",
            "0.0035",
            "15.83645",
            "270.792025"
         ],
         [
            "4524.8",
            "0.021",
            "95.0208",
            "110.85725"
         ],
         [
            "4525",
            "1.5596",
            "7057.19",
            "7152.2108"
         ],
         [
            "4525.9",
            "0.0693",
            "313.64487",
            "7370.83487"
         ],
         [
            "4526.2",
            "0.1337",
            "605.15294",
            "918.79781"
         ],
         [
            "4526.4",
            "0.007",
            "31.6848",
            "636.83774"
         ]
      ],
      "bids":[
         [
            "4494.2",
            "4.5129",
            "20281.87518",
            "20281.87518"
         ],
         [
            "4494.1",
            "1.30375",
            "5859.182875",
            "26141.058055"
         ],
         [
            "4494",
            "0.41825",
            "1879.6155",
            "7738.798375"
         ],
         [
            "4493.3",
            "0.06825",
            "306.667725",
            "2186.283225"
         ],
         [
            "4493",
            "1.575",
            "7076.475",
            "7383.142725"
         ],
         [
            "4492.6",
            "0.0959",
            "430.84034",
            "7507.31534"
         ],
         [
            "4492.2",
            "0.0917",
            "411.93474",
            "842.77508"
         ],
         [
            "4492.1",
            "0.6965",
            "3128.74765",
            "3540.68239"
         ],
         [
            "4488.6",
            "0.35",
            "1571.01",
            "4699.75765"
         ],
         [
            "4488.5",
            "0.021",
            "94.2585",
            "1665.2685"
         ],
         [
            "4487.7",
            "0.3283",
            "1473.31191",
            "1567.57041"
         ],
         [
            "4486",
            "0.03815",
            "171.1409",
            "1644.45281"
         ],
         [
            "4485.9",
            "2.03",
            "9106.377",
            "9277.5179"
         ],
         [
            "4485.3",
            "0.56455",
            "2532.176115",
            "11638.553115"
         ],
         [
            "4485",
            "0.64365",
            "2886.77025",
            "5418.946365"
         ],
         [
            "4483.8",
            "1.85815",
            "8331.57297",
            "11218.34322"
         ],
         [
            "4483.7",
            "0.203",
            "910.1911",
            "9241.76407"
         ],
         [
            "4483.6",
            "1.3503",
            "6054.20508",
            "6964.39618"
         ],
         [
            "4483.4",
            "0.3283",
            "1471.90022",
            "7526.1053"
         ],
         [
            "4483",
            "0.0105",
            "47.0715",
            "1518.97172"
         ],
         [
            "4482.9",
            "0.4606",
            "2064.82374",
            "2111.89524"
         ],
         [
            "4482.8",
            "0.5579",
            "2500.95412",
            "4565.77786"
         ],
         [
            "4482.7",
            "0.0112",
            "50.20624",
            "2551.16036"
         ],
         [
            "4482.6",
            "0.98",
            "4392.948",
            "4443.15424"
         ],
         [
            "4482.4",
            "0.1393",
            "624.39832",
            "5017.34632"
         ],
         [
            "4482",
            "0.021",
            "94.122",
            "718.52032"
         ],
         [
            "4481.8",
            "0.3675",
            "1647.0615",
            "1741.1835"
         ],
         [
            "4481.2",
            "0.18655",
            "835.96786",
            "2483.02936"
         ],
         [
            "4480.9",
            "0.28",
            "1254.652",
            "2090.61986"
         ],
         [
            "4480.8",
            "0.64435",
            "2887.20348",
            "4141.85548"
         ],
         [
            "4480.7",
            "0.07",
            "313.649",
            "3200.85248"
         ],
         [
            "4480",
            "1.421",
            "6366.08",
            "6679.729"
         ],
         [
            "4479.4",
            "0.0105",
            "47.0337",
            "6413.1137"
         ],
         [
            "4479.2",
            "19.4747",
            "87231.07624",
            "87278.10994"
         ],
         [
            "4478.5",
            "0.7",
            "3134.95",
            "90366.02624"
         ],
         [
            "4477.8",
            "0.5145",
            "2303.8281",
            "5438.7781"
         ],
         [
            "4476.7",
            "1.05",
            "4700.535",
            "7004.3631"
         ],
         [
            "4476.1",
            "0.0105",
            "46.99905",
            "4747.53405"
         ],
         [
            "4475.7",
            "1.75",
            "7832.475",
            "7879.47405"
         ],
         [
            "4475.6",
            "0.38815",
            "1737.20414",
            "9569.67914"
         ],
         [
            "4475",
            "0.33285",
            "1489.50375",
            "3226.70789"
         ],
         [
            "4472.8",
            "0.05985",
            "267.69708",
            "1757.20083"
         ],
         [
            "4471.8",
            "0.13475",
            "602.57505",
            "870.27213"
         ],
         [
            "4471.7",
            "0.014",
            "62.6038",
            "665.17885"
         ],
         [
            "4471.6",
            "0.0966",
            "431.95656",
            "494.56036"
         ],
         [
            "4471.5",
            "0.0196",
            "87.6414",
            "519.59796"
         ],
         [
            "4471",
            "0.0028",
            "12.5188",
            "100.1602"
         ],
         [
            "4469.8",
            "0.567",
            "2534.3766",
            "2546.8954"
         ],
         [
            "4469.6",
            "0.042",
            "187.7232",
            "2722.0998"
         ],
         [
            "4469",
            "2.0741",
            "9269.1529",
            "9456.8761"
         ]
      ]
   }
}
```

This endpoint retrieves the selected market status.

### HTTP Request

`POST https://api.noku.exchange/data/depth`

### URL Parameters

Parameter | Description
--------- | -----------
ticker | The ticker of the trading instrument


## Get history

```shell
curl "https://api.noku.exchange/data/history/:ticker"
  -d `{offset, limit}`
  -H "Authorization: Bearer <api_token>"
```

```javascript
const NokuApi = require('nokuxapi');

let api = NokuApi.authorize('<api_token>');
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

`POST https://api.noku.exchange/data/history/:ticker`

### URL Parameters

Parameter | Description
--------- | -----------
ticker | The ticker of the trading instrument
offset | Skip offset elements 
limit | Length of requested data
