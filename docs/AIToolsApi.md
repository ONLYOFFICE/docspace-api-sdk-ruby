# DocspaceApiSdk::AIToolsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_tools_add_custom_server**](AIToolsApi.md#ai_tools_add_custom_server) | **POST** /api/2.0/ai/tools/add-custom-server | Add custom server |
| [**ai_tools_get_allow_always**](AIToolsApi.md#ai_tools_get_allow_always) | **GET** /api/2.0/ai/tools/get-allow-always | Get allow always |
| [**ai_tools_get_custom_server**](AIToolsApi.md#ai_tools_get_custom_server) | **GET** /api/2.0/ai/tools/get-custom-server | Get custom server |
| [**ai_tools_get_disabled**](AIToolsApi.md#ai_tools_get_disabled) | **GET** /api/2.0/ai/tools/get-disabled | Get disabled |
| [**ai_tools_is_allow_always**](AIToolsApi.md#ai_tools_is_allow_always) | **GET** /api/2.0/ai/tools/is-allow-always | Is allow always |
| [**ai_tools_is_tool_disabled**](AIToolsApi.md#ai_tools_is_tool_disabled) | **GET** /api/2.0/ai/tools/is-tool-disabled | Is tool disabled |
| [**ai_tools_list_custom_servers**](AIToolsApi.md#ai_tools_list_custom_servers) | **GET** /api/2.0/ai/tools/list-custom-servers | List custom servers |
| [**ai_tools_list_system_tools**](AIToolsApi.md#ai_tools_list_system_tools) | **GET** /api/2.0/ai/tools/list-system-tools | List system tools |
| [**ai_tools_remove_custom_server**](AIToolsApi.md#ai_tools_remove_custom_server) | **DELETE** /api/2.0/ai/tools/remove-custom-server | Remove custom server |
| [**ai_tools_replace_all_custom_servers**](AIToolsApi.md#ai_tools_replace_all_custom_servers) | **PUT** /api/2.0/ai/tools/replace-all-custom-servers | Replace all custom servers |
| [**ai_tools_set_allow_always**](AIToolsApi.md#ai_tools_set_allow_always) | **PUT** /api/2.0/ai/tools/set-allow-always | Set allow always |
| [**ai_tools_set_disabled**](AIToolsApi.md#ai_tools_set_disabled) | **PUT** /api/2.0/ai/tools/set-disabled | Set disabled |
| [**ai_tools_update_custom_server**](AIToolsApi.md#ai_tools_update_custom_server) | **PUT** /api/2.0/ai/tools/update-custom-server | Update custom server |


## ai_tools_add_custom_server

> <AiToolsMutationResult> ai_tools_add_custom_server(ai_tools_add_custom_server_request)

Add custom server

Registers a custom MCP server in the scope under the given name.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-add-custom-server/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
ai_tools_add_custom_server_request = DocspaceApiSdk::AiToolsAddCustomServerRequest.new({name: 'name_example', config: 3.56}) # AiToolsAddCustomServerRequest | 

begin
  # Add custom server
  result = api_instance.ai_tools_add_custom_server(ai_tools_add_custom_server_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_add_custom_server: #{e}"
end
```

#### Using the ai_tools_add_custom_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiToolsMutationResult>, Integer, Hash)> ai_tools_add_custom_server_with_http_info(ai_tools_add_custom_server_request)

```ruby
begin
  # Add custom server
  data, status_code, headers = api_instance.ai_tools_add_custom_server_with_http_info(ai_tools_add_custom_server_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiToolsMutationResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_add_custom_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_tools_add_custom_server_request** | [**AiToolsAddCustomServerRequest**](AiToolsAddCustomServerRequest.md) |  |  |

### Return type

[**AiToolsMutationResult**](AiToolsMutationResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_tools_get_allow_always

> Array&lt;String&gt; ai_tools_get_allow_always(opts)

Get allow always

Lists the tools on the always-allow list of the scope.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-allow-always/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Get allow always
  result = api_instance.ai_tools_get_allow_always(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_get_allow_always: #{e}"
end
```

#### Using the ai_tools_get_allow_always_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> ai_tools_get_allow_always_with_http_info(opts)

```ruby
begin
  # Get allow always
  data, status_code, headers = api_instance.ai_tools_get_allow_always_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_get_allow_always_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_get_custom_server

> Object ai_tools_get_custom_server(name, opts)

Get custom server

Returns the configuration of one custom MCP server, or an empty result when it is not registered.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-custom-server/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
name = 'name_example' # String | The custom MCP server name.
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Get custom server
  result = api_instance.ai_tools_get_custom_server(name, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_get_custom_server: #{e}"
end
```

#### Using the ai_tools_get_custom_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> ai_tools_get_custom_server_with_http_info(name, opts)

```ruby
begin
  # Get custom server
  data, status_code, headers = api_instance.ai_tools_get_custom_server_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_get_custom_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The custom MCP server name. |  |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_get_disabled

> Hash&lt;String, Array&lt;String&gt;&gt; ai_tools_get_disabled(opts)

Get disabled

Returns the switched-off tools of the scope, grouped by server type.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-disabled/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Get disabled
  result = api_instance.ai_tools_get_disabled(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_get_disabled: #{e}"
end
```

#### Using the ai_tools_get_disabled_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Array&lt;String&gt;&gt;, Integer, Hash)> ai_tools_get_disabled_with_http_info(opts)

```ruby
begin
  # Get disabled
  data, status_code, headers = api_instance.ai_tools_get_disabled_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Array&lt;String&gt;&gt;
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_get_disabled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

**Hash&lt;String, Array&lt;String&gt;&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_is_allow_always

> Boolean ai_tools_is_allow_always(server_type, tool_name, opts)

Is allow always

Tells whether one tool is on the always-allow list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-allow-always/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
server_type = 'server_type_example' # String | The MCP server type the tool belongs to.
tool_name = 'tool_name_example' # String | The tool name.
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Is allow always
  result = api_instance.ai_tools_is_allow_always(server_type, tool_name, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_is_allow_always: #{e}"
end
```

#### Using the ai_tools_is_allow_always_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> ai_tools_is_allow_always_with_http_info(server_type, tool_name, opts)

```ruby
begin
  # Is allow always
  data, status_code, headers = api_instance.ai_tools_is_allow_always_with_http_info(server_type, tool_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_is_allow_always_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_type** | **String** | The MCP server type the tool belongs to. |  |
| **tool_name** | **String** | The tool name. |  |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

**Boolean**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_is_tool_disabled

> Boolean ai_tools_is_tool_disabled(server_type, tool_name, opts)

Is tool disabled

Tells whether one tool of a server type is switched off.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-tool-disabled/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
server_type = 'server_type_example' # String | The MCP server type the tool belongs to.
tool_name = 'tool_name_example' # String | The tool name.
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Is tool disabled
  result = api_instance.ai_tools_is_tool_disabled(server_type, tool_name, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_is_tool_disabled: #{e}"
end
```

#### Using the ai_tools_is_tool_disabled_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> ai_tools_is_tool_disabled_with_http_info(server_type, tool_name, opts)

```ruby
begin
  # Is tool disabled
  data, status_code, headers = api_instance.ai_tools_is_tool_disabled_with_http_info(server_type, tool_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_is_tool_disabled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_type** | **String** | The MCP server type the tool belongs to. |  |
| **tool_name** | **String** | The tool name. |  |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

**Boolean**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_list_custom_servers

> Hash&lt;String, Object&gt; ai_tools_list_custom_servers(opts)

List custom servers

Lists the custom MCP servers registered in the scope, keyed by name.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-custom-servers/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # List custom servers
  result = api_instance.ai_tools_list_custom_servers(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_list_custom_servers: #{e}"
end
```

#### Using the ai_tools_list_custom_servers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> ai_tools_list_custom_servers_with_http_info(opts)

```ruby
begin
  # List custom servers
  data, status_code, headers = api_instance.ai_tools_list_custom_servers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_list_custom_servers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_list_system_tools

> Hash&lt;String, Array&lt;AiTMCPItem&gt;&gt; ai_tools_list_system_tools(opts)

List system tools

Lists the tools of the host-configured system MCP servers, grouped by server type. The servers are connected and listed server-side, so the client renders its permission cards from one request and never opens an MCP connection of its own.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-system-tools/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # List system tools
  result = api_instance.ai_tools_list_system_tools(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_list_system_tools: #{e}"
end
```

#### Using the ai_tools_list_system_tools_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Array&lt;AiTMCPItem&gt;&gt;, Integer, Hash)> ai_tools_list_system_tools_with_http_info(opts)

```ruby
begin
  # List system tools
  data, status_code, headers = api_instance.ai_tools_list_system_tools_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Array&lt;AiTMCPItem&gt;&gt;
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_list_system_tools_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

**Hash&lt;String, Array&lt;AiTMCPItem&gt;&gt;**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_remove_custom_server

> <AiSuccessResponse> ai_tools_remove_custom_server(ai_tools_remove_custom_server_request)

Remove custom server

Removes a custom MCP server from the registry.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-remove-custom-server/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
ai_tools_remove_custom_server_request = DocspaceApiSdk::AiToolsRemoveCustomServerRequest.new({name: 'name_example'}) # AiToolsRemoveCustomServerRequest | 

begin
  # Remove custom server
  result = api_instance.ai_tools_remove_custom_server(ai_tools_remove_custom_server_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_remove_custom_server: #{e}"
end
```

#### Using the ai_tools_remove_custom_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_tools_remove_custom_server_with_http_info(ai_tools_remove_custom_server_request)

```ruby
begin
  # Remove custom server
  data, status_code, headers = api_instance.ai_tools_remove_custom_server_with_http_info(ai_tools_remove_custom_server_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_remove_custom_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_tools_remove_custom_server_request** | [**AiToolsRemoveCustomServerRequest**](AiToolsRemoveCustomServerRequest.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_tools_replace_all_custom_servers

> <AiToolsBulkResult> ai_tools_replace_all_custom_servers(ai_tools_replace_all_custom_servers_request)

Replace all custom servers

Replaces the whole custom MCP server registry of the scope with the supplied map.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-replace-all-custom-servers/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
ai_tools_replace_all_custom_servers_request = DocspaceApiSdk::AiToolsReplaceAllCustomServersRequest.new({map: { key: 3.56}}) # AiToolsReplaceAllCustomServersRequest | 

begin
  # Replace all custom servers
  result = api_instance.ai_tools_replace_all_custom_servers(ai_tools_replace_all_custom_servers_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_replace_all_custom_servers: #{e}"
end
```

#### Using the ai_tools_replace_all_custom_servers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiToolsBulkResult>, Integer, Hash)> ai_tools_replace_all_custom_servers_with_http_info(ai_tools_replace_all_custom_servers_request)

```ruby
begin
  # Replace all custom servers
  data, status_code, headers = api_instance.ai_tools_replace_all_custom_servers_with_http_info(ai_tools_replace_all_custom_servers_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiToolsBulkResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_replace_all_custom_servers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_tools_replace_all_custom_servers_request** | [**AiToolsReplaceAllCustomServersRequest**](AiToolsReplaceAllCustomServersRequest.md) |  |  |

### Return type

[**AiToolsBulkResult**](AiToolsBulkResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_tools_set_allow_always

> <AiSuccessResponse> ai_tools_set_allow_always(ai_tools_set_allow_always_request)

Set allow always

Adds a tool to the always-allow list, or removes it - the tools on that list run without an approval dialog.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-allow-always/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
ai_tools_set_allow_always_request = DocspaceApiSdk::AiToolsSetAllowAlwaysRequest.new({server_type: 'server_type_example', tool_name: 'tool_name_example', value: false}) # AiToolsSetAllowAlwaysRequest | 

begin
  # Set allow always
  result = api_instance.ai_tools_set_allow_always(ai_tools_set_allow_always_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_set_allow_always: #{e}"
end
```

#### Using the ai_tools_set_allow_always_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_tools_set_allow_always_with_http_info(ai_tools_set_allow_always_request)

```ruby
begin
  # Set allow always
  data, status_code, headers = api_instance.ai_tools_set_allow_always_with_http_info(ai_tools_set_allow_always_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_set_allow_always_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_tools_set_allow_always_request** | [**AiToolsSetAllowAlwaysRequest**](AiToolsSetAllowAlwaysRequest.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_tools_set_disabled

> <AiSuccessResponse> ai_tools_set_disabled(ai_tools_set_disabled_request)

Set disabled

Marks the listed tools of one server type as switched off, so the model is no longer offered them.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-disabled/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
ai_tools_set_disabled_request = DocspaceApiSdk::AiToolsSetDisabledRequest.new({server_type: 'server_type_example', tool_names: ['tool_names_example']}) # AiToolsSetDisabledRequest | 

begin
  # Set disabled
  result = api_instance.ai_tools_set_disabled(ai_tools_set_disabled_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_set_disabled: #{e}"
end
```

#### Using the ai_tools_set_disabled_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_tools_set_disabled_with_http_info(ai_tools_set_disabled_request)

```ruby
begin
  # Set disabled
  data, status_code, headers = api_instance.ai_tools_set_disabled_with_http_info(ai_tools_set_disabled_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_set_disabled_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_tools_set_disabled_request** | [**AiToolsSetDisabledRequest**](AiToolsSetDisabledRequest.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_tools_update_custom_server

> <AiToolsMutationResult> ai_tools_update_custom_server(ai_tools_update_custom_server_request)

Update custom server

Updates the configuration of a registered custom MCP server.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-update-custom-server/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ToolsApi.new
ai_tools_update_custom_server_request = DocspaceApiSdk::AiToolsUpdateCustomServerRequest.new({name: 'name_example', config: 3.56}) # AiToolsUpdateCustomServerRequest | 

begin
  # Update custom server
  result = api_instance.ai_tools_update_custom_server(ai_tools_update_custom_server_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_update_custom_server: #{e}"
end
```

#### Using the ai_tools_update_custom_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiToolsMutationResult>, Integer, Hash)> ai_tools_update_custom_server_with_http_info(ai_tools_update_custom_server_request)

```ruby
begin
  # Update custom server
  data, status_code, headers = api_instance.ai_tools_update_custom_server_with_http_info(ai_tools_update_custom_server_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiToolsMutationResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_update_custom_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_tools_update_custom_server_request** | [**AiToolsUpdateCustomServerRequest**](AiToolsUpdateCustomServerRequest.md) |  |  |

### Return type

[**AiToolsMutationResult**](AiToolsMutationResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

