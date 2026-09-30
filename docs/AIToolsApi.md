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

Registers a custom MCP server under the given name so the model may call its tools. The name becomes a URL path segment, so it may not be `.`, `..`, or contain a path separator or a control character. `config` may be omitted in two cases: a name matching a host-configured system server pins the entry to that server's canonical settings as a whitelist marker, and a name already registered portal-wide copies the portal-level configuration into this scope; anything else without a config is rejected. `entityId` scopes the registration and has to name a room the caller can open - a room that is not an agent room folds to the portal-wide scope, while an unreachable one is refused so it cannot silently rewrite the portal's own registry.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-add-custom-server/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_tools_get_allow_always

> Array&lt;String&gt; ai_tools_get_allow_always(opts)

Get allow always

Returns the always-allow list of the scope - the tools whose calls run without pausing the round for approval. `entityId` picks the scope and omitting it reads the portal-wide setting. An empty answer means every tool call has to be approved through `POST api/2.0/ai/ai/approve-tool-call`. Use `GET api/2.0/ai/tools/is-allow-always` to ask about a single tool.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-allow-always/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ToolsApi.new
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_get_custom_server

> Object ai_tools_get_custom_server(name, opts)

Get custom server

Returns the stored configuration of one registered custom MCP server. The name is required and is read from the query; `entityId` picks the scope, and omitting it reads the portal-wide registry. A name that is not registered answers a null body with status 200 rather than 404. The configuration of a system server is returned empty on purpose: those run server-side only, so neither their endpoint nor their credentials are handed to a browser.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-custom-server/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ToolsApi.new
name = 'acme-mcp' # String | The custom MCP server name.
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_get_disabled

> Hash&lt;String, Array&lt;String&gt;&gt; ai_tools_get_disabled(opts)

Get disabled

Returns the tools switched off in the scope, as a map of server type to tool names. `entityId` picks the scope and omitting it reads the portal-wide setting. An absent server type means nothing is switched off for it, so an empty answer means every tool is on offer. Use `GET api/2.0/ai/tools/is-tool-disabled` to ask about one tool instead of reading the whole map.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-get-disabled/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ToolsApi.new
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_is_allow_always

> Boolean ai_tools_is_allow_always(server_type, tool_name, opts)

Is allow always

Tells whether one named tool runs without an approval pause in the scope. Both `serverType` and `toolName` are required and are read from the query; `entityId` picks the scope. The answer is a bare boolean. A false answer means a call to that tool pauses the round, and the caller resumes it with the approve or deny operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-allow-always/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ToolsApi.new
server_type = 'docspace' # String | The MCP server type the tool belongs to.
tool_name = 'docspace_get_folder' # String | The tool name.
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_is_tool_disabled

> Boolean ai_tools_is_tool_disabled(server_type, tool_name, opts)

Is tool disabled

Tells whether one named tool of one server type is switched off in the scope. Both `serverType` and `toolName` are required and are read from the query; `entityId` picks the scope. The answer is a bare boolean. It reflects only the disable list - a tool that is on offer may still require approval, which `GET api/2.0/ai/tools/is-allow-always` reports.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-is-tool-disabled/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ToolsApi.new
server_type = 'docspace' # String | The MCP server type the tool belongs to.
tool_name = 'docspace_get_folder' # String | The tool name.
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_list_custom_servers

> Hash&lt;String, Object&gt; ai_tools_list_custom_servers(opts)

List custom servers

Lists the custom MCP servers registered in the scope as a map of name to configuration. `entityId` picks the scope and omitting it lists the portal-wide registry. The configuration of any entry that names a host-configured system server comes back empty, for the same reason as in the single-server read, and the portal's own built-in MCP server is left out of the list entirely because it is always enabled and cannot be configured. The names in the answer are what the disable and always-allow operations accept as `serverType`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-custom-servers/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ToolsApi.new
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_list_system_tools

> <AiToolsListSystemTools200Response> ai_tools_list_system_tools(opts)

List system tools

Lists every tool the scope can offer the model, as a map of server type to tool group. The answer merges two sources - the host-configured system servers and the live tools of the scope's registered custom MCP servers - and names the system ones separately in `system`, so a client can tell the two apart. `errors` carries the reason a registered server delivered no tools, which is the text to show on a permission card, because the browser cannot reach a server-executed MCP server to find out for itself. The connections are opened server-side, so one request is enough and the client never speaks MCP itself; the portal's own built-in server is left out because it is always enabled.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-list-system-tools/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ToolsApi.new
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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

> <Array(<AiToolsListSystemTools200Response>, Integer, Hash)> ai_tools_list_system_tools_with_http_info(opts)

```ruby
begin
  # List system tools
  data, status_code, headers = api_instance.ai_tools_list_system_tools_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiToolsListSystemTools200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ToolsApi->ai_tools_list_system_tools_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

[**AiToolsListSystemTools200Response**](AiToolsListSystemTools200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_tools_remove_custom_server

> <AiSuccessResponse> ai_tools_remove_custom_server(ai_tools_remove_custom_server_request)

Remove custom server

Unregisters a custom MCP server from the scope, so the model is no longer offered its tools. The name is required and may be sent in the body or as a query parameter, and `entityId` has to name a room the caller can open. A name that is not registered is not reported: the call answers success without removing anything. The server itself is untouched - only this portal's registration is dropped.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-remove-custom-server/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_tools_replace_all_custom_servers

> <AiToolsBulkResult> ai_tools_replace_all_custom_servers(ai_tools_replace_all_custom_servers_request)

Replace all custom servers

Replaces the whole custom MCP server registry of the scope with the supplied map in one write, which makes it the operation a settings screen saves with. `map` is required: without it the registry would be emptied, so a missing or non-object value is rejected rather than treated as none. Every name in the map is validated as a routable path segment and every configuration is resolved before anything is written, so a map with one bad entry changes nothing. `entityId` has to name a room the caller can open - this is the operation where an unreachable one would otherwise have wiped the portal-wide registry.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-replace-all-custom-servers/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_tools_set_allow_always

> <AiSuccessResponse> ai_tools_set_allow_always(ai_tools_set_allow_always_request)

Set allow always

Adds one tool to the scope's always-allow list, or takes it off, which decides whether a call to it pauses the round for approval. `value` is coerced to a boolean, so any truthy value adds and any falsy one removes. Unlike the disable operation, `serverType` is not validated here: an unknown one is stored and then simply never matches, so a wrong value fails silently. `entityId` has to name a room the caller can open.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-allow-always/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_tools_set_disabled

> <AiSuccessResponse> ai_tools_set_disabled(ai_tools_set_disabled_request)

Set disabled

Switches off the listed tools of one server type in the scope, so the model is no longer offered them. `serverType` has to be a key the round's tool filter actually matches - a host-configured system server, one of the two DocSpace integration groups, web search, image generation, or one of the scope's registered custom servers - and an unknown value is rejected with the list of valid ones in the message, rather than stored and silently ignored. `toolNames` replaces the previous selection for that server type, so send the full list and pass an empty one to switch everything back on. `entityId` has to name a room the caller can open.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-set-disabled/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_tools_update_custom_server

> <AiToolsMutationResult> ai_tools_update_custom_server(ai_tools_update_custom_server_request)

Update custom server

Replaces the stored configuration of a registered custom MCP server, under the same name and scope rules as the add operation. The name is re-validated as a routable path segment, and an omitted `config` resolves the same way - to a system server's canonical settings, or to the portal-level entry of that name. `entityId` has to name a room the caller can open. The answer carries the stored registry entry.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-tools-update-custom-server/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

