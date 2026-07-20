# DocspaceApiSdk::SettingsWebhooksApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](SettingsWebhooksApi.md#create_webhook) | **POST** /api/2.0/settings/webhook | Create a webhook |
| [**enable_webhook**](SettingsWebhooksApi.md#enable_webhook) | **PUT** /api/2.0/settings/webhook/enable | Enable a webhook |
| [**get_tenant_webhooks**](SettingsWebhooksApi.md#get_tenant_webhooks) | **GET** /api/2.0/settings/webhook | Get webhooks |
| [**get_webhook_triggers**](SettingsWebhooksApi.md#get_webhook_triggers) | **GET** /api/2.0/settings/webhook/triggers | Get webhook triggers |
| [**get_webhooks_logs**](SettingsWebhooksApi.md#get_webhooks_logs) | **GET** /api/2.0/settings/webhooks/log | Get webhook logs |
| [**remove_webhook**](SettingsWebhooksApi.md#remove_webhook) | **DELETE** /api/2.0/settings/webhook/{id} | Remove a webhook |
| [**retry_webhook**](SettingsWebhooksApi.md#retry_webhook) | **PUT** /api/2.0/settings/webhook/{id}/retry | Retry a webhook |
| [**retry_webhooks**](SettingsWebhooksApi.md#retry_webhooks) | **PUT** /api/2.0/settings/webhook/retry | Retry webhooks |
| [**update_webhook**](SettingsWebhooksApi.md#update_webhook) | **PUT** /api/2.0/settings/webhook | Update a webhook |


## create_webhook

> <WebhooksConfigWrapper> create_webhook(opts)

Create a webhook

Creates a new tenant webhook with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-webhook/).

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

api_instance = DocspaceApiSdk::Settings::WebhooksApi.new
opts = {
  create_webhooks_config_requests_dto: DocspaceApiSdk::CreateWebhooksConfigRequestsDto.new({name: 'Production Webhook', uri: 'https://example.com/webhook'}) # CreateWebhooksConfigRequestsDto | 
}

begin
  # Create a webhook
  result = api_instance.create_webhook(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksConfigWrapper>, Integer, Hash)> create_webhook_with_http_info(opts)

```ruby
begin
  # Create a webhook
  data, status_code, headers = api_instance.create_webhook_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksConfigWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_webhooks_config_requests_dto** | [**CreateWebhooksConfigRequestsDto**](CreateWebhooksConfigRequestsDto.md) |  | [optional] |

### Return type

[**WebhooksConfigWrapper**](WebhooksConfigWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## enable_webhook

> <WebhooksConfigWrapper> enable_webhook(opts)

Enable a webhook

Enables or disables a tenant webhook with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-webhook/).

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

api_instance = DocspaceApiSdk::Settings::WebhooksApi.new
opts = {
  update_webhooks_config_requests_dto: DocspaceApiSdk::UpdateWebhooksConfigRequestsDto.new({name: 'Production Webhook', uri: 'https://example.com/webhook', id: 1}) # UpdateWebhooksConfigRequestsDto | 
}

begin
  # Enable a webhook
  result = api_instance.enable_webhook(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->enable_webhook: #{e}"
end
```

#### Using the enable_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksConfigWrapper>, Integer, Hash)> enable_webhook_with_http_info(opts)

```ruby
begin
  # Enable a webhook
  data, status_code, headers = api_instance.enable_webhook_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksConfigWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->enable_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_webhooks_config_requests_dto** | [**UpdateWebhooksConfigRequestsDto**](UpdateWebhooksConfigRequestsDto.md) |  | [optional] |

### Return type

[**WebhooksConfigWrapper**](WebhooksConfigWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_tenant_webhooks

> <WebhooksConfigWithStatusArrayWrapper> get_tenant_webhooks

Get webhooks

Returns a list of the tenant webhooks.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-webhooks/).

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

api_instance = DocspaceApiSdk::Settings::WebhooksApi.new

begin
  # Get webhooks
  result = api_instance.get_tenant_webhooks
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->get_tenant_webhooks: #{e}"
end
```

#### Using the get_tenant_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksConfigWithStatusArrayWrapper>, Integer, Hash)> get_tenant_webhooks_with_http_info

```ruby
begin
  # Get webhooks
  data, status_code, headers = api_instance.get_tenant_webhooks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksConfigWithStatusArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->get_tenant_webhooks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WebhooksConfigWithStatusArrayWrapper**](WebhooksConfigWithStatusArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook_triggers

> <WebhookTriggerArrayWrapper> get_webhook_triggers

Get webhook triggers

Returns a list of triggers for a webhook with their availability for the current user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhook-triggers/).

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

api_instance = DocspaceApiSdk::Settings::WebhooksApi.new

begin
  # Get webhook triggers
  result = api_instance.get_webhook_triggers
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->get_webhook_triggers: #{e}"
end
```

#### Using the get_webhook_triggers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookTriggerArrayWrapper>, Integer, Hash)> get_webhook_triggers_with_http_info

```ruby
begin
  # Get webhook triggers
  data, status_code, headers = api_instance.get_webhook_triggers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookTriggerArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->get_webhook_triggers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WebhookTriggerArrayWrapper**](WebhookTriggerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks_logs

> <WebhooksLogArrayWrapper> get_webhooks_logs(opts)

Get webhook logs

Returns the logs of the webhook activities.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-webhooks-logs/).

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

api_instance = DocspaceApiSdk::Settings::WebhooksApi.new
opts = {
  delivery_from: Time.parse('2024-01-15T10:30Z'), # Time | The delivery start time for filtering webhook logs.
  delivery_to: Time.parse('2024-01-15T10:30Z'), # Time | The delivery end time for filtering webhook logs.
  hook_uri: 'https://example.com/webhook', # String | The destination URL where webhooks are delivered.
  config_id: 1, # Integer | The webhook configuration identifier.
  event_id: 1, # Integer | The unique identifier of the event that triggered the webhook.
  group_status: DocspaceApiSdk::WebhookGroupStatus::None, # WebhookGroupStatus | The status of the webhook delivery group.
  user_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The identifier of the user associated with the webhook event.
  trigger: DocspaceApiSdk::WebhookTrigger::All, # WebhookTrigger | The type of event that triggered the webhook.
  count: 1, # Integer | The maximum number of webhook log records to return in the query response.
  start_index: 1 # Integer | Specifies the starting index for retrieving webhook logs.  Used for pagination in the webhook delivery log queries.
}

begin
  # Get webhook logs
  result = api_instance.get_webhooks_logs(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->get_webhooks_logs: #{e}"
end
```

#### Using the get_webhooks_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksLogArrayWrapper>, Integer, Hash)> get_webhooks_logs_with_http_info(opts)

```ruby
begin
  # Get webhook logs
  data, status_code, headers = api_instance.get_webhooks_logs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksLogArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->get_webhooks_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delivery_from** | **Time** | The delivery start time for filtering webhook logs. | [optional] |
| **delivery_to** | **Time** | The delivery end time for filtering webhook logs. | [optional] |
| **hook_uri** | **String** | The destination URL where webhooks are delivered. | [optional] |
| **config_id** | **Integer** | The webhook configuration identifier. | [optional] |
| **event_id** | **Integer** | The unique identifier of the event that triggered the webhook. | [optional] |
| **group_status** | **WebhookGroupStatus** | The status of the webhook delivery group. | [optional] |
| **user_id** | **String** | The identifier of the user associated with the webhook event. | [optional] |
| **trigger** | **WebhookTrigger** | The type of event that triggered the webhook. | [optional] |
| **count** | **Integer** | The maximum number of webhook log records to return in the query response. | [optional] |
| **start_index** | **Integer** | Specifies the starting index for retrieving webhook logs.  Used for pagination in the webhook delivery log queries. | [optional] |

### Return type

[**WebhooksLogArrayWrapper**](WebhooksLogArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_webhook

> <WebhooksConfigWrapper> remove_webhook(id)

Remove a webhook

Removes a tenant webhook with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-webhook/).

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

api_instance = DocspaceApiSdk::Settings::WebhooksApi.new
id = 1 # Integer | The ID extracted from the route parameters.

begin
  # Remove a webhook
  result = api_instance.remove_webhook(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->remove_webhook: #{e}"
end
```

#### Using the remove_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksConfigWrapper>, Integer, Hash)> remove_webhook_with_http_info(id)

```ruby
begin
  # Remove a webhook
  data, status_code, headers = api_instance.remove_webhook_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksConfigWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->remove_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID extracted from the route parameters. |  |

### Return type

[**WebhooksConfigWrapper**](WebhooksConfigWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retry_webhook

> <WebhooksLogWrapper> retry_webhook(id)

Retry a webhook

Retries a webhook with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhook/).

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

api_instance = DocspaceApiSdk::Settings::WebhooksApi.new
id = 1 # Integer | The ID extracted from the route parameters.

begin
  # Retry a webhook
  result = api_instance.retry_webhook(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->retry_webhook: #{e}"
end
```

#### Using the retry_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksLogWrapper>, Integer, Hash)> retry_webhook_with_http_info(id)

```ruby
begin
  # Retry a webhook
  data, status_code, headers = api_instance.retry_webhook_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksLogWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->retry_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID extracted from the route parameters. |  |

### Return type

[**WebhooksLogWrapper**](WebhooksLogWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retry_webhooks

> <WebhooksLogArrayWrapper> retry_webhooks(opts)

Retry webhooks

Retries all the webhooks with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/retry-webhooks/).

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

api_instance = DocspaceApiSdk::Settings::WebhooksApi.new
opts = {
  webhook_retry_requests_dto: DocspaceApiSdk::WebhookRetryRequestsDto.new # WebhookRetryRequestsDto | 
}

begin
  # Retry webhooks
  result = api_instance.retry_webhooks(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->retry_webhooks: #{e}"
end
```

#### Using the retry_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksLogArrayWrapper>, Integer, Hash)> retry_webhooks_with_http_info(opts)

```ruby
begin
  # Retry webhooks
  data, status_code, headers = api_instance.retry_webhooks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksLogArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->retry_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_retry_requests_dto** | [**WebhookRetryRequestsDto**](WebhookRetryRequestsDto.md) |  | [optional] |

### Return type

[**WebhooksLogArrayWrapper**](WebhooksLogArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_webhook

> <WebhooksConfigWrapper> update_webhook(opts)

Update a webhook

Updates a tenant webhook with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-webhook/).

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

api_instance = DocspaceApiSdk::Settings::WebhooksApi.new
opts = {
  update_webhooks_config_requests_dto: DocspaceApiSdk::UpdateWebhooksConfigRequestsDto.new({name: 'Production Webhook', uri: 'https://example.com/webhook', id: 1}) # UpdateWebhooksConfigRequestsDto | 
}

begin
  # Update a webhook
  result = api_instance.update_webhook(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->update_webhook: #{e}"
end
```

#### Using the update_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhooksConfigWrapper>, Integer, Hash)> update_webhook_with_http_info(opts)

```ruby
begin
  # Update a webhook
  data, status_code, headers = api_instance.update_webhook_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhooksConfigWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::WebhooksApi->update_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_webhooks_config_requests_dto** | [**UpdateWebhooksConfigRequestsDto**](UpdateWebhooksConfigRequestsDto.md) |  | [optional] |

### Return type

[**WebhooksConfigWrapper**](WebhooksConfigWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

