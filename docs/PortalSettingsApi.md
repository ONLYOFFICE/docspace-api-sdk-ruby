# DocspaceApiSdk::PortalSettingsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**continue_portal**](PortalSettingsApi.md#continue_portal) | **PUT** /api/2.0/portal/continue | Restore a portal |
| [**delete_portal**](PortalSettingsApi.md#delete_portal) | **DELETE** /api/2.0/portal/delete | Delete a portal |
| [**get_portal_information**](PortalSettingsApi.md#get_portal_information) | **GET** /api/2.0/portal | Get portal information |
| [**get_portal_path**](PortalSettingsApi.md#get_portal_path) | **GET** /api/2.0/portal/path | Get a path to the portal |
| [**send_delete_instructions**](PortalSettingsApi.md#send_delete_instructions) | **POST** /api/2.0/portal/delete | Send removal instructions |
| [**send_suspend_instructions**](PortalSettingsApi.md#send_suspend_instructions) | **POST** /api/2.0/portal/suspend | Send suspension instructions |
| [**suspend_portal**](PortalSettingsApi.md#suspend_portal) | **PUT** /api/2.0/portal/suspend | Deactivate a portal |


## continue_portal

> continue_portal

Restore a portal

Brings a deactivated portal back to the active state, so its users can sign in again and its domain serves the  portal as before. It is reached only with the reactivation link that `POST api/2.0/portal/suspend` mails to  the portal owner: that link authorizes the call in place of an authentication token, and no ordinary token is  accepted here. The call is mutating and idempotent - it sets the status to active, re-applies the portal's  Content Security Policy and refreshes its base domain, and a portal that is already active is simply left  active. Nothing is returned in the body; read the result from `status` in `GET api/2.0/portal`. Deactivating  the portal again means asking for a fresh letter with `POST api/2.0/portal/suspend`, because each link is  issued for one operation. This operation cannot bring back a removed portal: the deletion behind  `DELETE api/2.0/portal/delete` is final, and a removed portal has to be restored from a backup instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/continue-portal/).

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

api_instance = DocspaceApiSdk::Portal::SettingsApi.new

begin
  # Restore a portal
  api_instance.continue_portal
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->continue_portal: #{e}"
end
```

#### Using the continue_portal_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> continue_portal_with_http_info

```ruby
begin
  # Restore a portal
  data, status_code, headers = api_instance.continue_portal_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->continue_portal_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_portal

> <StringWrapper> delete_portal

Delete a portal

Removes this portal for good: its rooms, files, accounts, settings and OAuth clients go with it and its domain  stops serving the portal. It is reached only with the removal link that `POST api/2.0/portal/delete` mails to  the portal owner - that link authorizes the call instead of an authentication token - and the owner is checked  again here; on a server installation the last remaining space cannot be removed. The call is destructive and  cannot be undone, and there is no restore operation, so take a backup with `POST api/2.0/backup/startbackup`  first when the content still matters. It keeps working while the portal's payment has lapsed. Along the way  the portal is dropped from the hosting cache, the owner is mailed a confirmation, the removal is written to  the audit trail and, for a portal that was paying, the support team is notified as well. The answer is the  absolute URL of the feedback form to send the departing owner to. To pause the portal instead of erasing it,  use `PUT api/2.0/portal/suspend`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-portal/).

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

api_instance = DocspaceApiSdk::Portal::SettingsApi.new

begin
  # Delete a portal
  result = api_instance.delete_portal
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->delete_portal: #{e}"
end
```

#### Using the delete_portal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> delete_portal_with_http_info

```ruby
begin
  # Delete a portal
  data, status_code, headers = api_instance.delete_portal_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->delete_portal_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portal_information

> <TenantWrapper> get_portal_information

Get portal information

Returns the portal the request was addressed to - the tenant behind the current domain - with its name, alias,  owner, language, time zone, industry, trusted-domain rules, version and creation date. Nothing has to be  called first, the call is read-only and idempotent, and it keeps answering while the portal's payment has  lapsed. What comes back depends on the caller's rights: a caller with the portal-settings right gets the whole  record, while every other user gets an object in which only `tenantId` is filled and no error is raised - so  check `tenantAlias` for null before reading the rest. `status` says whether the portal is active, suspended or  pending removal, and `creationDateTime`, `statusChangeDate`, `lastModified` and `versionChanged` are UTC.  `region` names the data-center region a hosted portal is served from and stays empty on a server installation  and when the portal cache is off, while `hostedRegion` is the region written on the record itself. The  settings of the same portal are read with `GET api/2.0/settings`, its tariff with `GET api/2.0/portal/tariff`  and its quota with `GET api/2.0/portal/quota`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-information/).

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

api_instance = DocspaceApiSdk::Portal::SettingsApi.new

begin
  # Get portal information
  result = api_instance.get_portal_information
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->get_portal_information: #{e}"
end
```

#### Using the get_portal_information_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantWrapper>, Integer, Hash)> get_portal_information_with_http_info

```ruby
begin
  # Get portal information
  data, status_code, headers = api_instance.get_portal_information_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->get_portal_information_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantWrapper**](TenantWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portal_path

> <StringWrapper> get_portal_path(opts)

Get a path to the portal

Turns a portal-relative path into the absolute URL a client can open, filling in the scheme, the current  portal domain and the virtual root the portal is hosted on. Any signed-in user may call it, nothing has to be  called first, and the call is read-only and idempotent - it neither checks that the path exists nor that the  caller is allowed to open it. `virtualPath` is taken as it is: an omitted or empty value yields the portal  root, a value starting with `/` is appended to that root, a value starting with `~/` is resolved against the  virtual root, and a value that already starts with `http://`, `https://` or `mailto:` is handed back  unchanged. The answer is a bare JSON string. The domain in the result is the one the portal answers on right  now, so a renamed portal starts returning the new domain without any change on the client. Use it to build  links that have to survive a rename; the portal's own addresses and settings are read from  `GET api/2.0/settings` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-path/).

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

api_instance = DocspaceApiSdk::Portal::SettingsApi.new
opts = {
  virtual_path: '/portal/documents' # String | The path to resolve. It is taken as it is: an omitted or empty value yields the portal root, a value starting  with `/` is appended to that root, a value starting with `~/` is resolved against the virtual root, and one  that already begins with `http://`, `https://` or `mailto:` is handed back unchanged. Nothing checks that the  path exists or that the caller may open it.
}

begin
  # Get a path to the portal
  result = api_instance.get_portal_path(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->get_portal_path: #{e}"
end
```

#### Using the get_portal_path_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> get_portal_path_with_http_info(opts)

```ruby
begin
  # Get a path to the portal
  data, status_code, headers = api_instance.get_portal_path_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->get_portal_path_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **virtual_path** | **String** | The path to resolve. It is taken as it is: an omitted or empty value yields the portal root, a value starting  with `/` is appended to that root, a value starting with `~/` is resolved against the virtual root, and one  that already begins with `http://`, `https://` or `mailto:` is handed back unchanged. Nothing checks that the  path exists or that the caller may open it. | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_delete_instructions

> send_delete_instructions

Send removal instructions

Mails the portal owner the confirmation link that removes this portal; nothing about the portal changes until  that link is used. The caller has to be the portal owner and hold the portal-settings right, and on a server  installation the last remaining space cannot be removed - the call is refused when every other space has  limited access. The letter goes to the owner's own address whoever asked for it, and it warns about the  subscription that will stop renewing when the portal is on a paid plan. The operation keeps working while the  portal's payment has lapsed, is mutating only in that it sends a message, and is rate-limited to five requests  per fifteen minutes per user and path by default, answering 429 above that. Nothing is returned in the body.  The link in the letter authorizes `DELETE api/2.0/portal/delete`, which deletes the portal with all of its  rooms, files and accounts and cannot be undone. To pause the portal instead of deleting it, send the  deactivation letter with `POST api/2.0/portal/suspend`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-delete-instructions/).

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

api_instance = DocspaceApiSdk::Portal::SettingsApi.new

begin
  # Send removal instructions
  api_instance.send_delete_instructions
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->send_delete_instructions: #{e}"
end
```

#### Using the send_delete_instructions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_delete_instructions_with_http_info

```ruby
begin
  # Send removal instructions
  data, status_code, headers = api_instance.send_delete_instructions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->send_delete_instructions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_suspend_instructions

> send_suspend_instructions

Send suspension instructions

Mails the portal owner the two confirmation links that deactivate this portal and bring it back again, and  records the request in the audit trail; the portal itself is not changed here. The caller has to be the portal  owner and hold the portal-settings right, and on a server installation the last remaining space cannot be  deactivated - the call is refused when every other space has limited access. The letter always goes to the  owner's own address, and the operation keeps working while the portal's payment has lapsed. It is mutating  only in that it sends a message, and it is rate-limited to five requests per fifteen minutes per user and path  by default, answering 429 above that. Nothing is returned in the body, so a client cannot tell from the answer  whether the mail was delivered. The first link in the letter authorizes `PUT api/2.0/portal/suspend`, which  suspends the portal, and the second one authorizes `PUT api/2.0/portal/continue`, which makes it active again.  To remove the portal instead of pausing it, use `POST api/2.0/portal/delete`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-suspend-instructions/).

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

api_instance = DocspaceApiSdk::Portal::SettingsApi.new

begin
  # Send suspension instructions
  api_instance.send_suspend_instructions
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->send_suspend_instructions: #{e}"
end
```

#### Using the send_suspend_instructions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_suspend_instructions_with_http_info

```ruby
begin
  # Send suspension instructions
  data, status_code, headers = api_instance.send_suspend_instructions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->send_suspend_instructions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## suspend_portal

> suspend_portal

Deactivate a portal

Deactivates this portal: its status becomes suspended and its users can no longer work in it, while all of its  rooms, files and accounts stay untouched. It is reached only with the deactivation link that  `POST api/2.0/portal/suspend` mails to the portal owner - that link authorizes the call instead of an  authentication token - and the owner is checked again here, so a link issued for another account is refused.  On a server installation the last remaining space cannot be deactivated. The call is mutating and idempotent:  it sets the status, records the deactivation in the audit trail and refreshes the portal's base domain, and  repeating it leaves the portal suspended. Nothing is returned in the body; the new state is read from `status`  in `GET api/2.0/portal`. Bring the portal back with `PUT api/2.0/portal/continue`, using the second link from  the same letter. To remove the portal and its content for good, use `DELETE api/2.0/portal/delete` instead -  that cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/suspend-portal/).

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

api_instance = DocspaceApiSdk::Portal::SettingsApi.new

begin
  # Deactivate a portal
  api_instance.suspend_portal
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->suspend_portal: #{e}"
end
```

#### Using the suspend_portal_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> suspend_portal_with_http_info

```ruby
begin
  # Deactivate a portal
  data, status_code, headers = api_instance.suspend_portal_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::SettingsApi->suspend_portal_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

