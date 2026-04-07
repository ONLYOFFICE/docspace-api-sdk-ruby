# DocspaceApiSdk::SettingsSecurityApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_enabled_modules**](SettingsSecurityApi.md#get_enabled_modules) | **GET** /api/2.0/settings/security/modules | Get the enabled modules |
| [**get_is_product_administrator**](SettingsSecurityApi.md#get_is_product_administrator) | **GET** /api/2.0/settings/security/administrator | Check a product administrator |
| [**get_password_settings**](SettingsSecurityApi.md#get_password_settings) | **GET** /api/2.0/settings/security/password | Get the password settings |
| [**get_product_administrators**](SettingsSecurityApi.md#get_product_administrators) | **GET** /api/2.0/settings/security/administrator/{productid} | Get the product administrators |
| [**get_web_item_security_info**](SettingsSecurityApi.md#get_web_item_security_info) | **GET** /api/2.0/settings/security/{id} | Get the module availability |
| [**get_web_item_settings_security_info**](SettingsSecurityApi.md#get_web_item_settings_security_info) | **GET** /api/2.0/settings/security | Get the security settings |
| [**set_access_to_web_items**](SettingsSecurityApi.md#set_access_to_web_items) | **PUT** /api/2.0/settings/security/access | Set the security settings to modules |
| [**set_product_administrator**](SettingsSecurityApi.md#set_product_administrator) | **PUT** /api/2.0/settings/security/administrator | Set a product administrator |
| [**set_web_item_security**](SettingsSecurityApi.md#set_web_item_security) | **PUT** /api/2.0/settings/security | Set the module security settings |
| [**update_password_settings**](SettingsSecurityApi.md#update_password_settings) | **PUT** /api/2.0/settings/security/password | Set the password settings |


## get_enabled_modules

> <ObjectWrapper> get_enabled_modules

Get the enabled modules

Returns a list of all the enabled modules.

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
  # Get the enabled modules
  result = api_instance.get_enabled_modules
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_enabled_modules: #{e}"
end
```

#### Using the get_enabled_modules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectWrapper>, Integer, Hash)> get_enabled_modules_with_http_info

```ruby
begin
  # Get the enabled modules
  data, status_code, headers = api_instance.get_enabled_modules_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SecurityApi->get_enabled_modules_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_is_product_administrator

> <ProductAdministratorWrapper> get_is_product_administrator(productid, userid)

Check a product administrator

Checks if the selected user is an administrator of a product with the ID specified in the request.

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
productid = '00000000-0000-0000-0000-000000000000' # String | The ID of the product extracted from the query parameters.
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID extracted from the query parameters.

begin
  # Check a product administrator
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
  # Check a product administrator
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
| **productid** | **String** | The ID of the product extracted from the query parameters. |  |
| **userid** | **String** | The user ID extracted from the query parameters. |  |

### Return type

[**ProductAdministratorWrapper**](ProductAdministratorWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_password_settings

> <PasswordSettingsWrapper> get_password_settings

Get the password settings

Returns the portal password settings.

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
  # Get the password settings
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
  # Get the password settings
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

Get the product administrators

Returns a list of all the administrators of a product with the ID specified in the request.

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
productid = '00000000-0000-0000-0000-000000000000' # String | The ID of the product extracted from the route parameters.

begin
  # Get the product administrators
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
  # Get the product administrators
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
| **productid** | **String** | The ID of the product extracted from the route parameters. |  |

### Return type

[**EmployeeArrayWrapper**](EmployeeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web_item_security_info

> <BooleanWrapper> get_web_item_security_info(id)

Get the module availability

Returns the availability of the module with the ID specified in the request.

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
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID extracted from the route parameters.

begin
  # Get the module availability
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
  # Get the module availability
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
| **id** | **String** | The ID extracted from the route parameters. |  |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web_item_settings_security_info

> <SecurityArrayWrapper> get_web_item_settings_security_info(opts)

Get the security settings

Returns the security settings for the modules specified in the request.

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
  ids: [["item1", "item2"]] # Array<String> | The list of module identifiers for which to retrieve the security settings.
}

begin
  # Get the security settings
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
  # Get the security settings
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
| **ids** | [**Array&lt;String&gt;**](String.md) | The list of module identifiers for which to retrieve the security settings. | [optional] |

### Return type

[**SecurityArrayWrapper**](SecurityArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_access_to_web_items

> <SecurityArrayWrapper> set_access_to_web_items(opts)

Set the security settings to modules

Sets the security settings to the modules with the IDs specified in the request.

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
  # Set the security settings to modules
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
  # Set the security settings to modules
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

Set a product administrator

Sets the selected user as an administrator of a product with the ID specified in the request.

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
  # Set a product administrator
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
  # Set a product administrator
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

Set the module security settings

Sets the security settings to the module with the ID specified in the request.

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
  # Set the module security settings
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
  # Set the module security settings
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

Set the password settings

Sets the portal password settings.

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
  # Set the password settings
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
  # Set the password settings
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

