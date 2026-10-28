# DocspaceApiSdk::SettingsOwnerApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**send_owner_change_instructions**](SettingsOwnerApi.md#send_owner_change_instructions) | **POST** /api/2.0/settings/owner | Start the portal owner change |
| [**update_portal_owner**](SettingsOwnerApi.md#update_portal_owner) | **PUT** /api/2.0/settings/owner | Confirm the portal owner change |


## send_owner_change_instructions

> <OwnerChangeInstructionsWrapper> send_owner_change_instructions(opts)

Start the portal owner change

Starts handing this portal over to another of its members: the confirmation letter goes to the current owner's  address, and nothing changes until the link in it is used. The owner's own email address has to be confirmed  first, otherwise the call is answered with 400; `GET api/2.0/people/@self` reports it as `activationStatus`.  The caller needs the portal-settings right of a DocSpace administrator, so a room administrator, an ordinary  member or a guest is refused with 403, as is naming a guest in `ownerId`. Only the portal owner can actually  start a transfer: an administrator who is not the owner, or a named user who is inactive or unknown here, gets  200 with `status` 0 and a localized refusal instead of an error, so read `status` and not the HTTP code. A  started transfer answers `status` 1 and a `message` carrying the owner's address inside an HTML `mailto:`  anchor rather than as plain text. Ownership itself does not move here; every call issues a fresh link usable  for a limited period, seven days by default, and the attempt is recorded in the audit trail. Complete the  transfer with `PUT api/2.0/settings/owner`; changing what a member may do is `PUT api/2.0/people/type/{type}`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-owner-change-instructions/).

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

api_instance = DocspaceApiSdk::Settings::OwnerApi.new
opts = {
  owner_id_settings_request_dto: DocspaceApiSdk::OwnerIdSettingsRequestDto.new({owner_id: '00000000-0000-0000-0000-000000000001'}) # OwnerIdSettingsRequestDto | 
}

begin
  # Start the portal owner change
  result = api_instance.send_owner_change_instructions(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::OwnerApi->send_owner_change_instructions: #{e}"
end
```

#### Using the send_owner_change_instructions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnerChangeInstructionsWrapper>, Integer, Hash)> send_owner_change_instructions_with_http_info(opts)

```ruby
begin
  # Start the portal owner change
  data, status_code, headers = api_instance.send_owner_change_instructions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnerChangeInstructionsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::OwnerApi->send_owner_change_instructions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id_settings_request_dto** | [**OwnerIdSettingsRequestDto**](OwnerIdSettingsRequestDto.md) |  | [optional] |

### Return type

[**OwnerChangeInstructionsWrapper**](OwnerChangeInstructionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_portal_owner

> update_portal_owner(opts)

Confirm the portal owner change

Completes the portal owner change that `POST api/2.0/settings/owner` started, making the user named in  `ownerId` the owner of this portal. Authorization comes from the confirmation link in that letter, not from an  ordinary session: pass the link's `type`, `key`, `uid` and `encemail` parameters in the `confirm` request  header, and check with `POST api/2.0/authentication/confirm` that it is still usable, because it expires after  a limited period, seven days by default. A caller without such a link is refused whatever role it holds, and  so is a link whose address is no longer the owner's, which is what replaying a used link looks like. The named  user has to be an active member of the portal and must not be a guest. The call is mutating: a named user who  is not a DocSpace administrator yet is promoted to one first, and a promotion needing a paid seat the portal  lacks is refused before ownership moves. The previous owner keeps their account and role but loses the owner's  rights, and the change reaches the audit trail. The answer carries no payload: read the new `ownerId` from  `GET api/2.0/settings`, which needs no token. Only the new owner can start another transfer.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-portal-owner/).

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

api_instance = DocspaceApiSdk::Settings::OwnerApi.new
opts = {
  owner_id_settings_request_dto: DocspaceApiSdk::OwnerIdSettingsRequestDto.new({owner_id: '00000000-0000-0000-0000-000000000001'}) # OwnerIdSettingsRequestDto | 
}

begin
  # Confirm the portal owner change
  api_instance.update_portal_owner(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::OwnerApi->update_portal_owner: #{e}"
end
```

#### Using the update_portal_owner_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_portal_owner_with_http_info(opts)

```ruby
begin
  # Confirm the portal owner change
  data, status_code, headers = api_instance.update_portal_owner_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::OwnerApi->update_portal_owner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id_settings_request_dto** | [**OwnerIdSettingsRequestDto**](OwnerIdSettingsRequestDto.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

