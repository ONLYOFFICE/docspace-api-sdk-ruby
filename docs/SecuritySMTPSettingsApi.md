# DocspaceApiSdk::SecuritySMTPSettingsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_smtp_operation_status**](SecuritySMTPSettingsApi.md#get_smtp_operation_status) | **GET** /api/2.0/smtpsettings/smtp/test/status | Get the SMTP testing process status |
| [**get_smtp_settings**](SecuritySMTPSettingsApi.md#get_smtp_settings) | **GET** /api/2.0/smtpsettings/smtp | Get the SMTP settings |
| [**reset_smtp_settings**](SecuritySMTPSettingsApi.md#reset_smtp_settings) | **DELETE** /api/2.0/smtpsettings/smtp | Reset the SMTP settings |
| [**save_smtp_settings**](SecuritySMTPSettingsApi.md#save_smtp_settings) | **POST** /api/2.0/smtpsettings/smtp | Save the SMTP settings |
| [**test_smtp_settings**](SecuritySMTPSettingsApi.md#test_smtp_settings) | **GET** /api/2.0/smtpsettings/smtp/test | Test the SMTP settings |


## get_smtp_operation_status

> <SmtpOperationStatusRequestsWrapper> get_smtp_operation_status

Get the SMTP testing process status

Returns the status of the SMTP testing process.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-smtp-operation-status/).

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

api_instance = DocspaceApiSdk::Security::SMTPSettingsApi.new

begin
  # Get the SMTP testing process status
  result = api_instance.get_smtp_operation_status
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::SMTPSettingsApi->get_smtp_operation_status: #{e}"
end
```

#### Using the get_smtp_operation_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SmtpOperationStatusRequestsWrapper>, Integer, Hash)> get_smtp_operation_status_with_http_info

```ruby
begin
  # Get the SMTP testing process status
  data, status_code, headers = api_instance.get_smtp_operation_status_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SmtpOperationStatusRequestsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::SMTPSettingsApi->get_smtp_operation_status_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SmtpOperationStatusRequestsWrapper**](SmtpOperationStatusRequestsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_smtp_settings

> <SmtpSettingsWrapper> get_smtp_settings

Get the SMTP settings

Returns the current portal SMTP settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-smtp-settings/).

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

api_instance = DocspaceApiSdk::Security::SMTPSettingsApi.new

begin
  # Get the SMTP settings
  result = api_instance.get_smtp_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::SMTPSettingsApi->get_smtp_settings: #{e}"
end
```

#### Using the get_smtp_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SmtpSettingsWrapper>, Integer, Hash)> get_smtp_settings_with_http_info

```ruby
begin
  # Get the SMTP settings
  data, status_code, headers = api_instance.get_smtp_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SmtpSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::SMTPSettingsApi->get_smtp_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SmtpSettingsWrapper**](SmtpSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_smtp_settings

> <SmtpSettingsWrapper> reset_smtp_settings

Reset the SMTP settings

Resets the SMTP settings of the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-smtp-settings/).

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

api_instance = DocspaceApiSdk::Security::SMTPSettingsApi.new

begin
  # Reset the SMTP settings
  result = api_instance.reset_smtp_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::SMTPSettingsApi->reset_smtp_settings: #{e}"
end
```

#### Using the reset_smtp_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SmtpSettingsWrapper>, Integer, Hash)> reset_smtp_settings_with_http_info

```ruby
begin
  # Reset the SMTP settings
  data, status_code, headers = api_instance.reset_smtp_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SmtpSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::SMTPSettingsApi->reset_smtp_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SmtpSettingsWrapper**](SmtpSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_smtp_settings

> <SmtpSettingsWrapper> save_smtp_settings(opts)

Save the SMTP settings

Saves the SMTP settings for the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-smtp-settings/).

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

api_instance = DocspaceApiSdk::Security::SMTPSettingsApi.new
opts = {
  smtp_settings_dto: DocspaceApiSdk::SmtpSettingsDto.new # SmtpSettingsDto | 
}

begin
  # Save the SMTP settings
  result = api_instance.save_smtp_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::SMTPSettingsApi->save_smtp_settings: #{e}"
end
```

#### Using the save_smtp_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SmtpSettingsWrapper>, Integer, Hash)> save_smtp_settings_with_http_info(opts)

```ruby
begin
  # Save the SMTP settings
  data, status_code, headers = api_instance.save_smtp_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SmtpSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::SMTPSettingsApi->save_smtp_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **smtp_settings_dto** | [**SmtpSettingsDto**](SmtpSettingsDto.md) |  | [optional] |

### Return type

[**SmtpSettingsWrapper**](SmtpSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## test_smtp_settings

> <SmtpOperationStatusRequestsWrapper> test_smtp_settings

Test the SMTP settings

Tests the SMTP settings for the current portal (sends test message to the user email).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/test-smtp-settings/).

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

api_instance = DocspaceApiSdk::Security::SMTPSettingsApi.new

begin
  # Test the SMTP settings
  result = api_instance.test_smtp_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::SMTPSettingsApi->test_smtp_settings: #{e}"
end
```

#### Using the test_smtp_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SmtpOperationStatusRequestsWrapper>, Integer, Hash)> test_smtp_settings_with_http_info

```ruby
begin
  # Test the SMTP settings
  data, status_code, headers = api_instance.test_smtp_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SmtpOperationStatusRequestsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::SMTPSettingsApi->test_smtp_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SmtpOperationStatusRequestsWrapper**](SmtpOperationStatusRequestsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

