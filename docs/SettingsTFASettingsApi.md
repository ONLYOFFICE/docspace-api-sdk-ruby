# DocspaceApiSdk::SettingsTFASettingsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_tfa_app_codes**](SettingsTFASettingsApi.md#get_tfa_app_codes) | **GET** /api/2.0/settings/tfaappcodes | Get the TFA backup codes |
| [**get_tfa_confirm_data**](SettingsTFASettingsApi.md#get_tfa_confirm_data) | **GET** /api/2.0/settings/tfaapp/confirm | Get TFA confirmation data |
| [**get_tfa_settings**](SettingsTFASettingsApi.md#get_tfa_settings) | **GET** /api/2.0/settings/tfaapp | Get the TFA settings |
| [**tfa_app_generate_setup_code**](SettingsTFASettingsApi.md#tfa_app_generate_setup_code) | **GET** /api/2.0/settings/tfaapp/setup | Generate the TFA setup code |
| [**tfa_validate_auth_code**](SettingsTFASettingsApi.md#tfa_validate_auth_code) | **POST** /api/2.0/settings/tfaapp/validate | Validate the TFA code |
| [**unlink_tfa_app**](SettingsTFASettingsApi.md#unlink_tfa_app) | **PUT** /api/2.0/settings/tfaappnewapp | Unlink the TFA application |
| [**update_tfa_app_codes**](SettingsTFASettingsApi.md#update_tfa_app_codes) | **PUT** /api/2.0/settings/tfaappnewcodes | Regenerate the TFA backup codes |
| [**update_tfa_settings**](SettingsTFASettingsApi.md#update_tfa_settings) | **PUT** /api/2.0/settings/tfaapp | Update the TFA settings |
| [**update_tfa_settings_link**](SettingsTFASettingsApi.md#update_tfa_settings_link) | **PUT** /api/2.0/settings/tfaappwithlink | Update TFA settings with a link |


## get_tfa_app_codes

> <TfaAppCodeArrayWrapper> get_tfa_app_codes

Get the TFA backup codes

Returns the one-time backup codes of the current user's authenticator-application credential, each with the  flag that says whether it has been spent. A backup code is accepted in place of a code from the application  when signing in, and every code works exactly once, so this list is what a member falls back on after losing  access to their authenticator. Any authenticated member may call it, always for their own account: there is no  way to read someone else's codes. The authenticator method has to be enabled on the portal and an application  has to be linked to the account already, otherwise the call answers 405; link one through  `GET api/2.0/settings/tfaapp/confirm` and `POST api/2.0/settings/tfaapp/validate`. Accounts flagged as  outsiders are refused. This is a read-only, idempotent call: the codes are generated once, when the  application is first linked, and the whole set is replaced by `PUT api/2.0/settings/tfaappnewcodes`. The  default configuration issues five codes of six characters, and a portal may be configured for a different  number and length.

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
  # Get the TFA backup codes
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
  # Get the TFA backup codes
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

Returns the confirmation link the current user has to follow to pass the portal's two-factor authentication  step, together with the confirmation cookie that link depends on. Any authenticated member may call it, always  for their own account, and TFA has to be required for that account by the portal policy already, otherwise the  response body is empty. Which link comes back depends on the method. With the SMS method it is a phone  activation link while the account has no activated mobile number and a phone authorization link afterwards,  and only `url` is filled in. With the authenticator-application method the response also carries `cookieName`  and `cookieValue`, and the call mutates state by issuing a fresh confirmation key and setting that cookie; the  link then points at activation while no application is linked, or after the previous link was reset, and at  re-verification once one is linked. Hand the code obtained through that flow to  `POST api/2.0/settings/tfaapp/validate`. The portal-wide policy behind all of this is read with  `GET api/2.0/settings/tfaapp`.

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

Lists the two-factor authentication methods this portal offers, with the state of each one. The list carries  at most two entries: `sms`, present only when the SMS method is enabled in the portal's configuration, and  `app`, present only when the authenticator-application method is enabled there, so an empty list means neither  method is offered here. Any authenticated member may call it, and what it returns is the portal-wide policy,  not the caller's own linked credential. This is a read-only, idempotent call. For every entry `enabled` says  whether that method is the current policy, `available` says whether it can actually be switched on (for `sms`  that also requires a configured SMS provider), `trustedIps` lists the addresses and ranges exempt from the  challenge, and `mandatoryUsers` and `mandatoryGroups` list the accounts that have to pass it even from a  trusted address. Change the policy with `PUT api/2.0/settings/tfaapp`, and read the caller's own backup codes  with `GET api/2.0/settings/tfaappcodes`.

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

Generate the TFA setup code

Issues the secret the current user has to enter in an authenticator application before the  authenticator-application method can be used, both as a scannable QR-code image and as a key for manual entry.  The call is reachable only with a confirmation token carrying the `TfaActivation` role, obtained from  `GET api/2.0/settings/tfaapp/confirm` or from the login flow; an ordinary bearer token is refused. The  authenticator method has to be enabled on the portal and be its current policy, and the account must have no  application linked yet: for an already-linked account the call answers 405, so reset the credential first with  `PUT api/2.0/settings/tfaappnewapp`. Accounts flagged as outsiders are refused. Repeating the call is safe and  hands back the same secret for the account, so the QR code and the manual key always describe one and the same  credential. `qrCodeSetupImageUrl` is a base64 `data:` URL of a PNG image, and `account` is the label the  application will show. Finish the setup by sending a code from the application to  `POST api/2.0/settings/tfaapp/validate`.

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
  # Generate the TFA setup code
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
  # Generate the TFA setup code
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

Verifies a two-factor authentication code for the account named in the confirmation link being used, and  completes that account's pending TFA step. The call is reachable only with a confirmation token carrying the  `TfaActivation` or `TfaAuth` role, issued by `GET api/2.0/settings/tfaapp/confirm` or by the login flow; an  ordinary bearer token is refused. Both a code from the authenticator application and one of the account's  unused backup codes are accepted, and a backup code is spent by the check. The call mutates state: it signs  the account in, clears the confirmation cookie so the link cannot be replayed, and on the very first  activation it generates the backup codes later returned by `GET api/2.0/settings/tfaappcodes`. Pass  `session=true` to keep that sign-in for the browser session only instead of a persistent one. It answers  `true` only for that first activation and `false` when an application was already linked. A wrong code is  rejected as an invalid request, and further attempts are refused once the portal's login attempt limit is  reached. The call also works while the portal's payment is overdue.

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

Detaches the authenticator application from an account, so that the account has to link a new one before it  can sign in again. `id` has to name an existing account: an empty or unknown value is refused. Passing the  caller's own ID resets their own credential and returns the activation link they should follow next; passing  another member's ID is allowed for the portal owner only, and every other caller, a DocSpace administrator  included, is refused. The account has to have an application linked and the authenticator method has to be  enabled on the portal, otherwise the call answers 405. The call is destructive: the account's backup codes are  dropped together with the credential and all of its sessions are signed out. For another member the portal  also emails them that their TFA was reset, and the answer is then an empty string. The portal-wide policy is  not touched, so TFA stays required and the account sets up an application again through  `GET api/2.0/settings/tfaapp/confirm`; lift the requirement for everyone with `PUT api/2.0/settings/tfaapp`.

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

Regenerate the TFA backup codes

Replaces the current user's one-time backup codes with a freshly generated set and returns it. Use it once the  previous codes have been spent or may have leaked: the whole old set stops being accepted the moment this call  succeeds, so store the new codes before leaving the response. Any authenticated member may call it, always for  their own account. The authenticator method has to be enabled on the portal and an application has to be  linked to the account already, otherwise the call answers 405, and accounts flagged as outsiders are refused.  The call mutates state and is not idempotent: every invocation issues another set and discards the one before  it, so a retry after a timeout returns codes different from those the first attempt generated. The codes come  back unused, five of them of six characters with the default configuration, and a portal may be configured for  a different number and length. Read the current set without changing it through  `GET api/2.0/settings/tfaappcodes`. The authenticator secret itself is untouched, so the linked application  keeps working.

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
  # Regenerate the TFA backup codes
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
  # Regenerate the TFA backup codes
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

Sets the portal-wide two-factor authentication policy: `type` `1` switches on the SMS method, `2` switches on  the authenticator application, and `0` turns TFA off, as does any unknown value. The two methods are mutually  exclusive, so switching one on switches the other off. The caller has to be the portal owner or a DocSpace  administrator; other members are refused, and a request that names the owner's account in `id` or in  `mandatoryUsers` is refused unless `id` carries the caller's own account. `trustedIps` takes single addresses,  inclusive ranges and CIDR blocks, and an unparseable entry is rejected as an invalid request; accounts listed  in `mandatoryUsers` or `mandatoryGroups` still have to pass the challenge even from a trusted address.  Switching a method on is disruptive: it resets the portal's authentication cookies, so every session on the  portal, the caller's own included, has to sign in again. The answer is `true` when a method was switched on  and `false` when TFA was turned off. Use `PUT api/2.0/settings/tfaappwithlink` instead to receive the caller's  own confirmation link in the same step.

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

Update TFA settings with a link

Applies the same portal-wide two-factor authentication change as `PUT api/2.0/settings/tfaapp` and  additionally returns the confirmation link the caller needs to pass the new challenge, so an administrator who  has just switched TFA on can go straight to setting it up for themselves. The caller has to be the portal  owner or a DocSpace administrator, and a request that names the owner's account in `id` or in `mandatoryUsers`  is refused unless `id` carries the caller's own account. Every effect of the plain call applies here too: the  methods are mutually exclusive, `type` `0` turns TFA off, `trustedIps` and the two mandatory lists behave the  same way, and switching a method on resets the portal's authentication cookies, so all sessions have to sign  in again. The answer is an empty string whenever there is no link to hand out: when the request turned TFA  off, and when the caller is exempt from the challenge, most often because their own address is in the  `trustedIps` list of that very request. The cookie the link depends on is not returned here, read it with  `GET api/2.0/settings/tfaapp/confirm`.

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
  # Update TFA settings with a link
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
  # Update TFA settings with a link
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

