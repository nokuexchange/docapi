# Errors

<aside class="notice">
This error section is stored in a separate file in <code>includes/_errors.md</code>. Slate allows you to optionally separate out your docs into many files...just save them to the <code>includes</code> folder and add them to the top of your <code>index.md</code>'s frontmatter. Files are included in the order listed.
</aside>

The Kami Swiss API uses the following error codes:


Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request is invalid.
401 | Unauthorized -- Your API key is wrong.
403 | Forbidden -- The requested service is hidden for elite only.
404 | Not Found -- The specified service could not be found.
405 | Method Not Allowed -- You tried to access a service with an invalid method.
406 | Not Acceptable -- You requested a format that isn't json.
410 | Gone -- The service requested has been removed from our servers.
418 | I'm a teapot.
429 | Too Many Requests -- You're requesting too many services! Slow down!
431 | Market do not exists
432 | Market is disabled
433 | Market maintenance
441 | Asset do not exists
442 | Deposits for this asset are disabled
443 | Withdrawals for this asset are disabled
444 | Wallet maintenance
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarily offline for maintenance. Please try again later.
530 | Automatic maintenance throwed by an internal market error
540 | Automatic maintenance throwed by an internal wallet error
