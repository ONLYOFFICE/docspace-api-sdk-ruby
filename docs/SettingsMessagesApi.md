# DocspaceApiSdk::SettingsMessagesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**enable_admin_message_settings**](SettingsMessagesApi.md#enable_admin_message_settings) | **POST** /api/2.0/settings/messagesettings | Enable or disable administrator messages |
| [**send_admin_mail**](SettingsMessagesApi.md#send_admin_mail) | **POST** /api/2.0/settings/sendadmmail | Send a message to the administrator |
| [**send_join_invite_mail**](SettingsMessagesApi.md#send_join_invite_mail) | **POST** /api/2.0/settings/sendjoininvite | Send an invitation email |


## enable_admin_message_settings

> <StringWrapper> enable_admin_message_settings(opts)

Enable or disable administrator messages

Switches on or off the contact form the sign-in page offers a visitor who cannot get into the portal, and  which delivers their message to the portal administrators. The caller needs the portal-settings right of a  DocSpace administrator - the portal owner and a DocSpace administrator qualify, any other member is refused.  Send the new state as `turnOn`: `true` publishes the form, `false` hides it. The change covers the whole  portal, applies to the next sign-in page without a restart, is recorded in the audit trail, and repeating the  call with the same value leaves the portal as it is. What comes back is a localized confirmation message  rather than the stored flag - read the flag as `enableAdmMess` from `GET api/2.0/settings`, which needs no  token. That flag is also forced on while the portal's payment has lapsed, so it can report `true` on a portal  where the form was switched off here. The form itself posts to `POST api/2.0/settings/sendadmmail` and this  setting gates nothing else: the notifications administrators receive as portal members are subscribed  separately with `POST api/2.0/settings/notification`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/enable-admin-message-settings/).

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

api_instance = DocspaceApiSdk::Settings::MessagesApi.new
opts = {
  turn_on_admin_message_settings_request_dto: DocspaceApiSdk::TurnOnAdminMessageSettingsRequestDto.new # TurnOnAdminMessageSettingsRequestDto | 
}

begin
  # Enable or disable administrator messages
  result = api_instance.enable_admin_message_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::MessagesApi->enable_admin_message_settings: #{e}"
end
```

#### Using the enable_admin_message_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> enable_admin_message_settings_with_http_info(opts)

```ruby
begin
  # Enable or disable administrator messages
  data, status_code, headers = api_instance.enable_admin_message_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::MessagesApi->enable_admin_message_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **turn_on_admin_message_settings_request_dto** | [**TurnOnAdminMessageSettingsRequestDto**](TurnOnAdminMessageSettingsRequestDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_admin_mail

> <StringWrapper> send_admin_mail(opts)

Send a message to the administrator

Sends a message from someone who cannot get into the portal to its administrators - the contact form the  sign-in page offers unauthenticated visitors. No token is needed. The form has to be published first with  `POST api/2.0/settings/messagesettings` unless the portal's payment has lapsed, otherwise nothing is sent;  `enableAdmMess` in `GET api/2.0/settings` reports whether the call is worth making. `email` is the address the  administrators answer to and has to be a real address, and `message` is reduced to plain text first, so a body  carrying nothing but markup counts as empty - either fault is refused with 400. When the caller is not signed  in and this installation has a CAPTCHA configured, `recaptchaResponse` has to carry a solved challenge of the  `recaptchaType` that `GET api/2.0/settings` publishes together with the site key, and a missing or stale  answer refuses the call. `culture` picks the language of the letter. Delivery is queued and reaches the  administrators subscribed to administrator notifications, so a confirmed call means accepted rather than read,  and the answer is a localized confirmation. Attempts are rate limited per address and per operation, and  further ones are refused with 429.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-admin-mail/).

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

api_instance = DocspaceApiSdk::Settings::MessagesApi.new
opts = {
  admin_message_settings_requests_dto: DocspaceApiSdk::AdminMessageSettingsRequestsDto.new({message: 'Hello, this is a test message from the administrator.', email: 'user@example.com'}) # AdminMessageSettingsRequestsDto | 
}

begin
  # Send a message to the administrator
  result = api_instance.send_admin_mail(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::MessagesApi->send_admin_mail: #{e}"
end
```

#### Using the send_admin_mail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> send_admin_mail_with_http_info(opts)

```ruby
begin
  # Send a message to the administrator
  data, status_code, headers = api_instance.send_admin_mail_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::MessagesApi->send_admin_mail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admin_message_settings_requests_dto** | [**AdminMessageSettingsRequestsDto**](AdminMessageSettingsRequestsDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_join_invite_mail

> <StringWrapper> send_join_invite_mail(opts)

Send an invitation email

Sends an invitation email with a join link to the address in the request - the self-registration the sign-in  page's register link performs. No token is needed. The portal has to publish a trusted-domain policy first,  saved with `POST api/2.0/settings/maildomainsettings`: without one there is nothing to join and every caller  alike is answered with 405 - the same condition `GET api/2.0/settings` reports as `enabledJoin`. `email` has  to be a real address written in ASCII rather than an internationalized one, must not already belong to a  portal member, and, when the policy names domains rather than accepting all of them, has to end with one of  them - each of those faults is refused with 400. `culture` picks the language of the letter. The invitation is  not an account: the invitee becomes a member only after following the link, and the role it grants, user or  room administrator, follows the trusted-domain settings and drops to user once the portal's paid places are  taken. Where the installation caps invitations, an accepted call spends one of those counted by  `invitationLimit`, and only about a dozen calls from one address in two minutes are accepted. What comes back  is a localized confirmation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-join-invite-mail/).

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

api_instance = DocspaceApiSdk::Settings::MessagesApi.new
opts = {
  admin_message_base_settings_requests_dto: DocspaceApiSdk::AdminMessageBaseSettingsRequestsDto.new({email: 'admin@example.com'}) # AdminMessageBaseSettingsRequestsDto | 
}

begin
  # Send an invitation email
  result = api_instance.send_join_invite_mail(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::MessagesApi->send_join_invite_mail: #{e}"
end
```

#### Using the send_join_invite_mail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> send_join_invite_mail_with_http_info(opts)

```ruby
begin
  # Send an invitation email
  data, status_code, headers = api_instance.send_join_invite_mail_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::MessagesApi->send_join_invite_mail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admin_message_base_settings_requests_dto** | [**AdminMessageBaseSettingsRequestsDto**](AdminMessageBaseSettingsRequestsDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

