# DocspaceApiSdk::OAuth20ClientQueryingApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_client**](OAuth20ClientQueryingApi.md#get_client) | **GET** /api/2.0/oauth2/clients/{clientId} | Get client details |
| [**get_client_info**](OAuth20ClientQueryingApi.md#get_client_info) | **GET** /api/2.0/oauth2/clients/{clientId}/info | Get client info |
| [**get_clients**](OAuth20ClientQueryingApi.md#get_clients) | **GET** /api/2.0/oauth2/clients | List clients |
| [**get_clients_info**](OAuth20ClientQueryingApi.md#get_clients_info) | **GET** /api/2.0/oauth2/clients/info | List client info |
| [**get_consents**](OAuth20ClientQueryingApi.md#get_consents) | **GET** /api/2.0/oauth2/clients/consents | List user consents |
| [**get_public_client_info**](OAuth20ClientQueryingApi.md#get_public_client_info) | **GET** /api/2.0/oauth2/clients/{clientId}/public/info | Get public client info |


## get_client

> <ClientResponse> get_client(client_id)

Get client details

Returns the whole stored record of one client: its name and description, its secret, scopes, redirect URIs, allowed origins, logout redirect URIs and audit fields. An administrator sees any client of the tenant, a plain user only the clients they created, and a guest none of them. Whatever the caller may not see is reported as 404 rather than 403, so absence and lack of access are deliberately indistinguishable, and an identifier that is not a valid client ID is reported the same way. The response is a single object, not a collection.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client/).

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

api_instance = DocspaceApiSdk::OAuth20::ClientQueryingApi.new
client_id = '6c7cf17b-1bd3-47d5-94c6-be2d3570e168' # String | ID of the client to retrieve

begin
  # Get client details
  result = api_instance.get_client(client_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_client: #{e}"
end
```

#### Using the get_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientResponse>, Integer, Hash)> get_client_with_http_info(client_id)

```ruby
begin
  # Get client details
  data, status_code, headers = api_instance.get_client_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | ID of the client to retrieve |  |

### Return type

[**ClientResponse**](ClientResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_client_info

> <ClientInfoResponse> get_client_info(client_id)

Get client info

Retrieves the detailed information for a client with the ID specified in the request. It returns the consent-facing subset of the client - name, description, logo, the website, terms and policy URLs, authentication methods and scopes - and deliberately omits the secret, the redirect URIs and the allowed origins, which is what makes it safe to render on a consent screen. An administrator sees any client of the tenant, a plain user only the clients they created, and a guest none of them. A client the caller may not see is reported as 404, exactly like an unknown one.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-client-info/).

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

api_instance = DocspaceApiSdk::OAuth20::ClientQueryingApi.new
client_id = '6c7cf17b-1bd3-47d5-94c6-be2d3570e168' # String | ID of the client to retrieve

begin
  # Get client info
  result = api_instance.get_client_info(client_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_client_info: #{e}"
end
```

#### Using the get_client_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientInfoResponse>, Integer, Hash)> get_client_info_with_http_info(client_id)

```ruby
begin
  # Get client info
  data, status_code, headers = api_instance.get_client_info_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientInfoResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_client_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | ID of the client to retrieve |  |

### Return type

[**ClientInfoResponse**](ClientInfoResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_clients

> <PageableClientResponse> get_clients(opts)

List clients

Returns one page of the tenant's clients, newest first, each in the same full form as the single-client read. An administrator sees every client of the tenant, a plain user only the clients they created. Paging is keyset-based rather than offset-based: limit sets the page size, and last_client_id and last_created_on are carried over from the previous page to ask for the next one. The limit defaults to 30 and has to lie between 1 and 50; a value outside that range, or a last_created_on that cannot be parsed as a date, is rejected with 400.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients/).

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

api_instance = DocspaceApiSdk::OAuth20::ClientQueryingApi.new
opts = {
  limit: 30, # Integer | How many entries to return, between 1 and 50. Defaults to 30 when omitted.
  last_client_id: '6c7cf17b-1bd3-47d5-94c6-be2d3570e168', # String | ID of the last retrieved client
  last_created_on: Time.parse('2024-04-04T12:00:00Z') # Time | Date of the last retrieved client
}

begin
  # List clients
  result = api_instance.get_clients(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_clients: #{e}"
end
```

#### Using the get_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PageableClientResponse>, Integer, Hash)> get_clients_with_http_info(opts)

```ruby
begin
  # List clients
  data, status_code, headers = api_instance.get_clients_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PageableClientResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_clients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | How many entries to return, between 1 and 50. Defaults to 30 when omitted. | [optional][default to 30] |
| **last_client_id** | **String** | ID of the last retrieved client | [optional] |
| **last_created_on** | **Time** | Date of the last retrieved client | [optional] |

### Return type

[**PageableClientResponse**](PageableClientResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_clients_info

> <PageableClientInfoResponse> get_clients_info(limit, opts)

List client info

Retrieves a paginated list of information for all clients, each in the same consent-facing form as the single-client info read. An administrator sees every client of the tenant, a plain user only the clients they created. Paging is keyset-based: limit sets the page size, and last_client_id and last_created_on are carried over from the previous page. Unlike the full client listing, limit has no default here - it has to be supplied on every call and has to lie between 1 and 50, and a missing or out-of-range value is rejected with 400.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-clients-info/).

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

api_instance = DocspaceApiSdk::OAuth20::ClientQueryingApi.new
limit = 30 # Integer | How many entries to return, between 1 and 50. It has no default and has to be sent on every call.
opts = {
  last_client_id: '6c7cf17b-1bd3-47d5-94c6-be2d3570e168', # String | ID of the last retrieved client
  last_created_on: Time.parse('2024-04-04T12:00:00Z') # Time | Date of the last retrieved client
}

begin
  # List client info
  result = api_instance.get_clients_info(limit, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_clients_info: #{e}"
end
```

#### Using the get_clients_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PageableClientInfoResponse>, Integer, Hash)> get_clients_info_with_http_info(limit, opts)

```ruby
begin
  # List client info
  data, status_code, headers = api_instance.get_clients_info_with_http_info(limit, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PageableClientInfoResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_clients_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | How many entries to return, between 1 and 50. It has no default and has to be sent on every call. |  |
| **last_client_id** | **String** | ID of the last retrieved client | [optional] |
| **last_created_on** | **Time** | Date of the last retrieved client | [optional] |

### Return type

[**PageableClientInfoResponse**](PageableClientInfoResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_consents

> <PageableModificationResponse> get_consents(limit, opts)

List user consents

Retrieves a paginated list of user consents: the clients the calling user has authorized, each with the scopes granted, the moment the consent was last changed and the client's consent-facing details. It always reports the caller's own consents and nothing else - there is no role check on this endpoint, so guests may call it too, and no parameter widens it to another user. The consents are read from the authorization service over gRPC, so an authorization service that cannot be reached surfaces as 503. Paging is keyset-based on last_modified_on, and limit has no default: it has to be supplied on every call and has to lie between 1 and 50.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-consents/).

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

api_instance = DocspaceApiSdk::OAuth20::ClientQueryingApi.new
limit = 30 # Integer | How many entries to return, between 1 and 50. It has no default and has to be sent on every call.
opts = {
  last_modified_on: Time.parse('2024-04-04T12:00:00Z') # Time | Date of the last retrieved consent
}

begin
  # List user consents
  result = api_instance.get_consents(limit, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_consents: #{e}"
end
```

#### Using the get_consents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PageableModificationResponse>, Integer, Hash)> get_consents_with_http_info(limit, opts)

```ruby
begin
  # List user consents
  data, status_code, headers = api_instance.get_consents_with_http_info(limit, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PageableModificationResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_consents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | How many entries to return, between 1 and 50. It has no default and has to be sent on every call. |  |
| **last_modified_on** | **Time** | Date of the last retrieved consent | [optional] |

### Return type

[**PageableModificationResponse**](PageableModificationResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_public_client_info

> <ClientInfoResponse> get_public_client_info(client_id)

Get public client info

Returns the same consent-facing client information as the signed read, but without requiring a portal signature. It is meant for a login or consent page that has to render the client before the user is known, so it resolves the client by ID alone: there is no authentication, no tenant scoping and no creator check, and any caller who knows a client ID can read that client's public details. It still exposes no secret, no redirect URIs and no allowed origins. Being unauthenticated it is rate-limited on a separate, tighter budget than the signed endpoints. An unknown client ID, and an identifier that is not a client ID at all, are both reported as 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-client-info/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::OAuth20::ClientQueryingApi.new
client_id = '6c7cf17b-1bd3-47d5-94c6-be2d3570e168' # String | ID of the client to retrieve

begin
  # Get public client info
  result = api_instance.get_public_client_info(client_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_public_client_info: #{e}"
end
```

#### Using the get_public_client_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientInfoResponse>, Integer, Hash)> get_public_client_info_with_http_info(client_id)

```ruby
begin
  # Get public client info
  data, status_code, headers = api_instance.get_public_client_info_with_http_info(client_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientInfoResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_public_client_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | ID of the client to retrieve |  |

### Return type

[**ClientInfoResponse**](ClientInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

