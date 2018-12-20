# Authentication

> To authorize, use this code:

```shell
# With shell, you can just pass the correct header with each request
curl "api_endpoint_here"
  -H "Authorization: Bearer <api_token>"
```

```javascript
const {KamiApi} = require('kamisdk');

let api = new KamiApi({token:'<api_token>'});
```

> Make sure to replace '<api_token>' with your API key.

Kami uses API keys to allow access to the API. You can register a new Kami API key at our [developer portal](https://{env}api.kamiswiss.ch/).

Kami expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: Bearer <api_token>`

<aside class="notice">
You must replace <code><api_token></code> with your personal API key.
</aside>
