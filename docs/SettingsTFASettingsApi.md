# DocspaceApiSdk::SettingsTFASettingsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_tfa_app_codes**](SettingsTFASettingsApi.md#get_tfa_app_codes) | **GET** /api/2.0/settings/tfaappcodes | Get the TFA codes |
| [**get_tfa_confirm_data**](SettingsTFASettingsApi.md#get_tfa_confirm_data) | **GET** /api/2.0/settings/tfaapp/confirm | Get TFA confirmation data |
| [**get_tfa_settings**](SettingsTFASettingsApi.md#get_tfa_settings) | **GET** /api/2.0/settings/tfaapp | Get the TFA settings |
| [**tfa_app_generate_setup_code**](SettingsTFASettingsApi.md#tfa_app_generate_setup_code) | **GET** /api/2.0/settings/tfaapp/setup | Generate setup code |
| [**tfa_validate_auth_code**](SettingsTFASettingsApi.md#tfa_validate_auth_code) | **POST** /api/2.0/settings/tfaapp/validate | Validate the TFA code |
| [**unlink_tfa_app**](SettingsTFASettingsApi.md#unlink_tfa_app) | **PUT** /api/2.0/settings/tfaappnewapp | Unlink the TFA application |
| [**update_tfa_app_codes**](SettingsTFASettingsApi.md#update_tfa_app_codes) | **PUT** /api/2.0/settings/tfaappnewcodes | Update the TFA codes |
| [**update_tfa_settings**](SettingsTFASettingsApi.md#update_tfa_settings) | **PUT** /api/2.0/settings/tfaapp | Update the TFA settings |
| [**update_tfa_settings_link**](SettingsTFASettingsApi.md#update_tfa_settings_link) | **PUT** /api/2.0/settings/tfaappwithlink | Updates TFA settings |


## get_tfa_app_codes

> <TfaAppCodeArrayWrapper> get_tfa_app_codes

Get the TFA codes

Returns the two-factor authentication application codes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-app-codes/).

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

api_instance = DocspaceApiSdk::Settings::TFASettingsApi.new

begin
  # Get the TFA codes
  result = api_instance.get_tfa_app_codes
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->get_tfa_app_codes: #{e}"
end
```

#### Using the get_tfa_app_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TfaAppCodeArrayWrapper>, Integer, Hash)> get_tfa_app_codes_with_http_info

```ruby
begin
  # Get the TFA codes
  data, status_code, headers = api_instance.get_tfa_app_codes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TfaAppCodeArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->get_tfa_app_codes_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TfaAppCodeArrayWrapper**](TfaAppCodeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tfa_confirm_data

> <TfaConfirmDataWrapper> get_tfa_confirm_data

Get TFA confirmation data

Returns the confirmation data for authorization via SMS or TFA application.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-confirm-data/).

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

api_instance = DocspaceApiSdk::Settings::TFASettingsApi.new

begin
  # Get TFA confirmation data
  result = api_instance.get_tfa_confirm_data
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->get_tfa_confirm_data: #{e}"
end
```

#### Using the get_tfa_confirm_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TfaConfirmDataWrapper>, Integer, Hash)> get_tfa_confirm_data_with_http_info

```ruby
begin
  # Get TFA confirmation data
  data, status_code, headers = api_instance.get_tfa_confirm_data_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TfaConfirmDataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->get_tfa_confirm_data_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TfaConfirmDataWrapper**](TfaConfirmDataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tfa_settings

> <TfaSettingsArrayWrapper> get_tfa_settings

Get the TFA settings

Returns the current two-factor authentication settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tfa-settings/).

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

api_instance = DocspaceApiSdk::Settings::TFASettingsApi.new

begin
  # Get the TFA settings
  result = api_instance.get_tfa_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->get_tfa_settings: #{e}"
end
```

#### Using the get_tfa_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TfaSettingsArrayWrapper>, Integer, Hash)> get_tfa_settings_with_http_info

```ruby
begin
  # Get the TFA settings
  data, status_code, headers = api_instance.get_tfa_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TfaSettingsArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->get_tfa_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TfaSettingsArrayWrapper**](TfaSettingsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tfa_app_generate_setup_code

> <TfaSetupCodeWrapper> tfa_app_generate_setup_code

Generate setup code

Generates the setup TFA code for the current user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/tfa-app-generate-setup-code/).

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

api_instance = DocspaceApiSdk::Settings::TFASettingsApi.new

begin
  # Generate setup code
  result = api_instance.tfa_app_generate_setup_code
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->tfa_app_generate_setup_code: #{e}"
end
```

#### Using the tfa_app_generate_setup_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TfaSetupCodeWrapper>, Integer, Hash)> tfa_app_generate_setup_code_with_http_info

```ruby
begin
  # Generate setup code
  data, status_code, headers = api_instance.tfa_app_generate_setup_code_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TfaSetupCodeWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->tfa_app_generate_setup_code_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TfaSetupCodeWrapper**](TfaSetupCodeWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tfa_validate_auth_code

> <BooleanWrapper> tfa_validate_auth_code(opts)

Validate the TFA code

Validates the two-factor authentication code specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/tfa-validate-auth-code/).

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

api_instance = DocspaceApiSdk::Settings::TFASettingsApi.new
opts = {
  tfa_validate_requests_dto: DocspaceApiSdk::TfaValidateRequestsDto.new({code: '123456'}) # TfaValidateRequestsDto | 
}

begin
  # Validate the TFA code
  result = api_instance.tfa_validate_auth_code(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->tfa_validate_auth_code: #{e}"
end
```

#### Using the tfa_validate_auth_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> tfa_validate_auth_code_with_http_info(opts)

```ruby
begin
  # Validate the TFA code
  data, status_code, headers = api_instance.tfa_validate_auth_code_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->tfa_validate_auth_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tfa_validate_requests_dto** | [**TfaValidateRequestsDto**](TfaValidateRequestsDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unlink_tfa_app

> <StringWrapper> unlink_tfa_app(opts)

Unlink the TFA application

Unlinks the current two-factor authentication application from the user account specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-tfa-app/).

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

api_instance = DocspaceApiSdk::Settings::TFASettingsApi.new
opts = {
  tfa_requests_dto: DocspaceApiSdk::TfaRequestsDto.new # TfaRequestsDto | 
}

begin
  # Unlink the TFA application
  result = api_instance.unlink_tfa_app(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->unlink_tfa_app: #{e}"
end
```

#### Using the unlink_tfa_app_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> unlink_tfa_app_with_http_info(opts)

```ruby
begin
  # Unlink the TFA application
  data, status_code, headers = api_instance.unlink_tfa_app_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->unlink_tfa_app_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tfa_requests_dto** | [**TfaRequestsDto**](TfaRequestsDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tfa_app_codes

> <TfaAppCodeArrayWrapper> update_tfa_app_codes

Update the TFA codes

Requests the new backup codes for the two-factor authentication application.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-app-codes/).

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

api_instance = DocspaceApiSdk::Settings::TFASettingsApi.new

begin
  # Update the TFA codes
  result = api_instance.update_tfa_app_codes
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->update_tfa_app_codes: #{e}"
end
```

#### Using the update_tfa_app_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TfaAppCodeArrayWrapper>, Integer, Hash)> update_tfa_app_codes_with_http_info

```ruby
begin
  # Update the TFA codes
  data, status_code, headers = api_instance.update_tfa_app_codes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TfaAppCodeArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->update_tfa_app_codes_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TfaAppCodeArrayWrapper**](TfaAppCodeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tfa_settings

> <BooleanWrapper> update_tfa_settings(opts)

Update the TFA settings

Updates the two-factor authentication settings with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-settings/).

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

api_instance = DocspaceApiSdk::Settings::TFASettingsApi.new
opts = {
  tfa_requests_dto: DocspaceApiSdk::TfaRequestsDto.new # TfaRequestsDto | 
}

begin
  # Update the TFA settings
  result = api_instance.update_tfa_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->update_tfa_settings: #{e}"
end
```

#### Using the update_tfa_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> update_tfa_settings_with_http_info(opts)

```ruby
begin
  # Update the TFA settings
  data, status_code, headers = api_instance.update_tfa_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->update_tfa_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tfa_requests_dto** | [**TfaRequestsDto**](TfaRequestsDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tfa_settings_link

> <StringWrapper> update_tfa_settings_link(opts)

Updates TFA settings

Updates TFA settings and returns the confirmation URL for authorization via SMS or TFA application.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tfa-settings-link/).

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

api_instance = DocspaceApiSdk::Settings::TFASettingsApi.new
opts = {
  tfa_requests_dto: DocspaceApiSdk::TfaRequestsDto.new # TfaRequestsDto | 
}

begin
  # Updates TFA settings
  result = api_instance.update_tfa_settings_link(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->update_tfa_settings_link: #{e}"
end
```

#### Using the update_tfa_settings_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> update_tfa_settings_link_with_http_info(opts)

```ruby
begin
  # Updates TFA settings
  data, status_code, headers = api_instance.update_tfa_settings_link_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::TFASettingsApi->update_tfa_settings_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tfa_requests_dto** | [**TfaRequestsDto**](TfaRequestsDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

