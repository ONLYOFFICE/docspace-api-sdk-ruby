# DocspaceApiSdk::SettingsRebrandingApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_additional_white_label_settings**](SettingsRebrandingApi.md#delete_additional_white_label_settings) | **DELETE** /api/2.0/settings/rebranding/additional | Delete the additional white label settings |
| [**delete_company_white_label_settings**](SettingsRebrandingApi.md#delete_company_white_label_settings) | **DELETE** /api/2.0/settings/rebranding/company | Delete the company white label settings |
| [**get_additional_white_label_settings**](SettingsRebrandingApi.md#get_additional_white_label_settings) | **GET** /api/2.0/settings/rebranding/additional | Get the additional white label settings |
| [**get_company_white_label_settings**](SettingsRebrandingApi.md#get_company_white_label_settings) | **GET** /api/2.0/settings/rebranding/company | Get the company white label settings |
| [**get_enable_whitelabel**](SettingsRebrandingApi.md#get_enable_whitelabel) | **GET** /api/2.0/settings/enablewhitelabel | Check the white label availability |
| [**get_is_default_white_label_logo_text**](SettingsRebrandingApi.md#get_is_default_white_label_logo_text) | **GET** /api/2.0/settings/whitelabel/logotext/isdefault | Check the default white label logo text |
| [**get_is_default_white_label_logos**](SettingsRebrandingApi.md#get_is_default_white_label_logos) | **GET** /api/2.0/settings/whitelabel/logos/isdefault | Check the default white label logos |
| [**get_licensor_data**](SettingsRebrandingApi.md#get_licensor_data) | **GET** /api/2.0/settings/companywhitelabel | Get the licensor data |
| [**get_white_label_logo_text**](SettingsRebrandingApi.md#get_white_label_logo_text) | **GET** /api/2.0/settings/whitelabel/logotext | Get the white label logo text |
| [**get_white_label_logos**](SettingsRebrandingApi.md#get_white_label_logos) | **GET** /api/2.0/settings/whitelabel/logos | Get the white label logos |
| [**restore_white_label_logo_text**](SettingsRebrandingApi.md#restore_white_label_logo_text) | **PUT** /api/2.0/settings/whitelabel/logotext/restore | Restore the white label logo text |
| [**restore_white_label_logos**](SettingsRebrandingApi.md#restore_white_label_logos) | **PUT** /api/2.0/settings/whitelabel/logos/restore | Restore the white label logos |
| [**save_additional_white_label_settings**](SettingsRebrandingApi.md#save_additional_white_label_settings) | **POST** /api/2.0/settings/rebranding/additional | Save the additional white label settings |
| [**save_company_white_label_settings**](SettingsRebrandingApi.md#save_company_white_label_settings) | **POST** /api/2.0/settings/rebranding/company | Save the company white label settings |
| [**save_white_label_logo_text**](SettingsRebrandingApi.md#save_white_label_logo_text) | **POST** /api/2.0/settings/whitelabel/logotext/save | Save the white label logo text settings |
| [**save_white_label_settings**](SettingsRebrandingApi.md#save_white_label_settings) | **POST** /api/2.0/settings/whitelabel/logos/save | Save the white label logos |
| [**save_white_label_settings_from_files**](SettingsRebrandingApi.md#save_white_label_settings_from_files) | **POST** /api/2.0/settings/whitelabel/logos/savefromfiles | Save the white label logos from files |


## delete_additional_white_label_settings

> <AdditionalWhiteLabelSettingsResponseWrapper> delete_additional_white_label_settings

Delete the additional white label settings

Deletes the additional white label settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-additional-white-label-settings/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new

begin
  # Delete the additional white label settings
  result = api_instance.delete_additional_white_label_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->delete_additional_white_label_settings: #{e}"
end
```

#### Using the delete_additional_white_label_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdditionalWhiteLabelSettingsResponseWrapper>, Integer, Hash)> delete_additional_white_label_settings_with_http_info

```ruby
begin
  # Delete the additional white label settings
  data, status_code, headers = api_instance.delete_additional_white_label_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdditionalWhiteLabelSettingsResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->delete_additional_white_label_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AdditionalWhiteLabelSettingsResponseWrapper**](AdditionalWhiteLabelSettingsResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_company_white_label_settings

> <CompanyWhiteLabelSettingsResponseWrapper> delete_company_white_label_settings

Delete the company white label settings

Deletes the company white label settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-company-white-label-settings/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new

begin
  # Delete the company white label settings
  result = api_instance.delete_company_white_label_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->delete_company_white_label_settings: #{e}"
end
```

#### Using the delete_company_white_label_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyWhiteLabelSettingsResponseWrapper>, Integer, Hash)> delete_company_white_label_settings_with_http_info

```ruby
begin
  # Delete the company white label settings
  data, status_code, headers = api_instance.delete_company_white_label_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyWhiteLabelSettingsResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->delete_company_white_label_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CompanyWhiteLabelSettingsResponseWrapper**](CompanyWhiteLabelSettingsResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_additional_white_label_settings

> <AdditionalWhiteLabelSettingsDtoWrapper> get_additional_white_label_settings

Get the additional white label settings

Returns the additional white label settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-additional-white-label-settings/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new

begin
  # Get the additional white label settings
  result = api_instance.get_additional_white_label_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_additional_white_label_settings: #{e}"
end
```

#### Using the get_additional_white_label_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdditionalWhiteLabelSettingsDtoWrapper>, Integer, Hash)> get_additional_white_label_settings_with_http_info

```ruby
begin
  # Get the additional white label settings
  data, status_code, headers = api_instance.get_additional_white_label_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdditionalWhiteLabelSettingsDtoWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_additional_white_label_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AdditionalWhiteLabelSettingsDtoWrapper**](AdditionalWhiteLabelSettingsDtoWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_company_white_label_settings

> <CompanyWhiteLabelSettingsDtoWrapper> get_company_white_label_settings

Get the company white label settings

Returns the company white label settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-company-white-label-settings/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new

begin
  # Get the company white label settings
  result = api_instance.get_company_white_label_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_company_white_label_settings: #{e}"
end
```

#### Using the get_company_white_label_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyWhiteLabelSettingsDtoWrapper>, Integer, Hash)> get_company_white_label_settings_with_http_info

```ruby
begin
  # Get the company white label settings
  data, status_code, headers = api_instance.get_company_white_label_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyWhiteLabelSettingsDtoWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_company_white_label_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CompanyWhiteLabelSettingsDtoWrapper**](CompanyWhiteLabelSettingsDtoWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_enable_whitelabel

> <BooleanWrapper> get_enable_whitelabel

Check the white label availability

Checks if the white label is enabled or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enable-whitelabel/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new

begin
  # Check the white label availability
  result = api_instance.get_enable_whitelabel
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_enable_whitelabel: #{e}"
end
```

#### Using the get_enable_whitelabel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> get_enable_whitelabel_with_http_info

```ruby
begin
  # Check the white label availability
  data, status_code, headers = api_instance.get_enable_whitelabel_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_enable_whitelabel_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_is_default_white_label_logo_text

> <IsDefaultWhiteLabelLogosWrapper> get_is_default_white_label_logo_text(opts)

Check the default white label logo text

Specifies if the white label logo text is default or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-white-label-logo-text/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new
opts = {
  is_dark: true, # Boolean | Specifies if the white label logo is for the dark theme or not.
  is_default: true # Boolean | Specifies if the logo is for a default tenant or not.
}

begin
  # Check the default white label logo text
  result = api_instance.get_is_default_white_label_logo_text(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_is_default_white_label_logo_text: #{e}"
end
```

#### Using the get_is_default_white_label_logo_text_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IsDefaultWhiteLabelLogosWrapper>, Integer, Hash)> get_is_default_white_label_logo_text_with_http_info(opts)

```ruby
begin
  # Check the default white label logo text
  data, status_code, headers = api_instance.get_is_default_white_label_logo_text_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IsDefaultWhiteLabelLogosWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_is_default_white_label_logo_text_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_dark** | **Boolean** | Specifies if the white label logo is for the dark theme or not. | [optional] |
| **is_default** | **Boolean** | Specifies if the logo is for a default tenant or not. | [optional] |

### Return type

[**IsDefaultWhiteLabelLogosWrapper**](IsDefaultWhiteLabelLogosWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_is_default_white_label_logos

> <IsDefaultWhiteLabelLogosArrayWrapper> get_is_default_white_label_logos(opts)

Check the default white label logos

Specifies if the white label logos are default or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-white-label-logos/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new
opts = {
  is_dark: true, # Boolean | Specifies if the white label logo is for the dark theme or not.
  is_default: true # Boolean | Specifies if the logo is for a default tenant or not.
}

begin
  # Check the default white label logos
  result = api_instance.get_is_default_white_label_logos(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_is_default_white_label_logos: #{e}"
end
```

#### Using the get_is_default_white_label_logos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IsDefaultWhiteLabelLogosArrayWrapper>, Integer, Hash)> get_is_default_white_label_logos_with_http_info(opts)

```ruby
begin
  # Check the default white label logos
  data, status_code, headers = api_instance.get_is_default_white_label_logos_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IsDefaultWhiteLabelLogosArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_is_default_white_label_logos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_dark** | **Boolean** | Specifies if the white label logo is for the dark theme or not. | [optional] |
| **is_default** | **Boolean** | Specifies if the logo is for a default tenant or not. | [optional] |

### Return type

[**IsDefaultWhiteLabelLogosArrayWrapper**](IsDefaultWhiteLabelLogosArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_licensor_data

> <CompanyWhiteLabelSettingsArrayWrapper> get_licensor_data

Get the licensor data

Returns the licensor data.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-licensor-data/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new

begin
  # Get the licensor data
  result = api_instance.get_licensor_data
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_licensor_data: #{e}"
end
```

#### Using the get_licensor_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompanyWhiteLabelSettingsArrayWrapper>, Integer, Hash)> get_licensor_data_with_http_info

```ruby
begin
  # Get the licensor data
  data, status_code, headers = api_instance.get_licensor_data_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompanyWhiteLabelSettingsArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_licensor_data_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CompanyWhiteLabelSettingsArrayWrapper**](CompanyWhiteLabelSettingsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_white_label_logo_text

> <StringWrapper> get_white_label_logo_text(opts)

Get the white label logo text

Returns the white label logo text.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-white-label-logo-text/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new
opts = {
  is_dark: true, # Boolean | Specifies if the white label logo is for the dark theme or not.
  is_default: true # Boolean | Specifies if the logo is for a default tenant or not.
}

begin
  # Get the white label logo text
  result = api_instance.get_white_label_logo_text(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_white_label_logo_text: #{e}"
end
```

#### Using the get_white_label_logo_text_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> get_white_label_logo_text_with_http_info(opts)

```ruby
begin
  # Get the white label logo text
  data, status_code, headers = api_instance.get_white_label_logo_text_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_white_label_logo_text_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_dark** | **Boolean** | Specifies if the white label logo is for the dark theme or not. | [optional] |
| **is_default** | **Boolean** | Specifies if the logo is for a default tenant or not. | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_white_label_logos

> <WhiteLabelItemArrayWrapper> get_white_label_logos(opts)

Get the white label logos

Returns the white label logos.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-white-label-logos/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new
opts = {
  is_dark: true, # Boolean | Specifies if the white label logo is for the dark theme or not.
  is_default: true # Boolean | Specifies if the logo is for a default tenant or not.
}

begin
  # Get the white label logos
  result = api_instance.get_white_label_logos(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_white_label_logos: #{e}"
end
```

#### Using the get_white_label_logos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhiteLabelItemArrayWrapper>, Integer, Hash)> get_white_label_logos_with_http_info(opts)

```ruby
begin
  # Get the white label logos
  data, status_code, headers = api_instance.get_white_label_logos_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhiteLabelItemArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->get_white_label_logos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_dark** | **Boolean** | Specifies if the white label logo is for the dark theme or not. | [optional] |
| **is_default** | **Boolean** | Specifies if the logo is for a default tenant or not. | [optional] |

### Return type

[**WhiteLabelItemArrayWrapper**](WhiteLabelItemArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_white_label_logo_text

> <BooleanWrapper> restore_white_label_logo_text(opts)

Restore the white label logo text

Restores the white label logo text.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-white-label-logo-text/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new
opts = {
  is_dark: true, # Boolean | Specifies if the white label logo is for the dark theme or not.
  is_default: true # Boolean | Specifies if the logo is for a default tenant or not.
}

begin
  # Restore the white label logo text
  result = api_instance.restore_white_label_logo_text(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->restore_white_label_logo_text: #{e}"
end
```

#### Using the restore_white_label_logo_text_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> restore_white_label_logo_text_with_http_info(opts)

```ruby
begin
  # Restore the white label logo text
  data, status_code, headers = api_instance.restore_white_label_logo_text_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->restore_white_label_logo_text_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_dark** | **Boolean** | Specifies if the white label logo is for the dark theme or not. | [optional] |
| **is_default** | **Boolean** | Specifies if the logo is for a default tenant or not. | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_white_label_logos

> <BooleanWrapper> restore_white_label_logos(opts)

Restore the white label logos

Restores the white label logos.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-white-label-logos/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new
opts = {
  is_dark: true, # Boolean | Specifies if the white label logo is for the dark theme or not.
  is_default: true # Boolean | Specifies if the logo is for a default tenant or not.
}

begin
  # Restore the white label logos
  result = api_instance.restore_white_label_logos(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->restore_white_label_logos: #{e}"
end
```

#### Using the restore_white_label_logos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> restore_white_label_logos_with_http_info(opts)

```ruby
begin
  # Restore the white label logos
  data, status_code, headers = api_instance.restore_white_label_logos_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->restore_white_label_logos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_dark** | **Boolean** | Specifies if the white label logo is for the dark theme or not. | [optional] |
| **is_default** | **Boolean** | Specifies if the logo is for a default tenant or not. | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_additional_white_label_settings

> <BooleanWrapper> save_additional_white_label_settings(opts)

Save the additional white label settings

Saves the additional white label settings specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-additional-white-label-settings/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new
opts = {
  additional_white_label_settings_wrapper: DocspaceApiSdk::AdditionalWhiteLabelSettingsWrapper.new # AdditionalWhiteLabelSettingsWrapper | 
}

begin
  # Save the additional white label settings
  result = api_instance.save_additional_white_label_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->save_additional_white_label_settings: #{e}"
end
```

#### Using the save_additional_white_label_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> save_additional_white_label_settings_with_http_info(opts)

```ruby
begin
  # Save the additional white label settings
  data, status_code, headers = api_instance.save_additional_white_label_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->save_additional_white_label_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_white_label_settings_wrapper** | [**AdditionalWhiteLabelSettingsWrapper**](AdditionalWhiteLabelSettingsWrapper.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_company_white_label_settings

> <BooleanWrapper> save_company_white_label_settings(opts)

Save the company white label settings

Saves the company white label settings specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-company-white-label-settings/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new
opts = {
  company_white_label_settings_wrapper: DocspaceApiSdk::CompanyWhiteLabelSettingsWrapper.new # CompanyWhiteLabelSettingsWrapper | 
}

begin
  # Save the company white label settings
  result = api_instance.save_company_white_label_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->save_company_white_label_settings: #{e}"
end
```

#### Using the save_company_white_label_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> save_company_white_label_settings_with_http_info(opts)

```ruby
begin
  # Save the company white label settings
  data, status_code, headers = api_instance.save_company_white_label_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->save_company_white_label_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_white_label_settings_wrapper** | [**CompanyWhiteLabelSettingsWrapper**](CompanyWhiteLabelSettingsWrapper.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_white_label_logo_text

> <BooleanWrapper> save_white_label_logo_text(opts)

Save the white label logo text settings

Saves the white label logo text specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-logo-text/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new
opts = {
  is_dark: true, # Boolean | Specifies if the white label logo is for the dark theme or not.
  is_default: true, # Boolean | Specifies if the logo is for a default tenant or not.
  white_label_requests_dto: DocspaceApiSdk::WhiteLabelRequestsDto.new # WhiteLabelRequestsDto | 
}

begin
  # Save the white label logo text settings
  result = api_instance.save_white_label_logo_text(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->save_white_label_logo_text: #{e}"
end
```

#### Using the save_white_label_logo_text_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> save_white_label_logo_text_with_http_info(opts)

```ruby
begin
  # Save the white label logo text settings
  data, status_code, headers = api_instance.save_white_label_logo_text_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->save_white_label_logo_text_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_dark** | **Boolean** | Specifies if the white label logo is for the dark theme or not. | [optional] |
| **is_default** | **Boolean** | Specifies if the logo is for a default tenant or not. | [optional] |
| **white_label_requests_dto** | [**WhiteLabelRequestsDto**](WhiteLabelRequestsDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_white_label_settings

> <BooleanWrapper> save_white_label_settings(opts)

Save the white label logos

Saves the white label logos specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-settings/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new
opts = {
  is_dark: true, # Boolean | Specifies if the white label logo is for the dark theme or not.
  is_default: true, # Boolean | Specifies if the logo is for a default tenant or not.
  white_label_requests_dto: DocspaceApiSdk::WhiteLabelRequestsDto.new # WhiteLabelRequestsDto | 
}

begin
  # Save the white label logos
  result = api_instance.save_white_label_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->save_white_label_settings: #{e}"
end
```

#### Using the save_white_label_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> save_white_label_settings_with_http_info(opts)

```ruby
begin
  # Save the white label logos
  data, status_code, headers = api_instance.save_white_label_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->save_white_label_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_dark** | **Boolean** | Specifies if the white label logo is for the dark theme or not. | [optional] |
| **is_default** | **Boolean** | Specifies if the logo is for a default tenant or not. | [optional] |
| **white_label_requests_dto** | [**WhiteLabelRequestsDto**](WhiteLabelRequestsDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_white_label_settings_from_files

> <BooleanWrapper> save_white_label_settings_from_files(opts)

Save the white label logos from files

Saves the white label logos from files.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-settings-from-files/).

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

api_instance = DocspaceApiSdk::Settings::RebrandingApi.new
opts = {
  is_dark: true, # Boolean | Specifies if the white label logo is for the dark theme or not.
  is_default: true # Boolean | Specifies if the logo is for a default tenant or not.
}

begin
  # Save the white label logos from files
  result = api_instance.save_white_label_settings_from_files(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->save_white_label_settings_from_files: #{e}"
end
```

#### Using the save_white_label_settings_from_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> save_white_label_settings_from_files_with_http_info(opts)

```ruby
begin
  # Save the white label logos from files
  data, status_code, headers = api_instance.save_white_label_settings_from_files_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::RebrandingApi->save_white_label_settings_from_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_dark** | **Boolean** | Specifies if the white label logo is for the dark theme or not. | [optional] |
| **is_default** | **Boolean** | Specifies if the logo is for a default tenant or not. | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

