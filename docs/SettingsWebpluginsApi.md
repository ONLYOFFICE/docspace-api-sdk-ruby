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

Installs a web plugin into the current portal from an uploaded package, and switches the plugin on straight  away. The package is sent as `multipart/form-data` with exactly one file: a `.zip` archive holding a  `config.json` manifest and a `plugin.js` entry point, under the configured size cap of 5 MB by default.  Editing the portal settings is required, so a portal owner or administrator, and the installation has to have  web plugins and plugin uploading enabled in its configuration. Pass `system=true` to install the plugin for  every portal of the installation, which is accepted on standalone installations only. The call is mutating and  not idempotent: a package whose manifest name is already installed replaces the stored files and keeps the  settings saved for that name, and the domains the manifest declares are added to the portal Content Security  Policy. It returns the freshly installed plugin, enabled, with the `url` its script is served from. A portal  holds up to 100 plugins by default, the manifest name has to be lower-case letters, digits, `_`, `.` or `-`,  and the package is rejected when another installed plugin registers the same JavaScript object under a  different name. List what is installed with `GET api/2.0/settings/webplugins`.

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
  system: false # Boolean | Whether the plugin is installed for every portal of the installation rather than only this one. It is  accepted on a self-hosted installation alone and refused with 403 elsewhere; an installation-wide plugin also  hides a portal plugin that carries the same name.
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
| **system** | **Boolean** | Whether the plugin is installed for every portal of the installation rather than only this one. It is  accepted on a self-hosted installation alone and refused with 403 elsewhere; an installation-wide plugin also  hides a portal plugin that carries the same name. | [optional] |

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

Removes a web plugin from the current portal and deletes the files of its package from storage. The `name` is  the manifest name published by `GET api/2.0/settings/webplugins`, matched without regard to case. Editing the  portal settings is required, so a portal owner or administrator, and the installation has to have web plugins  and plugin deletion enabled in its configuration. An installation-wide plugin, the one whose `system` field is  true, can be removed on standalone installations only. The call is destructive and cannot be undone: the state  and the settings stored for the plugin are dropped along with its files, the domains its manifest declares are  taken out of the portal Content Security Policy, and the connected clients are notified. Getting the plugin  back means uploading its package again with `POST api/2.0/settings/webplugins`, and the settings it had are  gone. Nothing is returned on success, and a repeated call on a name that is no longer installed is rejected as  not found instead of answered as success. To keep a plugin installed but inactive, switch it off with  `PUT api/2.0/settings/webplugins/{name}` instead.

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
name = 'example-plugin' # String | The plugin to act on, by the manifest name `GET api/2.0/settings/webplugins` publishes as `name`, matched  without regard to case. It is neither the localized display name nor the JavaScript object name in  `pluginName`; a name that is not installed answers 404.

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
| **name** | **String** | The plugin to act on, by the manifest name `GET api/2.0/settings/webplugins` publishes as `name`, matched  without regard to case. It is neither the localized display name nor the JavaScript object name in  `pluginName`; a name that is not installed answers 404. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web_plugin

> <WebPluginWrapper> get_web_plugin(name)

Get a web plugin by name

Returns one web plugin of the current portal by its manifest name, looked up over the same set as  `GET api/2.0/settings/webplugins`: the installation-wide plugins plus the portal's own. The `name` is the  manifest name published in the `name` field of that list, matched without regard to case; it is neither the  localized display name nor the JavaScript object name in `pluginName`, so it cannot be taken from the title  shown in the interface. Any authenticated portal member may call it, no settings permission needed, and the  installation has to have web plugins enabled in its configuration. The call is read-only and idempotent. The  response carries the manifest data along with the state the portal stored for that plugin: `enabled`, the  `settings` string, `system`, and the `url` and `cssUrl` a client loads it from. A name that is not installed  is rejected as not found, and 403 means web plugins are switched off for the installation. Change the state of  the plugin with `PUT api/2.0/settings/webplugins/{name}`.

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
name = 'example-plugin' # String | The plugin to act on, by the manifest name `GET api/2.0/settings/webplugins` publishes as `name`, matched  without regard to case. It is neither the localized display name nor the JavaScript object name in  `pluginName`; a name that is not installed answers 404.

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
| **name** | **String** | The plugin to act on, by the manifest name `GET api/2.0/settings/webplugins` publishes as `name`, matched  without regard to case. It is neither the localized display name nor the JavaScript object name in  `pluginName`; a name that is not installed answers 404. |  |

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

Lists the web plugins available in the current portal: the plugins installed for the whole installation first,  then the portal's own, with a portal plugin dropped when an installation-wide plugin already uses its name.  Any authenticated portal member may call it, no settings permission needed, and the installation has to have  web plugins enabled in its configuration. The call is read-only and idempotent. Pass `enabled=true` or  `enabled=false` to keep only the plugins in that state, and leave the parameter out to get every plugin. Each  entry carries the manifest data together with the state the portal stored for that plugin: `enabled`, the  `settings` string, `system` for an installation-wide plugin, and the `url` and `cssUrl` a client loads the  plugin from. An empty list means nothing is installed for this portal, not that plugins are switched off,  which is refused with 403 instead. The list is capped at the configured maximum, 100 plugins by default, and  is not paginated. For one plugin by its manifest name use `GET api/2.0/settings/webplugins/{name}`.

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
  enabled: true # Boolean | Which plugins are kept: `true` the ones switched on, `false` the ones switched off. Omitting it lists every  installed plugin whatever its state.
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
| **enabled** | **Boolean** | Which plugins are kept: `true` the ones switched on, `false` the ones switched off. Omitting it lists every  installed plugin whatever its state. | [optional] |

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

Switches a web plugin of the current portal on or off and stores the settings string the portal keeps for it.  The plugin has to be installed already, so upload its package with `POST api/2.0/settings/webplugins` first,  and `name` is its manifest name as published by `GET api/2.0/settings/webplugins`, matched without regard to  case. Editing the portal settings is required, so a portal owner or administrator, and the installation has to  have web plugins enabled in its configuration. The body replaces the stored state instead of merging into it,  which makes the call idempotent; `settings` is required, so send `{}` when there is nothing to keep, and it is  limited to 255 characters and stored encrypted for this portal alone. Switching the plugin on adds the domains  its manifest declares to the portal Content Security Policy and switching it off takes them away again, and  the connected clients are notified of the new state. Nothing is returned on success. A name that is not  installed is rejected as not found, and 403 means web plugins are switched off or the caller may not edit the  portal settings.

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
name = 'example-plugin' # String | The plugin to change, by the manifest name `GET api/2.0/settings/webplugins` publishes as `name`, matched  without regard to case. It is neither the localized display name nor the JavaScript object name in  `pluginName`, so it cannot be read off the interface; a name that is not installed answers 404.
web_plugin_requests = DocspaceApiSdk::WebPluginRequests.new({settings: '{"theme":"dark","autoSave":true}'}) # WebPluginRequests | The whole state the plugin is to have afterwards. It replaces what was stored instead of merging into it, so  both the enabled flag and the settings have to be sent every time.

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
| **name** | **String** | The plugin to change, by the manifest name `GET api/2.0/settings/webplugins` publishes as `name`, matched  without regard to case. It is neither the localized display name nor the JavaScript object name in  `pluginName`, so it cannot be read off the interface; a name that is not installed answers 404. |  |
| **web_plugin_requests** | [**WebPluginRequests**](WebPluginRequests.md) | The whole state the plugin is to have afterwards. It replaces what was stored instead of merging into it, so  both the enabled flag and the settings have to be sent every time. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

