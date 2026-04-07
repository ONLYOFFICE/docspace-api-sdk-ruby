# DocspaceApiSdk::OAuth20ClientQueryingApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_client**](OAuth20ClientQueryingApi.md#get_client) | **GET** /api/2.0/clients/{clientId} | Get client details |
| [**get_client_info**](OAuth20ClientQueryingApi.md#get_client_info) | **GET** /api/2.0/clients/{clientId}/info | Retrieves detailed information for a specific client |
| [**get_clients**](OAuth20ClientQueryingApi.md#get_clients) | **GET** /api/2.0/clients | List clients |
| [**get_clients_info**](OAuth20ClientQueryingApi.md#get_clients_info) | **GET** /api/2.0/clients/info | Retrieves a pageable list of client information |
| [**get_consents**](OAuth20ClientQueryingApi.md#get_consents) | **GET** /api/2.0/clients/consents | Retrieves a pageable list of consents |
| [**get_public_client_info**](OAuth20ClientQueryingApi.md#get_public_client_info) | **GET** /api/2.0/clients/{clientId}/public/info | Handles the GET request for public client information |


## get_client

> <ClientResponse> get_client(client_id)

Get client details

Retrieves detailed information about a specific OAuth2 client including its name, description, redirect URIs, and scopes.

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

Retrieves detailed information for a specific client

Retrieves the detailed information for a client with the ID specified in the request.

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
  # Retrieves detailed information for a specific client
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
  # Retrieves detailed information for a specific client
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

> <PageableResponse> get_clients(limit, opts)

List clients

Retrieves a paginated list of OAuth2 clients. The results can be paginated using the limit parameter and last seen client ID/creation date.

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
limit = 1 # Integer | Pagination limit
opts = {
  last_client_id: '6c7cf17b-1bd3-47d5-94c6-be2d3570e168', # String | ID of the last retrieved client
  last_created_on: Time.parse('2024-04-04T12:00:00Z') # Time | Date of the last retrieved client
}

begin
  # List clients
  result = api_instance.get_clients(limit, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_clients: #{e}"
end
```

#### Using the get_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PageableResponse>, Integer, Hash)> get_clients_with_http_info(limit, opts)

```ruby
begin
  # List clients
  data, status_code, headers = api_instance.get_clients_with_http_info(limit, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PageableResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_clients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Pagination limit | [default to 30] |
| **last_client_id** | **String** | ID of the last retrieved client | [optional] |
| **last_created_on** | **Time** | Date of the last retrieved client | [optional] |

### Return type

[**PageableResponse**](PageableResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_clients_info

> <PageableResponseClientInfoResponse> get_clients_info(limit, opts)

Retrieves a pageable list of client information

Retrieves a paginated list of information for all clients.

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
limit = 1 # Integer | Pagination limit
opts = {
  last_client_id: '6c7cf17b-1bd3-47d5-94c6-be2d3570e168', # String | ID of the last retrieved client
  last_created_on: Time.parse('2024-04-04T12:00:00Z') # Time | Date of the last retrieved client
}

begin
  # Retrieves a pageable list of client information
  result = api_instance.get_clients_info(limit, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_clients_info: #{e}"
end
```

#### Using the get_clients_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PageableResponseClientInfoResponse>, Integer, Hash)> get_clients_info_with_http_info(limit, opts)

```ruby
begin
  # Retrieves a pageable list of client information
  data, status_code, headers = api_instance.get_clients_info_with_http_info(limit, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PageableResponseClientInfoResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ClientQueryingApi->get_clients_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Pagination limit |  |
| **last_client_id** | **String** | ID of the last retrieved client | [optional] |
| **last_created_on** | **Time** | Date of the last retrieved client | [optional] |

### Return type

[**PageableResponseClientInfoResponse**](PageableResponseClientInfoResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_consents

> <PageableModificationResponse> get_consents(limit, opts)

Retrieves a pageable list of consents

Retrieves a paginated list of user consents.

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
limit = 1 # Integer | Pagination limit
opts = {
  last_modified_on: Time.parse('2024-04-04T12:00:00Z') # Time | Date of the last retrieved consent
}

begin
  # Retrieves a pageable list of consents
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
  # Retrieves a pageable list of consents
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
| **limit** | **Integer** | Pagination limit |  |
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

Handles the GET request for public client information

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-public-client-info/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::OAuth20::ClientQueryingApi.new
client_id = '6c7cf17b-1bd3-47d5-94c6-be2d3570e168' # String | ID of the client to retrieve

begin
  # Handles the GET request for public client information
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
  # Handles the GET request for public client information
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

