# DocspaceApiSdk::SettingsWebpluginsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_web_plugin_from_file**](SettingsWebpluginsApi.md#add_web_plugin_from_file) | **POST** /api/2.0/settings/webplugins | Add a web plugin |
| [**delete_web_plugin**](SettingsWebpluginsApi.md#delete_web_plugin) | **DELETE** /api/2.0/settings/webplugins/{name} | Delete a web plugin |
| [**get_web_plugin**](SettingsWebpluginsApi.md#get_web_plugin) | **GET** /api/2.0/settings/webplugins/{name} | Get a web plugin by name |
| [**get_web_plugins**](SettingsWebpluginsApi.md#get_web_plugins) | **GET** /api/2.0/settings/webplugins | Get web plugins |
| [**update_web_plugin**](SettingsWebpluginsApi.md#update_web_plugin) | **PUT** /api/2.0/settings/webplugins/{name} | Update a web plugin |


## add_web_plugin_from_file

> <WebPluginWrapper> add_web_plugin_from_file(opts)

Add a web plugin

Adds a web plugin from a file to the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-web-plugin-from-file/).

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

api_instance = DocspaceApiSdk::Settings::WebpluginsApi.new
opts = {
  system: false # Boolean | Specifies whether to load the system plugins or not.
}

begin
  # Add a web plugin
  result = api_instance.add_web_plugin_from_file(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebpluginsApi->add_web_plugin_from_file: #{e}"
end
```

#### Using the add_web_plugin_from_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebPluginWrapper>, Integer, Hash)> add_web_plugin_from_file_with_http_info(opts)

```ruby
begin
  # Add a web plugin
  data, status_code, headers = api_instance.add_web_plugin_from_file_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebPluginWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebpluginsApi->add_web_plugin_from_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **system** | **Boolean** | Specifies whether to load the system plugins or not. | [optional] |

### Return type

[**WebPluginWrapper**](WebPluginWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_web_plugin

> delete_web_plugin(name)

Delete a web plugin

Deletes a web plugin by the name specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-web-plugin/).

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

api_instance = DocspaceApiSdk::Settings::WebpluginsApi.new
name = 'example-plugin' # String | The web plugin name.

begin
  # Delete a web plugin
  api_instance.delete_web_plugin(name)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebpluginsApi->delete_web_plugin: #{e}"
end
```

#### Using the delete_web_plugin_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_web_plugin_with_http_info(name)

```ruby
begin
  # Delete a web plugin
  data, status_code, headers = api_instance.delete_web_plugin_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebpluginsApi->delete_web_plugin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The web plugin name. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_web_plugin

> <WebPluginWrapper> get_web_plugin(name)

Get a web plugin by name

Returns a web plugin by the name specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugin/).

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

api_instance = DocspaceApiSdk::Settings::WebpluginsApi.new
name = 'example-plugin' # String | The web plugin name.

begin
  # Get a web plugin by name
  result = api_instance.get_web_plugin(name)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebpluginsApi->get_web_plugin: #{e}"
end
```

#### Using the get_web_plugin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebPluginWrapper>, Integer, Hash)> get_web_plugin_with_http_info(name)

```ruby
begin
  # Get a web plugin by name
  data, status_code, headers = api_instance.get_web_plugin_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebPluginWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebpluginsApi->get_web_plugin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The web plugin name. |  |

### Return type

[**WebPluginWrapper**](WebPluginWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web_plugins

> <WebPluginArrayWrapper> get_web_plugins(opts)

Get web plugins

Returns the portal web plugins.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-plugins/).

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

api_instance = DocspaceApiSdk::Settings::WebpluginsApi.new
opts = {
  enabled: true # Boolean | The optional filter for the plugin enabled state.
}

begin
  # Get web plugins
  result = api_instance.get_web_plugins(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebpluginsApi->get_web_plugins: #{e}"
end
```

#### Using the get_web_plugins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebPluginArrayWrapper>, Integer, Hash)> get_web_plugins_with_http_info(opts)

```ruby
begin
  # Get web plugins
  data, status_code, headers = api_instance.get_web_plugins_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebPluginArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebpluginsApi->get_web_plugins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | The optional filter for the plugin enabled state. | [optional] |

### Return type

[**WebPluginArrayWrapper**](WebPluginArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_web_plugin

> update_web_plugin(name, web_plugin_requests)

Update a web plugin

Updates a web plugin with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-web-plugin/).

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

api_instance = DocspaceApiSdk::Settings::WebpluginsApi.new
name = 'example-plugin' # String | The web plugin name.
web_plugin_requests = DocspaceApiSdk::WebPluginRequests.new({settings: '{"theme":"dark","autoSave":true}'}) # WebPluginRequests | The configuration settings for the web plugin instance.

begin
  # Update a web plugin
  api_instance.update_web_plugin(name, web_plugin_requests)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebpluginsApi->update_web_plugin: #{e}"
end
```

#### Using the update_web_plugin_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_web_plugin_with_http_info(name, web_plugin_requests)

```ruby
begin
  # Update a web plugin
  data, status_code, headers = api_instance.update_web_plugin_with_http_info(name, web_plugin_requests)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebpluginsApi->update_web_plugin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The web plugin name. |  |
| **web_plugin_requests** | [**WebPluginRequests**](WebPluginRequests.md) | The configuration settings for the web plugin instance. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

