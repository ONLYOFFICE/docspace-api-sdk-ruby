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
| [**get_portal_hostname**](SettingsCommonSettingsApi.md#get_portal_hostname) | **GET** /api/2.0/settings/machine | Get the portal hostname |
| [**get_portal_logo**](SettingsCommonSettingsApi.md#get_portal_logo) | **GET** /api/2.0/settings/logo | Get a portal logo |
| [**get_portal_settings**](SettingsCommonSettingsApi.md#get_portal_settings) | **GET** /api/2.0/settings | Get the portal settings |
| [**get_socket_settings**](SettingsCommonSettingsApi.md#get_socket_settings) | **GET** /api/2.0/settings/socket | Get the socket settings |
| [**get_supported_cultures**](SettingsCommonSettingsApi.md#get_supported_cultures) | **GET** /api/2.0/settings/cultures | Get supported languages |
| [**get_tenant_ai_access_settings**](SettingsCommonSettingsApi.md#get_tenant_ai_access_settings) | **GET** /api/2.0/settings/ai-access | Get the AI access settings |
| [**get_tenant_user_invitation_settings**](SettingsCommonSettingsApi.md#get_tenant_user_invitation_settings) | **GET** /api/2.0/settings/invitationsettings | Get the user invitation settings |
| [**get_time_zones**](SettingsCommonSettingsApi.md#get_time_zones) | **GET** /api/2.0/settings/timezones | Get time zones |
| [**save_default_folder**](SettingsCommonSettingsApi.md#save_default_folder) | **PUT** /api/2.0/settings/defaultfolder | Set the default folder |
| [**save_dns_settings**](SettingsCommonSettingsApi.md#save_dns_settings) | **PUT** /api/2.0/settings/dns | Save the DNS settings |
| [**save_mail_domain_settings**](SettingsCommonSettingsApi.md#save_mail_domain_settings) | **POST** /api/2.0/settings/maildomainsettings | Save the mail domain settings |
| [**save_portal_color_theme**](SettingsCommonSettingsApi.md#save_portal_color_theme) | **PUT** /api/2.0/settings/colortheme | Save a color theme |
| [**set_tenant_ai_access_settings**](SettingsCommonSettingsApi.md#set_tenant_ai_access_settings) | **POST** /api/2.0/settings/ai-access | Set the AI access settings |
| [**update_email_activation_settings**](SettingsCommonSettingsApi.md#update_email_activation_settings) | **PUT** /api/2.0/settings/emailactivation | Update the email activation settings |
| [**update_invitation_settings**](SettingsCommonSettingsApi.md#update_invitation_settings) | **PUT** /api/2.0/settings/invitationsettings | Update the user invitation settings |


## close_admin_helper

> close_admin_helper

Close the admin helper

Dismisses the administrator helper tip for the caller, so it is not shown again on this account. Available  only to a DocSpace administrator, which includes the portal Owner, on a Standalone (self-hosted) installation  running outside white-label custom mode; every other caller is refused. This is a mutating, idempotent call  scoped to the calling account only; it never affects other administrators. It returns no data on success.

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
- **Accept**: application/json


## complete_wizard

> <WizardSettingsWrapper> complete_wizard(opts)

Complete the Wizard settings

Finishes the initial portal setup wizard: sets the owner's password and locale, applies the supplied license  if one is required, and marks the wizard as completed so it is not shown again. This call is not for a normal  logged-in session: it requires a confirmation link bearing the Wizard claim, of the kind issued when a new  portal is created, and the link is consumed as part of authenticating the request; the caller must also hold  the EditPortalSettings permission. An empty password or a malformed email address is rejected without  completing the wizard, and so is a missing, invalid, or expired license, or a license whose user quota does  not cover the portal. This call is meant to run once per portal; running it again is accepted but has no  further effect once the wizard is already completed. It returns the resulting wizard settings, including the  completed flag.

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

Sets how the portal responds when a client opens a DocSpace link on a mobile device: always in the browser,  always in the native app, or asking the user to choose each time. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). The handling mode must be one of the documented enum values; anything else is  rejected without being saved. This is a mutating, idempotent call: sending the same mode again leaves the  setting unchanged. It returns the saved deep link settings, including the timestamp of the last change; read  the current value at any time, including anonymously, from `GET api/2.0/settings/deeplink`.

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

Removes a custom color theme from the portal by its ID. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). An ID belonging to one of the built-in default themes is not removable; the  call succeeds but leaves the theme list unchanged. If the deleted theme was the currently selected one, the  theme with the lowest remaining ID is selected automatically. This is a mutating, idempotent call: deleting an  ID that is already gone succeeds without error and again leaves nothing changed. It returns the full updated  theme configuration, including the (possibly new) selected theme.

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
id = 1 # Integer | The theme to remove, by theme ID. An ID belonging to a built-in theme leaves the list untouched, and so does  one that is already gone - neither is reported as an error. Removing the theme currently in use moves the  portal to the remaining theme with the lowest ID.

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
| **id** | **Integer** | The theme to remove, by theme ID. An ID belonging to a built-in theme leaves the list untouched, and so does  one that is already gone - neither is reported as an error. Removing the theme currently in use moves the  portal to the remaining theme with the lowest ID. |  |

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

Returns how the portal currently responds when a client opens a DocSpace link on a mobile device: always in  the browser, always in the native app, or asking the user to choose. No permission is required; anonymous  callers can read it too. This is a read-only, idempotent call. The response supports conditional requests:  send the standard If-Modified-Since header with the previous `lastModified` value, and an unchanged response  comes back empty instead of resending the settings. Change the mode with `POST api/2.0/settings/deeplink`,  which requires the EditPortalSettings permission.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-deep-link-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_settings

> <PaymentSettingsWrapper> get_payment_settings

Get the payment settings

Returns the portal's payment-related configuration: the sales contact email, the URL to buy or extend a  subscription, whether the portal is Standalone, the current license's trial status and expiration date, and  the maximum quota quantity that can be purchased at once. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). This is a read-only, idempotent call. It remains reachable even while the  portal's own subscription payment is overdue, since this is how the caller finds the link to resolve it.

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

Returns the portal's color theme configuration: every saved custom theme, which one is currently selected, and  how many custom themes the plan still allows. No permission is required; anonymous callers can read it too.  This is a read-only, idempotent call. The response supports conditional requests: send the standard  If-Modified-Since header with the previous `lastModified` value, and an unchanged response comes back empty  instead of resending the same settings. A `limit` of `0` means the plan does not cap the number of custom  themes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-color-theme/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portal_hostname

> <StringWrapper> get_portal_hostname

Get the portal hostname

Returns the hostname the current request arrived on, exactly as sent in the HTTP Host header, so a client  mid-setup can learn the address the portal is actually reachable at. This call is not for a normal logged-in  session: it requires a confirmation link bearing the Wizard claim, of the kind generated during initial portal  setup, and the link is consumed as part of authenticating the request. This is a read-only, idempotent call.  The value reflects whatever the caller connected through, including a reverse proxy's public name, and is not  necessarily the tenant's configured alias or mapped domain.

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
  # Get the portal hostname
  result = api_instance.get_portal_hostname
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_portal_hostname: #{e}"
end
```

#### Using the get_portal_hostname_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> get_portal_hostname_with_http_info

```ruby
begin
  # Get the portal hostname
  data, status_code, headers = api_instance.get_portal_hostname_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_portal_hostname_with_http_info: #{e}"
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


## get_portal_logo

> <StringWrapper> get_portal_logo

Get a portal logo

Returns the absolute URL of the portal's current logo image, already resolved against the active white-label  branding. Requires an authenticated session; every role, including Guest, can read it. This is a read-only,  idempotent call. The response supports conditional requests: send the standard If-Modified-Since header with  the previous `lastModified` value, and an unchanged response comes back empty instead of resending the same  URL. The URL points at whatever image is currently configured, including the default DocSpace logo when no  custom branding has been set.

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

Returns the current portal's general configuration: branding, culture, feature flags, and DocSpace/Standalone  mode, everything the client needs to render its shell before or after login. No permission is required, but  the response shape depends on the caller's identity. An anonymous caller receives only the public subset  (culture, branding, DocSpace/Standalone flags, deep link data, setup-wizard and join-by-domain hints); once  authenticated, the response also includes tenant-specific fields such as the owner ID, time zone, invitation  limit, AI/banner/dev-tools flags, and, for a DocSpace administrator, the tenant wallet's low-balance flag.  This is a read-only, idempotent call. Pass `withPassword=true` to also receive the parameters (`salt`,  iteration count, hash size) used to hash the password client-side before it is sent to the authentication  endpoints; these are only added for an anonymous caller or when explicitly requested, never as part of the  default authenticated response.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::Settings::CommonSettingsApi.new
opts = {
  withpassword: true # Boolean | Whether the answer also carries the salt, iteration count and hash size a client needs to hash a password  before sending it to the authentication operations. They are included for an anonymous caller anyway; for a  signed-in one they are left out unless this is set.
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
| **withpassword** | **Boolean** | Whether the answer also carries the salt, iteration count and hash size a client needs to hash a password  before sending it to the authentication operations. They are included for an anonymous caller anyway; for a  signed-in one they are left out unless this is set. | [optional] |

### Return type

[**SettingsWrapper**](SettingsWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_socket_settings

> <SocketSettingsWrapper> get_socket_settings

Get the socket settings

Returns the base URL of the portal's real-time notification hub (Socket.IO), which the client connects to for  live updates such as file changes, presence, or quota alerts. Requires an authenticated session; every role  can read it. This is a read-only, idempotent call. The value comes from server-side configuration and cannot  be changed through this API; an empty `url` means the portal has no notification hub configured and the client  should not attempt to connect.

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

> <Array(<SocketSettingsWrapper>, Integer, Hash)> get_socket_settings_with_http_info

```ruby
begin
  # Get the socket settings
  data, status_code, headers = api_instance.get_socket_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SocketSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CommonSettingsApi->get_socket_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SocketSettingsWrapper**](SocketSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_supported_cultures

> <STRINGArrayWrapper> get_supported_cultures

Get supported languages

Returns the two- or four-letter language codes of every culture currently enabled on the portal (for example  `en-US`), used to populate a language picker before or after login. No permission is required; anonymous  callers can read it too. This is a read-only, idempotent call, and the list is not paginated. The response  supports conditional requests: an unchanged result is signaled instead of resending the same list. The set of  enabled cultures is a portal-wide configuration value, not a per-user preference.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-supported-cultures/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_ai_access_settings

> <TenantAiAccessSettingsWrapper> get_tenant_ai_access_settings

Get the AI access settings

Returns whether AI functionality (chat, agents, vectorization) is currently available on the portal at all; AI  is enabled by default. Requires an authenticated session; every role can read it. This is a read-only,  idempotent call. When the setting is disabled, every AI-specific endpoint and folder is unavailable regardless  of the caller's own permissions; this call only reports the portal-wide switch, not any per-user entitlement.

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
  # Get the AI access settings
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
  # Get the AI access settings
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

Returns whether the portal currently allows inviting new members and new guests at all. No permission is  required; anonymous callers can read it too, since the invitation flow itself may run before the caller has  signed in. This is a read-only, idempotent call. The response supports conditional requests: send the standard  If-Modified-Since header with the previous `lastModified` value, and an unchanged response comes back empty  instead of resending the same settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-user-invitation-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_time_zones

> <TimezonesRequestsArrayWrapper> get_time_zones

Get time zones

Returns every time zone known to the host machine, each with its IANA identifier and a human-readable display  name, ordered from the most negative to the most positive UTC offset. This call is not for a normal logged-in  session: it requires a confirmation link bearing the Wizard or Administrators claim, of the kind generated  during initial portal setup or issued by an administrator, and the link is consumed as part of authenticating  the request. This is a read-only, idempotent call, and the list is not paginated. Use the returned `id` values  wherever the portal expects a time zone identifier; an unrecognized value is rejected there, not here.

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

Sets which folder the current user's account opens into by default, such as My Documents, the rooms list, or  favorites. Requires an authenticated session; every role may set its own default, and the change never affects  any other user. Only folder types the client actually offers as a landing page are accepted; picking My  Documents (`USER`) as a Guest is rejected too, since guests have no personal storage. This is a mutating,  idempotent call. It returns the saved setting.

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

Maps a custom domain name onto the current tenant, or clears the mapping, so the portal becomes reachable  under the caller's own DNS name instead of only its default alias. Available only on a Standalone  (self-hosted) installation; on SaaS the call is always refused. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). Disable the mapping by passing `enable=false`, in which case the domain name  in the request is ignored. A domain that collides with the portal's reserved base domain, or otherwise fails  validation, is rejected without changing the current mapping. This is a mutating, idempotent call. On success  the previous domain also stops answering, and any CSP configuration referencing it is updated to the new one.

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

Overwrites the portal's trusted mail domain configuration, which controls which email domains are treated as  already verified when a user is invited or self-registers. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). When the requested mode is a custom domain list, every domain is normalized to  lowercase and checked against the expected hostname format; a domain that fails the check, or an empty custom  list, causes the whole call to be rejected without saving anything. For the other modes the domain list in the  request is ignored. The `inviteUsersAsVisitors` flag controls whether users who join through a trusted domain  are added as full members or as visitors, and takes effect on the next join rather than retroactively. This is  a mutating, idempotent call: repeating it with the same body leaves the portal in the same state. On success  it returns a confirmation message, not the saved settings themselves; read them back from  `GET api/2.0/settings`.

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
  mail_domain_settings_requests_dto: DocspaceApiSdk::MailDomainSettingsRequestsDto.new({type: DocspaceApiSdk::TenantTrustedDomainsType::None, domains: [example.com,  company.com], invite_users_as_visitors: false}) # MailDomainSettingsRequestsDto | 
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

Adds or updates a custom color theme, or changes which theme is selected, for the whole portal. Requires Owner  or DocSpaceAdmin (the EditPortalSettings permission). Pass `theme` to create or edit one: an existing theme is  matched and updated by its ID, a new one is appended, and an ID that collides with a built-in default theme is  treated as a request to create a new custom theme instead of overwriting the default. Once the plan's  custom-theme limit is reached, a new theme is silently not added rather than rejected with an error, so check  the returned `themes` count against `limit` before assuming it was saved. Pass `selected` to switch the active  theme; an ID that does not match any existing theme is ignored. This is a mutating call, not strictly  idempotent once the limit has been reached. It returns the full updated theme configuration.

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

Set the AI access settings

Turns AI functionality (chat, agents, vectorization) on or off for the whole portal; AI is enabled by default.  Requires Owner or DocSpaceAdmin (the EditPortalSettings permission); every other caller is refused. Disabling  it immediately hides the AI Agents folder from root folder listings, makes AI status checks report disabled,  and makes AI chat endpoints unreachable for every user on the tenant, not only the caller. This is a mutating,  idempotent, portal-wide call, and the change is pushed to already-connected clients over the real-time  notification hub rather than waiting for their next request. It returns the saved setting.

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
  # Set the AI access settings
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
  # Set the AI access settings
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

Updates the current user's own preference for whether the email confirmation prompt is displayed on their  account. Requires an authenticated session; every role may change its own setting, and the change never  affects any other user. This is a mutating, idempotent call. It returns the settings exactly as submitted,  without validating them against the account's actual email confirmation state, so `show` can be set to `true`  even after the address is already confirmed.

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

Update the user invitation settings

Sets whether the portal allows inviting new members and new guests. Requires Owner or DocSpaceAdmin (the  EditPortalSettings permission). Disabling member or guest invitations only blocks creating new invitations  going forward; it does not revoke links already issued or remove members already invited. This is a mutating,  idempotent, portal-wide call. It returns the saved setting; read the current value at any time, including  anonymously, from `GET api/2.0/settings/invitationsettings`.

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
  # Update the user invitation settings
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
  # Update the user invitation settings
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

