# DocspaceApiSdk::SettingsSecurityApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_enabled_modules**](SettingsSecurityApi.md#get_enabled_modules) | **GET** /api/2.0/settings/security/modules | Get enabled modules |
| [**get_is_product_administrator**](SettingsSecurityApi.md#get_is_product_administrator) | **GET** /api/2.0/settings/security/administrator | Check product administrator |
| [**get_password_settings**](SettingsSecurityApi.md#get_password_settings) | **GET** /api/2.0/settings/security/password | Get password settings |
| [**get_product_administrators**](SettingsSecurityApi.md#get_product_administrators) | **GET** /api/2.0/settings/security/administrator/{productid} | Get product administrators |
| [**get_web_item_security_info**](SettingsSecurityApi.md#get_web_item_security_info) | **GET** /api/2.0/settings/security/{id} | Check module availability |
| [**get_web_item_settings_security_info**](SettingsSecurityApi.md#get_web_item_settings_security_info) | **GET** /api/2.0/settings/security | Get module access settings |
| [**set_access_to_web_items**](SettingsSecurityApi.md#set_access_to_web_items) | **PUT** /api/2.0/settings/security/access | Set access to modules in bulk |
| [**set_product_administrator**](SettingsSecurityApi.md#set_product_administrator) | **PUT** /api/2.0/settings/security/administrator | Set product administrator |
| [**set_web_item_security**](SettingsSecurityApi.md#set_web_item_security) | **PUT** /api/2.0/settings/security | Set module access |
| [**update_password_settings**](SettingsSecurityApi.md#update_password_settings) | **PUT** /api/2.0/settings/security/password | Update password settings |


## get_enabled_modules

> <EnabledModuleArrayWrapper> get_enabled_modules

Get enabled modules

Lists the portal modules the calling user can currently open, each as an `id` holding the module's product  class name and a `title` holding its display name, both HTML-encoded. Any signed-in member may call this;  anonymous callers are not admitted. The operation is read-only and takes no parameters, and the list is  specific to the caller: modules hidden for this portal, and modules whose access rules exclude the caller, are  left out, and sub-modules nested under another module are never listed. Entries follow the portal's own module  order rather than an alphabetical one. An empty list means the installation registers no such modules at all -  the case on DocSpace, where the classic modules do not exist - and is not a failure. The identifiers here are  display-oriented class names, not the GUIDs the access-settings operations work with, so do not feed them to  `GET api/2.0/settings/security/{id}`, which expects a module GUID.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enabled-modules/).

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

api_instance = DocspaceApiSdk::Settings::SecurityApi.new

begin
  # Get enabled modules
  result = api_instance.get_enabled_modules
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_enabled_modules: #{e}"
end
```

#### Using the get_enabled_modules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnabledModuleArrayWrapper>, Integer, Hash)> get_enabled_modules_with_http_info

```ruby
begin
  # Get enabled modules
  data, status_code, headers = api_instance.get_enabled_modules_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnabledModuleArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_enabled_modules_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**EnabledModuleArrayWrapper**](EnabledModuleArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_is_product_administrator

> <ProductAdministratorWrapper> get_is_product_administrator(productid, userid)

Check product administrator

Reports whether one user administers one portal module, as the identifiers asked about plus an `administrator`  flag. Both `productid` and `userid` are query parameters and both are required; the all-zero product GUID asks  about the portal itself rather than about a single module. The caller needs the portal-settings right of a  DocSpace administrator, otherwise the call is refused. The operation is read-only. The flag is `true` when the  user belongs to the DocSpace administrator group or to the module's own group, so a portal-wide administrator  is reported as an administrator of every module, whatever the module identifier says. Identifiers that name no  user and no group are answered with `false` instead of a failure, so a `false` does not prove the user exists.  The verdict is read out of group membership alone and says nothing about whether the module is enabled for  this portal, which `GET api/2.0/settings/security/{id}` reports. Use  `GET api/2.0/settings/security/administrator/{productid}` to list everyone who administers a module, and  `PUT api/2.0/settings/security/administrator` to change the membership.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-product-administrator/).

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

api_instance = DocspaceApiSdk::Settings::SecurityApi.new
productid = '00000000-0000-0000-0000-000000000000' # String | The module being asked about, by module GUID. The all-zero GUID asks about the portal itself rather than a  single module.
userid = '00000000-0000-0000-0000-000000000000' # String | The account being asked about, by portal user ID. An ID that names no account is answered as a plain negative  rather than a failure, so a negative answer does not prove the account exists.

begin
  # Check product administrator
  result = api_instance.get_is_product_administrator(productid, userid)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_is_product_administrator: #{e}"
end
```

#### Using the get_is_product_administrator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductAdministratorWrapper>, Integer, Hash)> get_is_product_administrator_with_http_info(productid, userid)

```ruby
begin
  # Check product administrator
  data, status_code, headers = api_instance.get_is_product_administrator_with_http_info(productid, userid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductAdministratorWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_is_product_administrator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **productid** | **String** | The module being asked about, by module GUID. The all-zero GUID asks about the portal itself rather than a  single module. |  |
| **userid** | **String** | The account being asked about, by portal user ID. An ID that names no account is answered as a plain negative  rather than a failure, so a negative answer does not prove the account exists. |  |

### Return type

[**ProductAdministratorWrapper**](ProductAdministratorWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_password_settings

> <PasswordSettingsWrapper> get_password_settings

Get password settings

Returns the password policy of the current portal: the minimum length together with the flags that demand an  uppercase letter, a digit and a special symbol, plus the regular expressions a client can check a password  against before sending it anywhere. Any signed-in member may read it, and it is also reachable with the  parameters of a confirmation link, so an invited user or one resetting a password can validate the new  password before having a session; a portal whose payment has lapsed still answers. The operation is read-only  and honours `If-Modified-Since`: send back the `Last-Modified` value of an earlier answer and an unchanged  policy comes back as an empty not-modified response rather than a body. A portal nobody has configured  requires 8 characters with all three flags off. Whatever the policy says, the portal refuses a password longer  than 30 characters, a ceiling this answer does not carry. Change the policy with  `PUT api/2.0/settings/security/password`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-password-settings/).

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

api_instance = DocspaceApiSdk::Settings::SecurityApi.new

begin
  # Get password settings
  result = api_instance.get_password_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_password_settings: #{e}"
end
```

#### Using the get_password_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PasswordSettingsWrapper>, Integer, Hash)> get_password_settings_with_http_info

```ruby
begin
  # Get password settings
  data, status_code, headers = api_instance.get_password_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PasswordSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_password_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PasswordSettingsWrapper**](PasswordSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_administrators

> <EmployeeArrayWrapper> get_product_administrators(productid)

Get product administrators

Lists the users who administer the portal module identified by `productid` in the path. The all-zero GUID  stands for the portal itself: the answer then covers the DocSpace administrator group together with every  product group, and includes the portal owner, who administers everything by default. The caller needs the  portal-settings right of a DocSpace administrator, otherwise the call is refused. `productid` has to be a  GUID, and one that names no group is answered with an empty list rather than a failure. The operation is  read-only and returns whole user profiles, a heavier answer than a membership check, and a user who belongs to  more than one of the groups asked about is listed once per group. Entries arrive in group order, the DocSpace  administrator group first, the list is neither paged nor filterable, and a promotion made through the sibling  `PUT` shows up here at once. Use `GET api/2.0/settings/security/administrator` to test a single user against a  single module, and `PUT api/2.0/settings/security/administrator` to promote or demote somebody.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-product-administrators/).

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

api_instance = DocspaceApiSdk::Settings::SecurityApi.new
productid = '00000000-0000-0000-0000-000000000000' # String | The module the operation acts on, by module GUID. The all-zero GUID stands for the portal itself rather than  for a single module, and a GUID that names no module group is answered with an empty result instead of a  failure.

begin
  # Get product administrators
  result = api_instance.get_product_administrators(productid)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_product_administrators: #{e}"
end
```

#### Using the get_product_administrators_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeArrayWrapper>, Integer, Hash)> get_product_administrators_with_http_info(productid)

```ruby
begin
  # Get product administrators
  data, status_code, headers = api_instance.get_product_administrators_with_http_info(productid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_product_administrators_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **productid** | **String** | The module the operation acts on, by module GUID. The all-zero GUID stands for the portal itself rather than  for a single module, and a GUID that names no module group is answered with an empty result instead of a  failure. |  |

### Return type

[**EmployeeArrayWrapper**](EmployeeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web_item_security_info

> <BooleanWrapper> get_web_item_security_info(id)

Check module availability

Answers whether the module with the given identifier is available to the calling user right now, as a single  boolean. `id` is the module GUID and travels in the path; a value that is not a GUID does not match the route  at all. Any signed-in member may call this; anonymous callers are not admitted. The operation is read-only and  its answer is specific to the caller: `true` means a module with that identifier is registered in this portal,  is visible, and the caller is allowed to read it, while `false` covers every other case - the module is not  registered here, it is hidden for this portal, or the caller is outside the users and groups allowed to open  it. A `false` therefore does not tell those apart, and an unknown identifier is reported as unavailable  instead of failing. Read the allow-list behind the decision with `GET api/2.0/settings/security`, list the  modules the caller can actually open with `GET api/2.0/settings/security/modules`, and change access with  `PUT api/2.0/settings/security`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-security-info/).

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

api_instance = DocspaceApiSdk::Settings::SecurityApi.new
id = '1' # String | The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found.

begin
  # Check module availability
  result = api_instance.get_web_item_security_info(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_web_item_security_info: #{e}"
end
```

#### Using the get_web_item_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> get_web_item_security_info_with_http_info(id)

```ruby
begin
  # Check module availability
  data, status_code, headers = api_instance.get_web_item_security_info_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_web_item_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found. |  |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web_item_settings_security_info

> <SecurityArrayWrapper> get_web_item_settings_security_info(opts)

Get module access settings

Reports how access to the portal's own modules is configured: for every module identifier sent in `ids`,  whether access is restricted at all and which users and groups are allowed to open the module. Send the  identifiers as repeated `ids` query values; each one has to be a GUID, and anything else is rejected as an  invalid request. Omitting `ids` asks about every module registered in the portal, which on a DocSpace  installation is none, so the answer is then an empty list rather than a failure. Any signed-in member may call  this; anonymous callers are not admitted. The operation is read-only and answers one entry per identifier, in  the order the identifiers were sent. `enabled` is `false` for a module nobody has ever configured, `groups`  and `users` name the subjects the rule was stored for, and `isSubItem` marks a module that hangs under another  one. Users the caller is not allowed to see are left out of `users`, so the same module can come back with  different lists for different callers. Change any of this with `PUT api/2.0/settings/security`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-item-settings-security-info/).

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

api_instance = DocspaceApiSdk::Settings::SecurityApi.new
opts = {
  ids: ['inner_example'] # Array<String> | The modules to report on, each given as a GUID and sent as a repeated query value. An entry that is not a  GUID fails the whole request as invalid. Leaving the list out asks about every module registered in the  portal, which on a DocSpace installation is none, so the answer is then empty rather than complete.
}

begin
  # Get module access settings
  result = api_instance.get_web_item_settings_security_info(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_web_item_settings_security_info: #{e}"
end
```

#### Using the get_web_item_settings_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityArrayWrapper>, Integer, Hash)> get_web_item_settings_security_info_with_http_info(opts)

```ruby
begin
  # Get module access settings
  data, status_code, headers = api_instance.get_web_item_settings_security_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_web_item_settings_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The modules to report on, each given as a GUID and sent as a repeated query value. An entry that is not a  GUID fails the whole request as invalid. Leaving the list out asks about every module registered in the  portal, which on a DocSpace installation is none, so the answer is then empty rather than complete. | [optional] |

### Return type

[**SecurityArrayWrapper**](SecurityArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_access_to_web_items

> <SecurityArrayWrapper> set_access_to_web_items(opts)

Set access to modules in bulk

Switches several portal modules on or off in one call: `items` carries an entry per module, its `key` the  module GUID and its `value` the new enabled flag. The caller needs the portal-settings right of a DocSpace  administrator, and the call is answered with 403 on an open portal, where everyone is admitted and per-module  rules would mean nothing. Every key has to be a GUID; anything else is rejected as an invalid request, and a  module listed twice is applied once, from its first entry. This operation carries no subject list of its own:  switching a product module on restores the users and groups it was last restricted to, while every other case  is stored as a plain allow or deny for everyone, so use `PUT api/2.0/settings/security` when the allow-list  itself has to change. The batch is recorded in the audit trail as one list update rather than module by  module. The answer is the resulting configuration of every module listed, in the shape  `GET api/2.0/settings/security` returns.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-access-to-web-items/).

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

api_instance = DocspaceApiSdk::Settings::SecurityApi.new
opts = {
  web_items_security_requests_dto: DocspaceApiSdk::WebItemsSecurityRequestsDto.new # WebItemsSecurityRequestsDto | 
}

begin
  # Set access to modules in bulk
  result = api_instance.set_access_to_web_items(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->set_access_to_web_items: #{e}"
end
```

#### Using the set_access_to_web_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityArrayWrapper>, Integer, Hash)> set_access_to_web_items_with_http_info(opts)

```ruby
begin
  # Set access to modules in bulk
  data, status_code, headers = api_instance.set_access_to_web_items_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->set_access_to_web_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_items_security_requests_dto** | [**WebItemsSecurityRequestsDto**](WebItemsSecurityRequestsDto.md) |  | [optional] |

### Return type

[**SecurityArrayWrapper**](SecurityArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_product_administrator

> <ProductAdministratorWrapper> set_product_administrator(opts)

Set product administrator

Promotes a portal member to administrator of one module, or takes that role away, according to the  `administrator` flag; the all-zero product GUID targets the DocSpace administrator role, which covers the  whole portal. The caller needs the portal-settings right of a DocSpace administrator, and granting the  portal-wide role additionally requires being the portal owner - anyone else is refused with 403. A free cloud  plan does not offer the option at all and answers 402, as does a promotion for which no paid seat is left,  since promoting a guest or a plain member turns them into a paid one. Taking the portal-wide role away also  removes the member from every product group. The change is immediate, portal-wide, recorded in the audit  trail, and sending the same body twice changes nothing further; it never creates a user, so invite the member  first. The answer echoes the identifiers and the flag as stored - re-read membership with  `GET api/2.0/settings/security/administrator`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-product-administrator/).

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

api_instance = DocspaceApiSdk::Settings::SecurityApi.new
opts = {
  security_requests_dto: DocspaceApiSdk::SecurityRequestsDto.new({product_id: '00000000-0000-0000-0000-000000000000', user_id: '00000000-0000-0000-0000-000000000000'}) # SecurityRequestsDto | 
}

begin
  # Set product administrator
  result = api_instance.set_product_administrator(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->set_product_administrator: #{e}"
end
```

#### Using the set_product_administrator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProductAdministratorWrapper>, Integer, Hash)> set_product_administrator_with_http_info(opts)

```ruby
begin
  # Set product administrator
  data, status_code, headers = api_instance.set_product_administrator_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProductAdministratorWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->set_product_administrator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_requests_dto** | [**SecurityRequestsDto**](SecurityRequestsDto.md) |  | [optional] |

### Return type

[**ProductAdministratorWrapper**](ProductAdministratorWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_web_item_security

> <SecurityArrayWrapper> set_web_item_security(opts)

Set module access

Replaces the access rules of one portal module: `id` names the module, `enabled` says whether it may be  opened, and `subjects` lists the users and groups the rule is stored for. The caller needs the portal-settings  right of a DocSpace administrator, and the call is answered with 403 on an open portal, where everyone is  admitted and per-module rules would mean nothing. `id` has to be a GUID; anything else is rejected as an  invalid request. The rules stored before are dropped rather than extended, so send the full list of subjects  every time. Watch the empty cases: leaving `subjects` out applies `enabled` to everyone, while an empty  `subjects` array is stored as access for everyone whatever `enabled` says. The change is recorded in the audit  trail unless `subjects` was left out entirely. The answer is the module's resulting configuration as a  single-entry list, in the shape `GET api/2.0/settings/security` returns. To switch several modules at once use  `PUT api/2.0/settings/security/access`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-item-security/).

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

api_instance = DocspaceApiSdk::Settings::SecurityApi.new
opts = {
  web_item_security_requests_dto: DocspaceApiSdk::WebItemSecurityRequestsDto.new({id: '00000000-0000-0000-0000-000000000000'}) # WebItemSecurityRequestsDto | 
}

begin
  # Set module access
  result = api_instance.set_web_item_security(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->set_web_item_security: #{e}"
end
```

#### Using the set_web_item_security_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityArrayWrapper>, Integer, Hash)> set_web_item_security_with_http_info(opts)

```ruby
begin
  # Set module access
  data, status_code, headers = api_instance.set_web_item_security_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->set_web_item_security_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_item_security_requests_dto** | [**WebItemSecurityRequestsDto**](WebItemSecurityRequestsDto.md) |  | [optional] |

### Return type

[**SecurityArrayWrapper**](SecurityArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_password_settings

> <PasswordSettingsWrapper> update_password_settings(opts)

Update password settings

Replaces the password policy of the whole portal with the four values sent: `minLength` and the three flags  that demand an uppercase letter, a digit and a special symbol. There is no partial update - a flag left out of  the body is stored as `false` - so read the current policy with `GET api/2.0/settings/security/password` and  send it back with your change applied. The caller needs the portal-settings right of a DocSpace administrator,  otherwise the call is refused. `minLength` has to sit between the floor the installation is configured with, 8  characters unless it was changed, and the ceiling of 30; anything outside is rejected as an invalid request.  The new policy applies to passwords set from now on: existing passwords keep working until their owners change  them, and nobody is asked to renew. The change is portal-wide, recorded in the audit trail, and sending the  same body twice changes nothing further. The answer is the stored policy with its regular expressions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-password-settings/).

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

api_instance = DocspaceApiSdk::Settings::SecurityApi.new
opts = {
  password_settings_requests_dto: DocspaceApiSdk::PasswordSettingsRequestsDto.new({min_length: 8}) # PasswordSettingsRequestsDto | 
}

begin
  # Update password settings
  result = api_instance.update_password_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->update_password_settings: #{e}"
end
```

#### Using the update_password_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PasswordSettingsWrapper>, Integer, Hash)> update_password_settings_with_http_info(opts)

```ruby
begin
  # Update password settings
  data, status_code, headers = api_instance.update_password_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PasswordSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->update_password_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password_settings_requests_dto** | [**PasswordSettingsRequestsDto**](PasswordSettingsRequestsDto.md) |  | [optional] |

### Return type

[**PasswordSettingsWrapper**](PasswordSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

