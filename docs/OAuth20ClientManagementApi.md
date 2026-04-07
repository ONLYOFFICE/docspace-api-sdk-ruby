# DocspaceApiSdk::OAuth20ClientManagementApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_activation**](OAuth20ClientManagementApi.md#change_activation) | **PATCH** /api/2.0/clients/{clientId}/activation | Change client activation status |
| [**create_client**](OAuth20ClientManagementApi.md#create_client) | **POST** /api/2.0/clients | Create a new OAuth2 client |
| [**delete_client**](OAuth20ClientManagementApi.md#delete_client) | **DELETE** /api/2.0/clients/{clientId} | Delete an OAuth2 client |
| [**delete_tenant_clients**](OAuth20ClientManagementApi.md#delete_tenant_clients) | **DELETE** /api/2.0/clients/tenant | Delete all tenant OAuth2 clients |
| [**delete_user_clients**](OAuth20ClientManagementApi.md#delete_user_clients) | **DELETE** /api/2.0/clients | Delete all user OAuth2 clients |
| [**regenerate_secret**](OAuth20ClientManagementApi.md#regenerate_secret) | **PATCH** /api/2.0/clients/{clientId}/regenerate | Regenerate client secret |
| [**revoke_user_client**](OAuth20ClientManagementApi.md#revoke_user_client) | **DELETE** /api/2.0/clients/{clientId}/revoke | Revoke client consent |
| [**update_client**](OAuth20ClientManagementApi.md#update_client) | **PUT** /api/2.0/clients/{clientId} | Update an existing OAuth2 client |


## change_activation

> Object change_activation(client_id, change_client_activation_request)

Change client activation status

Activates or deactivates an OAuth2 client. When deactivated, the client cannot request new access tokens, but existing tokens will remain valid until they expire.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-activation/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: x-signature
  config.api_key['x-signature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-signature'] = 'Bearer'
end

api_instance = DocspaceApiSdk::OAuth20::ClientManagementApi.new
client_id = '6c7cf17b-1bd3-47d5-94c6-be2d3570e168' # String | ID of the client to change activation for
change_client_activation_request = DocspaceApiSdk::ChangeClientActivationRequest.new({status: true}) # ChangeClientActivationRequest | 

begin
  # Change client activation status
  result = api_instance.change_activation(client_id, change_client_activation_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->change_activation: #{e}"
end
```

#### Using the change_activation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> change_activation_with_http_info(client_id, change_client_activation_request)

```ruby
begin
  # Change client activation status
  data, status_code, headers = api_instance.change_activation_with_http_info(client_id, change_client_activation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->change_activation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | ID of the client to change activation for |  |
| **change_client_activation_request** | [**ChangeClientActivationRequest**](ChangeClientActivationRequest.md) |  |  |

### Return type

**Object**

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_client

> <ClientResponse> create_client(create_client_request)

Create a new OAuth2 client

Creates a new OAuth2 client with the specified configuration. The client will be created with the provided scopes, redirect URIs, and other settings. Returns the created client details including the generated client ID.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-client/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: x-signature
  config.api_key['x-signature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-signature'] = 'Bearer'
end

api_instance = DocspaceApiSdk::OAuth20::ClientManagementApi.new
create_client_request = DocspaceApiSdk::CreateClientRequest.new({redirect_uris: ["http: //example.com/redirect"], allowed_origins: ["http: //example.com"]}) # CreateClientRequest | 

begin
  # Create a new OAuth2 client
  result = api_instance.create_client(create_client_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->create_client: #{e}"
end
```

#### Using the create_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientResponse>, Integer, Hash)> create_client_with_http_info(create_client_request)

```ruby
begin
  # Create a new OAuth2 client
  data, status_code, headers = api_instance.create_client_with_http_info(create_client_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->create_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_client_request** | [**CreateClientRequest**](CreateClientRequest.md) |  |  |

### Return type

[**ClientResponse**](ClientResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_client

> Object delete_client(client_id)

Delete an OAuth2 client

Permanently deletes an OAuth2 client and all associated data. This will invalidate all access tokens and refresh tokens issued to this client. This operation cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-client/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: x-signature
  config.api_key['x-signature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-signature'] = 'Bearer'
end

api_instance = DocspaceApiSdk::OAuth20::ClientManagementApi.new
client_id = '6c7cf17b-1bd3-47d5-94c6-be2d3570e168' # String | ID of the client to delete

begin
  # Delete an OAuth2 client
  result = api_instance.delete_client(client_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->delete_client: #{e}"
end
```

#### Using the delete_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_client_with_http_info(client_id)

```ruby
begin
  # Delete an OAuth2 client
  data, status_code, headers = api_instance.delete_client_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->delete_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | ID of the client to delete |  |

### Return type

**Object**

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tenant_clients

> Object delete_tenant_clients

Delete all tenant OAuth2 clients

Permanently deletes tenant OAuth2 clients and all associated data. This will invalidate all access tokens and refresh tokens issued to this client. This operation cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-tenant-clients/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: x-signature
  config.api_key['x-signature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-signature'] = 'Bearer'
end

api_instance = DocspaceApiSdk::OAuth20::ClientManagementApi.new

begin
  # Delete all tenant OAuth2 clients
  result = api_instance.delete_tenant_clients
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->delete_tenant_clients: #{e}"
end
```

#### Using the delete_tenant_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_tenant_clients_with_http_info

```ruby
begin
  # Delete all tenant OAuth2 clients
  data, status_code, headers = api_instance.delete_tenant_clients_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->delete_tenant_clients_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_clients

> Object delete_user_clients

Delete all user OAuth2 clients

Permanently deletes user OAuth2 clients and all associated data. This will invalidate all access tokens and refresh tokens issued to this client. This operation cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-user-clients/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: x-signature
  config.api_key['x-signature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-signature'] = 'Bearer'
end

api_instance = DocspaceApiSdk::OAuth20::ClientManagementApi.new

begin
  # Delete all user OAuth2 clients
  result = api_instance.delete_user_clients
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->delete_user_clients: #{e}"
end
```

#### Using the delete_user_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_user_clients_with_http_info

```ruby
begin
  # Delete all user OAuth2 clients
  data, status_code, headers = api_instance.delete_user_clients_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->delete_user_clients_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## regenerate_secret

> <ClientSecretResponse> regenerate_secret(client_id)

Regenerate client secret

Generates a new client secret for the specified OAuth2 client. The old secret will be immediately invalidated. This operation should be used with caution as it requires updating the secret in all client applications.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/regenerate-secret/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: x-signature
  config.api_key['x-signature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-signature'] = 'Bearer'
end

api_instance = DocspaceApiSdk::OAuth20::ClientManagementApi.new
client_id = '6c7cf17b-1bd3-47d5-94c6-be2d3570e168' # String | ID of the client to regenerate secret for

begin
  # Regenerate client secret
  result = api_instance.regenerate_secret(client_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->regenerate_secret: #{e}"
end
```

#### Using the regenerate_secret_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientSecretResponse>, Integer, Hash)> regenerate_secret_with_http_info(client_id)

```ruby
begin
  # Regenerate client secret
  data, status_code, headers = api_instance.regenerate_secret_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientSecretResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->regenerate_secret_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | ID of the client to regenerate secret for |  |

### Return type

[**ClientSecretResponse**](ClientSecretResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revoke_user_client

> Object revoke_user_client(client_id)

Revoke client consent

Revokes all user consents for the specified OAuth2 client. This will invalidate all access tokens and refresh tokens issued to this client for the current user. The user will need to re-authorize the client to access their resources.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/revoke-user-client/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: x-signature
  config.api_key['x-signature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-signature'] = 'Bearer'
end

api_instance = DocspaceApiSdk::OAuth20::ClientManagementApi.new
client_id = '6c7cf17b-1bd3-47d5-94c6-be2d3570e168' # String | ID of the client to revoke consent for

begin
  # Revoke client consent
  result = api_instance.revoke_user_client(client_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->revoke_user_client: #{e}"
end
```

#### Using the revoke_user_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> revoke_user_client_with_http_info(client_id)

```ruby
begin
  # Revoke client consent
  data, status_code, headers = api_instance.revoke_user_client_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->revoke_user_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | ID of the client to revoke consent for |  |

### Return type

**Object**

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_client

> Object update_client(client_id, update_client_request)

Update an existing OAuth2 client

Updates the configuration of an existing OAuth2 client. Allows modification of client name, description, redirect URIs, and other settings. The client ID cannot be modified.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-client/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: x-signature
  config.api_key['x-signature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-signature'] = 'Bearer'
end

api_instance = DocspaceApiSdk::OAuth20::ClientManagementApi.new
client_id = '6c7cf17b-1bd3-47d5-94c6-be2d3570e168' # String | ID of the client to update
update_client_request = DocspaceApiSdk::UpdateClientRequest.new # UpdateClientRequest | 

begin
  # Update an existing OAuth2 client
  result = api_instance.update_client(client_id, update_client_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->update_client: #{e}"
end
```

#### Using the update_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_client_with_http_info(client_id, update_client_request)

```ruby
begin
  # Update an existing OAuth2 client
  data, status_code, headers = api_instance.update_client_with_http_info(client_id, update_client_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->update_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | ID of the client to update |  |
| **update_client_request** | [**UpdateClientRequest**](UpdateClientRequest.md) |  |  |

### Return type

**Object**

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

