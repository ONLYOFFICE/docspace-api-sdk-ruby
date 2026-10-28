# DocspaceApiSdk::SettingsLoginSettingsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_login_settings**](SettingsLoginSettingsApi.md#get_login_settings) | **GET** /api/2.0/settings/security/loginsettings | Get login settings |
| [**set_default_login_settings**](SettingsLoginSettingsApi.md#set_default_login_settings) | **DELETE** /api/2.0/settings/security/loginsettings | Reset login settings |
| [**update_login_settings**](SettingsLoginSettingsApi.md#update_login_settings) | **PUT** /api/2.0/settings/security/loginsettings | Update login settings |


## get_login_settings

> <LoginSettingsWrapper> get_login_settings

Get login settings

Returns the brute-force protection of the sign-in form for the current portal: how many failed attempts are  tolerated, how long the window they are counted in lasts, and how long an offender stays blocked. The caller  needs the portal-settings right of a DocSpace administrator; members without it are refused, and anonymous  callers are not admitted. The operation is read-only and honours `If-Modified-Since`: send back the  `Last-Modified` value of an earlier answer and unchanged settings come back as an empty not-modified response  rather than a body. `checkPeriod` and `blockTime` are counted in seconds. A portal nobody has configured  tolerates 5 failed attempts inside a window of 60 seconds and blocks for 60 seconds, and reports `isDefault`  true; the flag turns false as soon as any of the three values differs from that. The answer describes the  portal-wide policy only: it does not say which accounts or addresses are blocked at the moment, while a  lockout that has already happened is recorded in the login history and can be read with  `GET api/2.0/security/audit/login/filter`. Change the numbers with  `PUT api/2.0/settings/security/loginsettings`, or put them back with  `DELETE api/2.0/settings/security/loginsettings`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Settings::LoginSettingsApi.new

begin
  # Get login settings
  result = api_instance.get_login_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::LoginSettingsApi->get_login_settings: #{e}"
end
```

#### Using the get_login_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginSettingsWrapper>, Integer, Hash)> get_login_settings_with_http_info

```ruby
begin
  # Get login settings
  data, status_code, headers = api_instance.get_login_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::LoginSettingsApi->get_login_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LoginSettingsWrapper**](LoginSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_default_login_settings

> <LoginSettingsWrapper> set_default_login_settings

Reset login settings

Puts the brute-force protection of the sign-in form back to what the portal shipped with: 5 tolerated failed  attempts, a counting window of 60 seconds and a block of 60 seconds. The caller needs the portal-settings  right of a DocSpace administrator, otherwise the call is refused. The operation takes no parameters and  overwrites whatever was configured before without asking, so read the current numbers with  `GET api/2.0/settings/security/loginsettings` first if they are worth keeping. Only the setting is reset:  sign-ins already blocked stay blocked until the block they were given runs out, and the attempt counters  running for other users are left alone. The reset is portal-wide, applies to attempts made from now on, is  recorded in the audit trail, and calling it twice changes nothing further. The restored numbers also decide  when the sign-in form starts asking for a captcha, which it does one attempt before the block. The answer is  the restored settings, with `isDefault` true. Store numbers of your own with  `PUT api/2.0/settings/security/loginsettings`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-login-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Settings::LoginSettingsApi.new

begin
  # Reset login settings
  result = api_instance.set_default_login_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::LoginSettingsApi->set_default_login_settings: #{e}"
end
```

#### Using the set_default_login_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginSettingsWrapper>, Integer, Hash)> set_default_login_settings_with_http_info

```ruby
begin
  # Reset login settings
  data, status_code, headers = api_instance.set_default_login_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::LoginSettingsApi->set_default_login_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LoginSettingsWrapper**](LoginSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_login_settings

> <LoginSettingsWrapper> update_login_settings(opts)

Update login settings

Replaces the brute-force protection of the sign-in form for the whole portal: `attemptCount` failed attempts  inside a rolling window of `checkPeriod` seconds, after which the offender is blocked for `blockTime` seconds.  All three values are replaced together and each has to be between 1 and 9999, so read the current ones with  `GET api/2.0/settings/security/loginsettings` before changing only one of them; a value outside the range is  rejected as an invalid request. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. Failed attempts are counted per user name and client address, so one member's  lockout leaves the rest of the portal signing in normally, and a blocked pair is refused even once the  password is finally correct. The new numbers apply to attempts made from now on and leave counters and blocks  already running as they are. The change is recorded in the audit trail, and the answer is the stored settings  with the flag that says whether they still match the shipped defaults.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-login-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Settings::LoginSettingsApi.new
opts = {
  login_settings_request_dto: DocspaceApiSdk::LoginSettingsRequestDto.new # LoginSettingsRequestDto | 
}

begin
  # Update login settings
  result = api_instance.update_login_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::LoginSettingsApi->update_login_settings: #{e}"
end
```

#### Using the update_login_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginSettingsWrapper>, Integer, Hash)> update_login_settings_with_http_info(opts)

```ruby
begin
  # Update login settings
  data, status_code, headers = api_instance.update_login_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::LoginSettingsApi->update_login_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login_settings_request_dto** | [**LoginSettingsRequestDto**](LoginSettingsRequestDto.md) |  | [optional] |

### Return type

[**LoginSettingsWrapper**](LoginSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

