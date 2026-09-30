# DocspaceApiSdk::OAuth20ClientManagementApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_activation**](OAuth20ClientManagementApi.md#change_activation) | **PATCH** /api/2.0/oauth2/clients/{clientId}/activation | Change client activation status |
| [**create_client**](OAuth20ClientManagementApi.md#create_client) | **POST** /api/2.0/oauth2/clients | Create a new OAuth2 client |
| [**delete_client**](OAuth20ClientManagementApi.md#delete_client) | **DELETE** /api/2.0/oauth2/clients/{clientId} | Delete an OAuth2 client |
| [**delete_tenant_clients**](OAuth20ClientManagementApi.md#delete_tenant_clients) | **DELETE** /api/2.0/oauth2/clients/tenant | Delete all tenant OAuth2 clients |
| [**delete_user_clients**](OAuth20ClientManagementApi.md#delete_user_clients) | **DELETE** /api/2.0/oauth2/clients | Delete all user OAuth2 clients |
| [**regenerate_secret**](OAuth20ClientManagementApi.md#regenerate_secret) | **PATCH** /api/2.0/oauth2/clients/{clientId}/regenerate | Regenerate client secret |
| [**revoke_user_client**](OAuth20ClientManagementApi.md#revoke_user_client) | **DELETE** /api/2.0/oauth2/clients/{clientId}/revoke | Revoke client consent |
| [**update_client**](OAuth20ClientManagementApi.md#update_client) | **PUT** /api/2.0/oauth2/clients/{clientId} | Update an existing OAuth2 client |


## change_activation

> change_activation(client_id, change_client_activation_request)

Change client activation status

Enables or disables an existing client and answers 200 with an empty body. A disabled client can no longer obtain new tokens, but the tokens and consents it already holds stay valid until they expire on their own: disable a client to stop new authorizations, delete it to end the existing ones. An administrator may change any client of the tenant, a plain user only the clients they created. The body carries the single activation flag, and a client the caller may not see is reported as not found rather than as forbidden.

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
  api_instance.change_activation(client_id, change_client_activation_request)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->change_activation: #{e}"
end
```

#### Using the change_activation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> change_activation_with_http_info(client_id, change_client_activation_request)

```ruby
begin
  # Change client activation status
  data, status_code, headers = api_instance.change_activation_with_http_info(client_id, change_client_activation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_client

> <ClientResponse> create_client(create_client_request)

Create a new OAuth2 client

Registers a new OAuth2 client in the caller's tenant and returns it. The body must carry a name, a description, a logo and at least one redirect URI, allowed origin and scope, and every scope named must already exist in the tenant's scope catalogue. Administrators and users may both register clients; the caller is recorded as the creator, which is what later restricts a plain user to the clients they created. The response is the stored client with its generated client ID and secret, and it is the first place either value can be read. Some deployments cap how many clients one tenant may hold, and reaching that cap is reported as 400 together with the validation failures.

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
create_client_request = DocspaceApiSdk::CreateClientRequest.new({name: 'Example Client', logo: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg==', scopes: ['files:read'], website_url: 'http://example.com', terms_url: 'http://example.com/terms', policy_url: 'http://example.com/policy', redirect_uris: ['http://example.com/redirect'], allowed_origins: ['http://example.com'], logout_redirect_uri: 'http://example.com/logout'}) # CreateClientRequest | 

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

> delete_client(client_id)

Delete an OAuth2 client

Deletes one client from the tenant permanently and answers 200 with an empty body. An administrator may delete any client of the tenant, a plain user only the clients they created, and a client the caller may not see is reported as not found rather than as forbidden. The authorizations and consents issued for the client are removed too, but that cleanup is driven by a message and completes on the authorization service after this call has already returned. A delete that removes no row answers 400. The operation cannot be undone.

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
  api_instance.delete_client(client_id)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->delete_client: #{e}"
end
```

#### Using the delete_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_client_with_http_info(client_id)

```ruby
begin
  # Delete an OAuth2 client
  data, status_code, headers = api_instance.delete_client_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->delete_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | ID of the client to delete |  |

### Return type

nil (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tenant_clients

> delete_tenant_clients

Delete all tenant OAuth2 clients

Deletes every client registered in the current tenant and answers 200 with an empty body. Only an administrator may call it - for a plain user or a guest it is refused with 403 - and it removes the clients of all users of the tenant, not only those of the caller. The authorizations and consents of the deleted clients are cleaned up asynchronously on the authorization service, and the tenant's client cache is dropped as part of the call. Concurrent modification that survives the retries is reported as 400. The operation cannot be undone, and the response does not say how many clients were removed.

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
  api_instance.delete_tenant_clients
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->delete_tenant_clients: #{e}"
end
```

#### Using the delete_tenant_clients_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tenant_clients_with_http_info

```ruby
begin
  # Delete all tenant OAuth2 clients
  data, status_code, headers = api_instance.delete_tenant_clients_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->delete_tenant_clients_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_clients

> delete_user_clients

Delete all user OAuth2 clients

Deletes every client the calling user created in the current tenant and answers 200 with an empty body. The caller's own identity always selects the set, so this never reaches clients created by somebody else, not even for an administrator. The authorizations and consents of the deleted clients are cleaned up asynchronously on the authorization service, and the tenant's client cache is dropped as part of the call. Concurrent modification that survives the retries is reported as 400. The operation cannot be undone, and the response does not say how many clients were removed.

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
  api_instance.delete_user_clients
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->delete_user_clients: #{e}"
end
```

#### Using the delete_user_clients_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_clients_with_http_info

```ruby
begin
  # Delete all user OAuth2 clients
  data, status_code, headers = api_instance.delete_user_clients_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->delete_user_clients_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## regenerate_secret

> <ClientSecretResponse> regenerate_secret(client_id)

Regenerate client secret

Issues a new secret for the client and returns it. The previous secret stops working as soon as this call succeeds, there is no grace period and no way to recover it, so every deployed copy of the client has to be updated with the value returned here. An administrator may do this for any client of the tenant, a plain user only for the clients they created. Tokens already issued to the client keep working; only future client authentication is affected. The response carries the new secret and nothing else.

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

> revoke_user_client(client_id)

Revoke client consent

Revokes the calling user's own consent for one client and answers 200 with an empty body. It touches only the caller's grant: other users keep their consents and the client itself stays registered. Guests may call it as well as users and administrators, because it can never reach anyone else's data. The revocation is carried out by the authorization service over gRPC, so a service that reports nothing was revoked produces 400 and a service that cannot be reached produces 503. Once it succeeds the user has to authorize the client again before it can act on their behalf.

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
  api_instance.revoke_user_client(client_id)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->revoke_user_client: #{e}"
end
```

#### Using the revoke_user_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> revoke_user_client_with_http_info(client_id)

```ruby
begin
  # Revoke client consent
  data, status_code, headers = api_instance.revoke_user_client_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->revoke_user_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | ID of the client to revoke consent for |  |

### Return type

nil (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_client

> update_client(client_id, update_client_request)

Update an existing OAuth2 client

Updates the mutable settings of an existing client and answers 200 with an empty body. Only the fields carried in the request body change; the client ID, the secret, the tenant and the creator cannot be changed this way. An administrator may update any client of the tenant, a plain user only the clients they created, and a client the caller may not see is reported as not found rather than as forbidden. The write runs under optimistic locking and is retried a few times, so a request that still loses the race is rejected with 400 instead of silently overwriting a concurrent change. Nothing is returned in the body - read the client back to see the stored result.

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
update_client_request = DocspaceApiSdk::UpdateClientRequest.new({name: 'Updated Client', logo: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg==', scopes: ['files:read'], allowed_origins: ['http://example.com'], redirect_uris: ['https://example.com/callback']}) # UpdateClientRequest | 

begin
  # Update an existing OAuth2 client
  api_instance.update_client(client_id, update_client_request)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientManagementApi->update_client: #{e}"
end
```

#### Using the update_client_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_client_with_http_info(client_id, update_client_request)

```ruby
begin
  # Update an existing OAuth2 client
  data, status_code, headers = api_instance.update_client_with_http_info(client_id, update_client_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
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

nil (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

