# DocspaceApiSdk::SettingsCommonSettingsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**close_admin_helper**](SettingsCommonSettingsApi.md#close_admin_helper) | **PUT** /api/2.0/settings/closeadminhelper | Close the admin helper |
| [**complete_wizard**](SettingsCommonSettingsApi.md#complete_wizard) | **PUT** /api/2.0/settings/wizard/complete | Complete the Wizard settings |
| [**configure_deep_link**](SettingsCommonSettingsApi.md#configure_deep_link) | **POST** /api/2.0/settings/deeplink | Configure the deep link settings |
| [**delete_portal_color_theme**](SettingsCommonSettingsApi.md#delete_portal_color_theme) | **DELETE** /api/2.0/settings/colortheme | Delete a color theme |
| [**get_deep_link_settings**](SettingsCommonSettingsApi.md#get_deep_link_settings) | **GET** /api/2.0/settings/deeplink | Get the deep link settings |
| [**get_payment_settings**](SettingsCommonSettingsApi.md#get_payment_settings) | **GET** /api/2.0/settings/payment | Get the payment settings |
| [**get_portal_color_theme**](SettingsCommonSettingsApi.md#get_portal_color_theme) | **GET** /api/2.0/settings/colortheme | Get a color theme |
| [**get_portal_hostname**](SettingsCommonSettingsApi.md#get_portal_hostname) | **GET** /api/2.0/settings/machine | Get hostname |
| [**get_portal_logo**](SettingsCommonSettingsApi.md#get_portal_logo) | **GET** /api/2.0/settings/logo | Get a portal logo |
| [**get_portal_settings**](SettingsCommonSettingsApi.md#get_portal_settings) | **GET** /api/2.0/settings | Get the portal settings |
| [**get_socket_settings**](SettingsCommonSettingsApi.md#get_socket_settings) | **GET** /api/2.0/settings/socket | Get the socket settings |
| [**get_supported_cultures**](SettingsCommonSettingsApi.md#get_supported_cultures) | **GET** /api/2.0/settings/cultures | Get supported languages |
| [**get_tenant_ai_access_settings**](SettingsCommonSettingsApi.md#get_tenant_ai_access_settings) | **GET** /api/2.0/settings/ai-access | Get the AI access settings for the portal |
| [**get_tenant_user_invitation_settings**](SettingsCommonSettingsApi.md#get_tenant_user_invitation_settings) | **GET** /api/2.0/settings/invitationsettings | Get the user invitation settings |
| [**get_time_zones**](SettingsCommonSettingsApi.md#get_time_zones) | **GET** /api/2.0/settings/timezones | Get time zones |
| [**save_default_folder**](SettingsCommonSettingsApi.md#save_default_folder) | **PUT** /api/2.0/settings/defaultfolder | Set the default folder |
| [**save_dns_settings**](SettingsCommonSettingsApi.md#save_dns_settings) | **PUT** /api/2.0/settings/dns | Save the DNS settings |
| [**save_mail_domain_settings**](SettingsCommonSettingsApi.md#save_mail_domain_settings) | **POST** /api/2.0/settings/maildomainsettings | Save the mail domain settings |
| [**save_portal_color_theme**](SettingsCommonSettingsApi.md#save_portal_color_theme) | **PUT** /api/2.0/settings/colortheme | Save a color theme |
| [**set_tenant_ai_access_settings**](SettingsCommonSettingsApi.md#set_tenant_ai_access_settings) | **POST** /api/2.0/settings/ai-access | Set the AI access for the portal |
| [**update_email_activation_settings**](SettingsCommonSettingsApi.md#update_email_activation_settings) | **PUT** /api/2.0/settings/emailactivation | Update the email activation settings |
| [**update_invitation_settings**](SettingsCommonSettingsApi.md#update_invitation_settings) | **PUT** /api/2.0/settings/invitationsettings | Update user invitation settings |


## close_admin_helper

> close_admin_helper

Close the admin helper

Closes the administrator helper notification.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/close-admin-helper/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new

begin
  # Close the admin helper
  api_instance.close_admin_helper
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->close_admin_helper: #{e}"
end
```

#### Using the close_admin_helper_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> close_admin_helper_with_http_info

```ruby
begin
  # Close the admin helper
  data, status_code, headers = api_instance.close_admin_helper_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->close_admin_helper_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## complete_wizard

> <WizardSettingsWrapper> complete_wizard(opts)

Complete the Wizard settings

Completes the Wizard settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/complete-wizard/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new
opts = {
  wizard_requests_dto: DocspaceApiSdk::WizardRequestsDto.new({email: 'user@example.com', password_hash: '2DYmIoA/aYKEksFocEf6uw=='}) # WizardRequestsDto | 
}

begin
  # Complete the Wizard settings
  result = api_instance.complete_wizard(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->complete_wizard: #{e}"
end
```

#### Using the complete_wizard_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WizardSettingsWrapper>, Integer, Hash)> complete_wizard_with_http_info(opts)

```ruby
begin
  # Complete the Wizard settings
  data, status_code, headers = api_instance.complete_wizard_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WizardSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->complete_wizard_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wizard_requests_dto** | [**WizardRequestsDto**](WizardRequestsDto.md) |  | [optional] |

### Return type

[**WizardSettingsWrapper**](WizardSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## configure_deep_link

> <TenantDeepLinkSettingsWrapper> configure_deep_link(opts)

Configure the deep link settings

Saves the deep link configuration settings for the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/configure-deep-link/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new
opts = {
  deep_link_configuration_requests_dto: DocspaceApiSdk::DeepLinkConfigurationRequestsDto.new # DeepLinkConfigurationRequestsDto | 
}

begin
  # Configure the deep link settings
  result = api_instance.configure_deep_link(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->configure_deep_link: #{e}"
end
```

#### Using the configure_deep_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantDeepLinkSettingsWrapper>, Integer, Hash)> configure_deep_link_with_http_info(opts)

```ruby
begin
  # Configure the deep link settings
  data, status_code, headers = api_instance.configure_deep_link_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantDeepLinkSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->configure_deep_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deep_link_configuration_requests_dto** | [**DeepLinkConfigurationRequestsDto**](DeepLinkConfigurationRequestsDto.md) |  | [optional] |

### Return type

[**TenantDeepLinkSettingsWrapper**](TenantDeepLinkSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_portal_color_theme

> <CustomColorThemesSettingsWrapper> delete_portal_color_theme(id)

Delete a color theme

Deletes the portal color theme with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-portal-color-theme/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new
id = 1 # Integer | The ID of the portal theme to delete.

begin
  # Delete a color theme
  result = api_instance.delete_portal_color_theme(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->delete_portal_color_theme: #{e}"
end
```

#### Using the delete_portal_color_theme_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomColorThemesSettingsWrapper>, Integer, Hash)> delete_portal_color_theme_with_http_info(id)

```ruby
begin
  # Delete a color theme
  data, status_code, headers = api_instance.delete_portal_color_theme_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomColorThemesSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->delete_portal_color_theme_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the portal theme to delete. |  |

### Return type

[**CustomColorThemesSettingsWrapper**](CustomColorThemesSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deep_link_settings

> <TenantDeepLinkSettingsWrapper> get_deep_link_settings

Get the deep link settings

Returns the deep link settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-deep-link-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new

begin
  # Get the deep link settings
  result = api_instance.get_deep_link_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_deep_link_settings: #{e}"
end
```

#### Using the get_deep_link_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantDeepLinkSettingsWrapper>, Integer, Hash)> get_deep_link_settings_with_http_info

```ruby
begin
  # Get the deep link settings
  data, status_code, headers = api_instance.get_deep_link_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantDeepLinkSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_deep_link_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantDeepLinkSettingsWrapper**](TenantDeepLinkSettingsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_settings

> <PaymentSettingsWrapper> get_payment_settings

Get the payment settings

Returns the portal payment settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-settings/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new

begin
  # Get the payment settings
  result = api_instance.get_payment_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_payment_settings: #{e}"
end
```

#### Using the get_payment_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentSettingsWrapper>, Integer, Hash)> get_payment_settings_with_http_info

```ruby
begin
  # Get the payment settings
  data, status_code, headers = api_instance.get_payment_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_payment_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PaymentSettingsWrapper**](PaymentSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portal_color_theme

> <CustomColorThemesSettingsWrapper> get_portal_color_theme

Get a color theme

Returns the portal color theme.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-color-theme/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new

begin
  # Get a color theme
  result = api_instance.get_portal_color_theme
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_portal_color_theme: #{e}"
end
```

#### Using the get_portal_color_theme_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomColorThemesSettingsWrapper>, Integer, Hash)> get_portal_color_theme_with_http_info

```ruby
begin
  # Get a color theme
  data, status_code, headers = api_instance.get_portal_color_theme_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomColorThemesSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_portal_color_theme_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CustomColorThemesSettingsWrapper**](CustomColorThemesSettingsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portal_hostname

> <ObjectWrapper> get_portal_hostname

Get hostname

Returns the portal hostname.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-hostname/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new

begin
  # Get hostname
  result = api_instance.get_portal_hostname
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_portal_hostname: #{e}"
end
```

#### Using the get_portal_hostname_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectWrapper>, Integer, Hash)> get_portal_hostname_with_http_info

```ruby
begin
  # Get hostname
  data, status_code, headers = api_instance.get_portal_hostname_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_portal_hostname_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portal_logo

> <StringWrapper> get_portal_logo

Get a portal logo

Returns the portal logo image URL.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-logo/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new

begin
  # Get a portal logo
  result = api_instance.get_portal_logo
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_portal_logo: #{e}"
end
```

#### Using the get_portal_logo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> get_portal_logo_with_http_info

```ruby
begin
  # Get a portal logo
  data, status_code, headers = api_instance.get_portal_logo_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_portal_logo_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portal_settings

> <SettingsWrapper> get_portal_settings(opts)

Get the portal settings

Returns a list of all the available portal settings with the current values for each parameter.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new
opts = {
  withpassword: true # Boolean | Specifies whether to include the password hashing configuration in the response.
}

begin
  # Get the portal settings
  result = api_instance.get_portal_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_portal_settings: #{e}"
end
```

#### Using the get_portal_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SettingsWrapper>, Integer, Hash)> get_portal_settings_with_http_info(opts)

```ruby
begin
  # Get the portal settings
  data, status_code, headers = api_instance.get_portal_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_portal_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **withpassword** | **Boolean** | Specifies whether to include the password hashing configuration in the response. | [optional] |

### Return type

[**SettingsWrapper**](SettingsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_socket_settings

> <ObjectWrapper> get_socket_settings

Get the socket settings

Returns the socket settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-socket-settings/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new

begin
  # Get the socket settings
  result = api_instance.get_socket_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_socket_settings: #{e}"
end
```

#### Using the get_socket_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectWrapper>, Integer, Hash)> get_socket_settings_with_http_info

```ruby
begin
  # Get the socket settings
  data, status_code, headers = api_instance.get_socket_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_socket_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_supported_cultures

> <STRINGArrayWrapper> get_supported_cultures

Get supported languages

Returns a list of all the available portal languages in the format of a two-letter or four-letter language code (e.g. de, en-US, etc.).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-supported-cultures/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new

begin
  # Get supported languages
  result = api_instance.get_supported_cultures
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_supported_cultures: #{e}"
end
```

#### Using the get_supported_cultures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<STRINGArrayWrapper>, Integer, Hash)> get_supported_cultures_with_http_info

```ruby
begin
  # Get supported languages
  data, status_code, headers = api_instance.get_supported_cultures_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <STRINGArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_supported_cultures_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**STRINGArrayWrapper**](STRINGArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_ai_access_settings

> <TenantAiAccessSettingsWrapper> get_tenant_ai_access_settings

Get the AI access settings for the portal

Returns the current portal-level AI access settings that control whether all AI functionality  (chat, agents, vectorization) is available for the portal. AI is enabled by default.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-ai-access-settings/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new

begin
  # Get the AI access settings for the portal
  result = api_instance.get_tenant_ai_access_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_tenant_ai_access_settings: #{e}"
end
```

#### Using the get_tenant_ai_access_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantAiAccessSettingsWrapper>, Integer, Hash)> get_tenant_ai_access_settings_with_http_info

```ruby
begin
  # Get the AI access settings for the portal
  data, status_code, headers = api_instance.get_tenant_ai_access_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantAiAccessSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_tenant_ai_access_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantAiAccessSettingsWrapper**](TenantAiAccessSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_user_invitation_settings

> <TenantUserInvitationSettingsWrapper> get_tenant_user_invitation_settings

Get the user invitation settings

Returns the portal user invitation settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-user-invitation-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new

begin
  # Get the user invitation settings
  result = api_instance.get_tenant_user_invitation_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_tenant_user_invitation_settings: #{e}"
end
```

#### Using the get_tenant_user_invitation_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantUserInvitationSettingsWrapper>, Integer, Hash)> get_tenant_user_invitation_settings_with_http_info

```ruby
begin
  # Get the user invitation settings
  data, status_code, headers = api_instance.get_tenant_user_invitation_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantUserInvitationSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_tenant_user_invitation_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantUserInvitationSettingsWrapper**](TenantUserInvitationSettingsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_time_zones

> <TimezonesRequestsArrayWrapper> get_time_zones

Get time zones

Returns a list of all the available portal time zones.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-time-zones/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new

begin
  # Get time zones
  result = api_instance.get_time_zones
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_time_zones: #{e}"
end
```

#### Using the get_time_zones_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TimezonesRequestsArrayWrapper>, Integer, Hash)> get_time_zones_with_http_info

```ruby
begin
  # Get time zones
  data, status_code, headers = api_instance.get_time_zones_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TimezonesRequestsArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_time_zones_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TimezonesRequestsArrayWrapper**](TimezonesRequestsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_default_folder

> <StudioDefaultPageSettingsWrapper> save_default_folder(opts)

Set the default folder

Sets the default folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-default-folder/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new
opts = {
  default_product_request_dto: DocspaceApiSdk::DefaultProductRequestDto.new({default_folder_type: DocspaceApiSdk::FolderType::DEFAULT}) # DefaultProductRequestDto | 
}

begin
  # Set the default folder
  result = api_instance.save_default_folder(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->save_default_folder: #{e}"
end
```

#### Using the save_default_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StudioDefaultPageSettingsWrapper>, Integer, Hash)> save_default_folder_with_http_info(opts)

```ruby
begin
  # Set the default folder
  data, status_code, headers = api_instance.save_default_folder_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StudioDefaultPageSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->save_default_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_product_request_dto** | [**DefaultProductRequestDto**](DefaultProductRequestDto.md) |  | [optional] |

### Return type

[**StudioDefaultPageSettingsWrapper**](StudioDefaultPageSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_dns_settings

> <StringWrapper> save_dns_settings(opts)

Save the DNS settings

Saves the DNS settings specified in the request to the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-dns-settings/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new
opts = {
  dns_settings_requests_dto: DocspaceApiSdk::DnsSettingsRequestsDto.new # DnsSettingsRequestsDto | 
}

begin
  # Save the DNS settings
  result = api_instance.save_dns_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->save_dns_settings: #{e}"
end
```

#### Using the save_dns_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> save_dns_settings_with_http_info(opts)

```ruby
begin
  # Save the DNS settings
  data, status_code, headers = api_instance.save_dns_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->save_dns_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dns_settings_requests_dto** | [**DnsSettingsRequestsDto**](DnsSettingsRequestsDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_mail_domain_settings

> <StringWrapper> save_mail_domain_settings(opts)

Save the mail domain settings

Saves the mail domain settings specified in the request to the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-mail-domain-settings/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new
opts = {
  mail_domain_settings_requests_dto: DocspaceApiSdk::MailDomainSettingsRequestsDto.new({type: DocspaceApiSdk::TenantTrustedDomainsType::None, domains: ["example.com", "company.com"], invite_users_as_visitors: false}) # MailDomainSettingsRequestsDto | 
}

begin
  # Save the mail domain settings
  result = api_instance.save_mail_domain_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->save_mail_domain_settings: #{e}"
end
```

#### Using the save_mail_domain_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> save_mail_domain_settings_with_http_info(opts)

```ruby
begin
  # Save the mail domain settings
  data, status_code, headers = api_instance.save_mail_domain_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->save_mail_domain_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mail_domain_settings_requests_dto** | [**MailDomainSettingsRequestsDto**](MailDomainSettingsRequestsDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_portal_color_theme

> <CustomColorThemesSettingsWrapper> save_portal_color_theme(opts)

Save a color theme

Saves the portal color theme specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-portal-color-theme/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new
opts = {
  custom_color_themes_settings_requests_dto: DocspaceApiSdk::CustomColorThemesSettingsRequestsDto.new # CustomColorThemesSettingsRequestsDto | 
}

begin
  # Save a color theme
  result = api_instance.save_portal_color_theme(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->save_portal_color_theme: #{e}"
end
```

#### Using the save_portal_color_theme_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomColorThemesSettingsWrapper>, Integer, Hash)> save_portal_color_theme_with_http_info(opts)

```ruby
begin
  # Save a color theme
  data, status_code, headers = api_instance.save_portal_color_theme_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomColorThemesSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->save_portal_color_theme_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_color_themes_settings_requests_dto** | [**CustomColorThemesSettingsRequestsDto**](CustomColorThemesSettingsRequestsDto.md) |  | [optional] |

### Return type

[**CustomColorThemesSettingsWrapper**](CustomColorThemesSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_tenant_ai_access_settings

> <TenantAiAccessSettingsWrapper> set_tenant_ai_access_settings(opts)

Set the AI access for the portal

Updates the portal-level AI access settings. When AI is disabled, all AI features are turned off:  the AI Agents folder is hidden from root folder listings, AI status checks immediately return disabled,  and AI chat endpoints become inaccessible. Only users with the DocSpaceAdmin role  (EditPortalSettings permission) can change this setting.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-ai-access-settings/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new
opts = {
  tenant_ai_access_settings_dto: DocspaceApiSdk::TenantAiAccessSettingsDto.new # TenantAiAccessSettingsDto | 
}

begin
  # Set the AI access for the portal
  result = api_instance.set_tenant_ai_access_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->set_tenant_ai_access_settings: #{e}"
end
```

#### Using the set_tenant_ai_access_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantAiAccessSettingsWrapper>, Integer, Hash)> set_tenant_ai_access_settings_with_http_info(opts)

```ruby
begin
  # Set the AI access for the portal
  data, status_code, headers = api_instance.set_tenant_ai_access_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantAiAccessSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->set_tenant_ai_access_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_ai_access_settings_dto** | [**TenantAiAccessSettingsDto**](TenantAiAccessSettingsDto.md) |  | [optional] |

### Return type

[**TenantAiAccessSettingsWrapper**](TenantAiAccessSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_email_activation_settings

> <EmailActivationSettingsWrapper> update_email_activation_settings(opts)

Update the email activation settings

Updates the email activation settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-email-activation-settings/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new
opts = {
  email_activation_settings: DocspaceApiSdk::EmailActivationSettings.new # EmailActivationSettings | 
}

begin
  # Update the email activation settings
  result = api_instance.update_email_activation_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->update_email_activation_settings: #{e}"
end
```

#### Using the update_email_activation_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailActivationSettingsWrapper>, Integer, Hash)> update_email_activation_settings_with_http_info(opts)

```ruby
begin
  # Update the email activation settings
  data, status_code, headers = api_instance.update_email_activation_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailActivationSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->update_email_activation_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_activation_settings** | [**EmailActivationSettings**](EmailActivationSettings.md) |  | [optional] |

### Return type

[**EmailActivationSettingsWrapper**](EmailActivationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_invitation_settings

> <TenantUserInvitationSettingsWrapper> update_invitation_settings(opts)

Update user invitation settings

Updates the portal user invitation settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-invitation-settings/).

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

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new
opts = {
  tenant_user_invitation_settings_request_dto: DocspaceApiSdk::TenantUserInvitationSettingsRequestDto.new # TenantUserInvitationSettingsRequestDto | 
}

begin
  # Update user invitation settings
  result = api_instance.update_invitation_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->update_invitation_settings: #{e}"
end
```

#### Using the update_invitation_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantUserInvitationSettingsWrapper>, Integer, Hash)> update_invitation_settings_with_http_info(opts)

```ruby
begin
  # Update user invitation settings
  data, status_code, headers = api_instance.update_invitation_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantUserInvitationSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->update_invitation_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_user_invitation_settings_request_dto** | [**TenantUserInvitationSettingsRequestDto**](TenantUserInvitationSettingsRequestDto.md) |  | [optional] |

### Return type

[**TenantUserInvitationSettingsWrapper**](TenantUserInvitationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

