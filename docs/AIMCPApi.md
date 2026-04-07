# DocspaceApiSdk::AIMCPApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_room_servers**](AIMCPApi.md#add_room_servers) | **POST** /api/2.0/ai/rooms/{roomId}/servers | Assign MCP servers to a room |
| [**add_server**](AIMCPApi.md#add_server) | **POST** /api/2.0/ai/servers | Register a custom MCP server |
| [**connect_server**](AIMCPApi.md#connect_server) | **POST** /api/2.0/ai/rooms/{roomId}/servers/{serverId}/connect | Connect an OAuth-based MCP server in a room |
| [**delete_room_servers**](AIMCPApi.md#delete_room_servers) | **DELETE** /api/2.0/ai/rooms/{roomId}/servers | Remove MCP servers from a room |
| [**delete_server**](AIMCPApi.md#delete_server) | **DELETE** /api/2.0/ai/servers | Delete MCP servers |
| [**disconnect_server**](AIMCPApi.md#disconnect_server) | **POST** /api/2.0/ai/rooms/{roomId}/servers/{serverId}/disconnect | Disconnect an MCP server in a room |
| [**get_available_servers**](AIMCPApi.md#get_available_servers) | **GET** /api/2.0/ai/servers/available | Get available MCP servers |
| [**get_room_servers**](AIMCPApi.md#get_room_servers) | **GET** /api/2.0/ai/rooms/{roomId}/servers | Get MCP servers assigned to a room |
| [**get_server**](AIMCPApi.md#get_server) | **GET** /api/2.0/ai/servers/{id} | Get an MCP server by ID |
| [**get_servers**](AIMCPApi.md#get_servers) | **GET** /api/2.0/ai/servers | Get all MCP servers |
| [**get_tools**](AIMCPApi.md#get_tools) | **GET** /api/2.0/ai/rooms/{roomId}/servers/{serverId}/tools | Get MCP server tools in a room |
| [**set_server_status**](AIMCPApi.md#set_server_status) | **PUT** /api/2.0/ai/servers/{id}/status | Enable or disable an MCP server |
| [**set_tools**](AIMCPApi.md#set_tools) | **PUT** /api/2.0/ai/rooms/{roomId}/servers/{serverId}/tools | Configure MCP server tools in a room |
| [**update_server**](AIMCPApi.md#update_server) | **PUT** /api/2.0/ai/servers/{id} | Update a custom MCP server |


## add_room_servers

> <McpServerStatusArrayWrapper> add_room_servers(room_id, add_room_servers_request_body)

Assign MCP servers to a room

Associates one or more MCP servers with a specific room, making them available for AI chat sessions  within that room. A maximum of 5 MCP servers can be assigned to a single room. If OAuth-based servers  are included, each room member will need to individually authorize their connection.  Requires room edit permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-servers/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
room_id = 42 # Integer | Identifier of the room to which MCP servers will be assigned.
add_room_servers_request_body = DocspaceApiSdk::AddRoomServersRequestBody.new({servers: ["00000000-0000-0000-0000-000000000000"]}) # AddRoomServersRequestBody | Server identifiers to assign.

begin
  # Assign MCP servers to a room
  result = api_instance.add_room_servers(room_id, add_room_servers_request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->add_room_servers: #{e}"
end
```

#### Using the add_room_servers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<McpServerStatusArrayWrapper>, Integer, Hash)> add_room_servers_with_http_info(room_id, add_room_servers_request_body)

```ruby
begin
  # Assign MCP servers to a room
  data, status_code, headers = api_instance.add_room_servers_with_http_info(room_id, add_room_servers_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <McpServerStatusArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->add_room_servers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | Identifier of the room to which MCP servers will be assigned. |  |
| **add_room_servers_request_body** | [**AddRoomServersRequestBody**](AddRoomServersRequestBody.md) | Server identifiers to assign. |  |

### Return type

[**McpServerStatusArrayWrapper**](McpServerStatusArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_server

> <McpServerWrapper> add_server(add_mcp_server_request_body)

Register a custom MCP server

Registers a new custom MCP (Model Context Protocol) server for the current tenant.  The system validates the server name (only letters, numbers, underscores, and hyphens are allowed),  checks that it is not reserved or already taken, and then attempts to connect to the provided endpoint  to verify reachability and credentials before persisting the configuration.  Requires DocSpace administrator privileges.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-server/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
add_mcp_server_request_body = DocspaceApiSdk::AddMcpServerRequestBody.new({name: 'my-custom-server', description: 'Custom MCP server for project management tools', endpoint: 'https://mcp.example.com/sse'}) # AddMcpServerRequestBody | MCP server registration parameters.

begin
  # Register a custom MCP server
  result = api_instance.add_server(add_mcp_server_request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->add_server: #{e}"
end
```

#### Using the add_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<McpServerWrapper>, Integer, Hash)> add_server_with_http_info(add_mcp_server_request_body)

```ruby
begin
  # Register a custom MCP server
  data, status_code, headers = api_instance.add_server_with_http_info(add_mcp_server_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <McpServerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->add_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_mcp_server_request_body** | [**AddMcpServerRequestBody**](AddMcpServerRequestBody.md) | MCP server registration parameters. |  |

### Return type

[**McpServerWrapper**](McpServerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## connect_server

> <McpServerStatusWrapper> connect_server(room_id, server_id, connect_server_request_body)

Connect an OAuth-based MCP server in a room

Completes the OAuth authorization flow for an MCP server within a specific room on behalf of the  current user. The authorization code obtained from the OAuth provider must be passed in the request body.  Upon successful token exchange, the system verifies connectivity to the server and stores  the credentials for the current user. Requires room edit permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/connect-server/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
room_id = 42 # Integer | Identifier of the room containing the MCP server.
server_id = '00000000-0000-0000-0000-000000000000' # String | Unique identifier of the MCP server to connect.
connect_server_request_body = DocspaceApiSdk::ConnectServerRequestBody.new({code: 'abc123def456'}) # ConnectServerRequestBody | The request body containing additional data necessary for connecting to the server,  such as authentication or operation-specific information.

begin
  # Connect an OAuth-based MCP server in a room
  result = api_instance.connect_server(room_id, server_id, connect_server_request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->connect_server: #{e}"
end
```

#### Using the connect_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<McpServerStatusWrapper>, Integer, Hash)> connect_server_with_http_info(room_id, server_id, connect_server_request_body)

```ruby
begin
  # Connect an OAuth-based MCP server in a room
  data, status_code, headers = api_instance.connect_server_with_http_info(room_id, server_id, connect_server_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <McpServerStatusWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->connect_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | Identifier of the room containing the MCP server. |  |
| **server_id** | **String** | Unique identifier of the MCP server to connect. |  |
| **connect_server_request_body** | [**ConnectServerRequestBody**](ConnectServerRequestBody.md) | The request body containing additional data necessary for connecting to the server,  such as authentication or operation-specific information. |  |

### Return type

[**McpServerStatusWrapper**](McpServerStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_room_servers

> delete_room_servers(room_id, delete_room_servers_request_body)

Remove MCP servers from a room

Detaches one or more MCP servers from the specified room. After removal, the servers will no longer  be available in AI chat sessions within this room. Existing connections and tool configurations for  the removed servers are also cleaned up. Requires room edit permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-servers/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
room_id = 42 # Integer | Identifier of the room from which MCP servers will be removed.
delete_room_servers_request_body = DocspaceApiSdk::DeleteRoomServersRequestBody.new({servers: ["00000000-0000-0000-0000-000000000000"]}) # DeleteRoomServersRequestBody | Server identifiers to remove.

begin
  # Remove MCP servers from a room
  api_instance.delete_room_servers(room_id, delete_room_servers_request_body)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->delete_room_servers: #{e}"
end
```

#### Using the delete_room_servers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_room_servers_with_http_info(room_id, delete_room_servers_request_body)

```ruby
begin
  # Remove MCP servers from a room
  data, status_code, headers = api_instance.delete_room_servers_with_http_info(room_id, delete_room_servers_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->delete_room_servers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | Identifier of the room from which MCP servers will be removed. |  |
| **delete_room_servers_request_body** | [**DeleteRoomServersRequestBody**](DeleteRoomServersRequestBody.md) | Server identifiers to remove. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_server

> delete_server(delete_servers_request_body)

Delete MCP servers

Permanently removes one or more MCP servers from the current tenant by their IDs.  All room associations and connection data for the deleted servers are also cleaned up.  This action is irreversible. Requires DocSpace administrator privileges.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-server/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
delete_servers_request_body = DocspaceApiSdk::DeleteServersRequestBody.new({servers: ["00000000-0000-0000-0000-000000000000"]}) # DeleteServersRequestBody | Server identifiers to delete.

begin
  # Delete MCP servers
  api_instance.delete_server(delete_servers_request_body)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->delete_server: #{e}"
end
```

#### Using the delete_server_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_server_with_http_info(delete_servers_request_body)

```ruby
begin
  # Delete MCP servers
  data, status_code, headers = api_instance.delete_server_with_http_info(delete_servers_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->delete_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_servers_request_body** | [**DeleteServersRequestBody**](DeleteServersRequestBody.md) | Server identifiers to delete. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## disconnect_server

> <McpServerStatusWrapper> disconnect_server(room_id, server_id)

Disconnect an MCP server in a room

Revokes the current user's OAuth connection to an MCP server within the specified room. After  disconnection, the server's tools will no longer be available to this user in AI chat sessions  until they re-authorize. Other room members' connections are not affected.  Requires room edit permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/disconnect-server/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
room_id = 42 # Integer | Identifier of the room containing the MCP server.
server_id = '00000000-0000-0000-0000-000000000000' # String | Unique identifier of the MCP server to disconnect from.

begin
  # Disconnect an MCP server in a room
  result = api_instance.disconnect_server(room_id, server_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->disconnect_server: #{e}"
end
```

#### Using the disconnect_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<McpServerStatusWrapper>, Integer, Hash)> disconnect_server_with_http_info(room_id, server_id)

```ruby
begin
  # Disconnect an MCP server in a room
  data, status_code, headers = api_instance.disconnect_server_with_http_info(room_id, server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <McpServerStatusWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->disconnect_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | Identifier of the room containing the MCP server. |  |
| **server_id** | **String** | Unique identifier of the MCP server to disconnect from. |  |

### Return type

[**McpServerStatusWrapper**](McpServerStatusWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_available_servers

> <McpServerShortArrayWrapper> get_available_servers(opts)

Get available MCP servers

Returns a paginated list of MCP servers that are currently active (enabled) and available for  assignment to rooms. Only servers in the enabled state are included. Each entry contains a compact  summary with the server name, type, icon, and status. Supports pagination via startIndex and count.  The total count of available servers is included in the response metadata.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-available-servers/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
opts = {
  start_index: 0, # Integer | The number of items to skip before returning results (zero-based offset). Defaults to 0.
  count: 100 # Integer | The maximum number of items to return per page. Defaults to 100.
}

begin
  # Get available MCP servers
  result = api_instance.get_available_servers(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->get_available_servers: #{e}"
end
```

#### Using the get_available_servers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<McpServerShortArrayWrapper>, Integer, Hash)> get_available_servers_with_http_info(opts)

```ruby
begin
  # Get available MCP servers
  data, status_code, headers = api_instance.get_available_servers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <McpServerShortArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->get_available_servers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_index** | **Integer** | The number of items to skip before returning results (zero-based offset). Defaults to 0. | [optional] |
| **count** | **Integer** | The maximum number of items to return per page. Defaults to 100. | [optional] |

### Return type

[**McpServerShortArrayWrapper**](McpServerShortArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_servers

> <McpServerStatusArrayWrapper> get_room_servers(room_id)

Get MCP servers assigned to a room

Returns the list of MCP servers currently assigned to the specified room along with their connection  statuses for the current user. For OAuth-based servers, the connection status reflects whether the  current user has completed authorization. Requires access to the room's AI chat.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-servers/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
room_id = 42 # Integer | Identifier of the room whose assigned MCP servers are being retrieved.

begin
  # Get MCP servers assigned to a room
  result = api_instance.get_room_servers(room_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->get_room_servers: #{e}"
end
```

#### Using the get_room_servers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<McpServerStatusArrayWrapper>, Integer, Hash)> get_room_servers_with_http_info(room_id)

```ruby
begin
  # Get MCP servers assigned to a room
  data, status_code, headers = api_instance.get_room_servers_with_http_info(room_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <McpServerStatusArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->get_room_servers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | Identifier of the room whose assigned MCP servers are being retrieved. |  |

### Return type

[**McpServerStatusArrayWrapper**](McpServerStatusArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_server

> <McpServerShortWrapper> get_server(id)

Get an MCP server by ID

Retrieves a summary view of a single MCP server by its unique identifier, including its name,  type, enabled state, and icon. This endpoint returns a compact representation without  sensitive details such as endpoint URL or authentication headers.  Requires DocSpace administrator privileges.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-server/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
id = '00000000-0000-0000-0000-000000000000' # String | Unique identifier of the MCP server to retrieve.

begin
  # Get an MCP server by ID
  result = api_instance.get_server(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->get_server: #{e}"
end
```

#### Using the get_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<McpServerShortWrapper>, Integer, Hash)> get_server_with_http_info(id)

```ruby
begin
  # Get an MCP server by ID
  data, status_code, headers = api_instance.get_server_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <McpServerShortWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->get_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the MCP server to retrieve. |  |

### Return type

[**McpServerShortWrapper**](McpServerShortWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_servers

> <McpServerArrayWrapper> get_servers(opts)

Get all MCP servers

Returns a paginated list of all MCP servers registered for the current tenant, including both  enabled and disabled servers. Each entry contains the full configuration (endpoint, headers,  icon, type, and status). Supports pagination via the startIndex and count query parameters.  The total number of servers is included in the response metadata.  Requires DocSpace administrator privileges.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-servers/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
opts = {
  start_index: 0, # Integer | The number of items to skip before returning results (zero-based offset). Defaults to 0.
  count: 100 # Integer | The maximum number of items to return per page. Defaults to 100.
}

begin
  # Get all MCP servers
  result = api_instance.get_servers(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->get_servers: #{e}"
end
```

#### Using the get_servers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<McpServerArrayWrapper>, Integer, Hash)> get_servers_with_http_info(opts)

```ruby
begin
  # Get all MCP servers
  data, status_code, headers = api_instance.get_servers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <McpServerArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->get_servers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_index** | **Integer** | The number of items to skip before returning results (zero-based offset). Defaults to 0. | [optional] |
| **count** | **Integer** | The maximum number of items to return per page. Defaults to 100. | [optional] |

### Return type

[**McpServerArrayWrapper**](McpServerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tools

> <McpToolArrayWrapper> get_tools(room_id, server_id)

Get MCP server tools in a room

Retrieves the full list of tools exposed by an MCP server within the context of a specific room,  along with each tool's enabled or disabled state. Disabled tools will not be invoked during  AI chat sessions in this room. Requires access to the room's AI chat.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tools/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
room_id = 42 # Integer | Identifier of the room containing the MCP server.
server_id = '00000000-0000-0000-0000-000000000000' # String | Unique identifier of the MCP server whose tools are being retrieved.

begin
  # Get MCP server tools in a room
  result = api_instance.get_tools(room_id, server_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->get_tools: #{e}"
end
```

#### Using the get_tools_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<McpToolArrayWrapper>, Integer, Hash)> get_tools_with_http_info(room_id, server_id)

```ruby
begin
  # Get MCP server tools in a room
  data, status_code, headers = api_instance.get_tools_with_http_info(room_id, server_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <McpToolArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->get_tools_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | Identifier of the room containing the MCP server. |  |
| **server_id** | **String** | Unique identifier of the MCP server whose tools are being retrieved. |  |

### Return type

[**McpToolArrayWrapper**](McpToolArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_server_status

> <McpServerWrapper> set_server_status(id, set_server_status_request_body)

Enable or disable an MCP server

Toggles the enabled/disabled state of an MCP server. When a server is disabled, it becomes  unavailable for assignment to rooms and will not be used during AI chat sessions.  Enabling a previously disabled server restores its availability across the tenant.  Requires DocSpace administrator privileges.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-server-status/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
id = '00000000-0000-0000-0000-000000000000' # String | Unique identifier of the MCP server whose status is being changed.
set_server_status_request_body = DocspaceApiSdk::SetServerStatusRequestBody.new # SetServerStatusRequestBody | New status value.

begin
  # Enable or disable an MCP server
  result = api_instance.set_server_status(id, set_server_status_request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->set_server_status: #{e}"
end
```

#### Using the set_server_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<McpServerWrapper>, Integer, Hash)> set_server_status_with_http_info(id, set_server_status_request_body)

```ruby
begin
  # Enable or disable an MCP server
  data, status_code, headers = api_instance.set_server_status_with_http_info(id, set_server_status_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <McpServerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->set_server_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the MCP server whose status is being changed. |  |
| **set_server_status_request_body** | [**SetServerStatusRequestBody**](SetServerStatusRequestBody.md) | New status value. |  |

### Return type

[**McpServerWrapper**](McpServerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_tools

> <McpToolArrayWrapper> set_tools(room_id, server_id, set_mcp_tools_request_body)

Configure MCP server tools in a room

Updates the set of disabled tools for an MCP server within a specific room. Pass a list of tool names  that should be disabled — all other tools exposed by the server will remain enabled. This allows  room administrators to restrict which MCP capabilities are available during AI chat sessions.  Requires room edit permissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tools/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
room_id = 42 # Integer | Identifier of the room containing the MCP server.
server_id = '00000000-0000-0000-0000-000000000000' # String | Unique identifier of the MCP server whose tools are being configured.
set_mcp_tools_request_body = DocspaceApiSdk::SetMcpToolsRequestBody.new({disabled_tools: ["tool1", "tool2"]}) # SetMcpToolsRequestBody | Tool configuration parameters.

begin
  # Configure MCP server tools in a room
  result = api_instance.set_tools(room_id, server_id, set_mcp_tools_request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->set_tools: #{e}"
end
```

#### Using the set_tools_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<McpToolArrayWrapper>, Integer, Hash)> set_tools_with_http_info(room_id, server_id, set_mcp_tools_request_body)

```ruby
begin
  # Configure MCP server tools in a room
  data, status_code, headers = api_instance.set_tools_with_http_info(room_id, server_id, set_mcp_tools_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <McpToolArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->set_tools_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | Identifier of the room containing the MCP server. |  |
| **server_id** | **String** | Unique identifier of the MCP server whose tools are being configured. |  |
| **set_mcp_tools_request_body** | [**SetMcpToolsRequestBody**](SetMcpToolsRequestBody.md) | Tool configuration parameters. |  |

### Return type

[**McpToolArrayWrapper**](McpToolArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_server

> <McpServerWrapper> update_server(id, update_server_request_body)

Update a custom MCP server

Updates the configuration of an existing custom MCP server identified by its unique ID.  Any combination of fields (name, description, endpoint, headers, icon) can be updated in a single request.  If the endpoint or headers are changed, the system re-validates connectivity by attempting to reach  the new endpoint before saving. Name uniqueness and format rules are enforced on every update.  Requires DocSpace administrator privileges.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-server/).

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

api_instance = DocspaceApiSdk::AI::MCPApi.new
id = '00000000-0000-0000-0000-000000000000' # String | Unique identifier of the MCP server to update.
update_server_request_body = DocspaceApiSdk::UpdateServerRequestBody.new # UpdateServerRequestBody | Updated server configuration fields.

begin
  # Update a custom MCP server
  result = api_instance.update_server(id, update_server_request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->update_server: #{e}"
end
```

#### Using the update_server_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<McpServerWrapper>, Integer, Hash)> update_server_with_http_info(id, update_server_request_body)

```ruby
begin
  # Update a custom MCP server
  data, status_code, headers = api_instance.update_server_with_http_info(id, update_server_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <McpServerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MCPApi->update_server_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the MCP server to update. |  |
| **update_server_request_body** | [**UpdateServerRequestBody**](UpdateServerRequestBody.md) | Updated server configuration fields. |  |

### Return type

[**McpServerWrapper**](McpServerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

