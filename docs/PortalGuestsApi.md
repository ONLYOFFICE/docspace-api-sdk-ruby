# DocspaceApiSdk::PortalGuestsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_guest_sharing_link**](PortalGuestsApi.md#get_guest_sharing_link) | **GET** /api/2.0/people/guests/{userid}/share | Get a guest sharing link |


## get_guest_sharing_link

> <StringWrapper> get_guest_sharing_link(userid)

Get a guest sharing link

Builds a link that lets another member of the portal take over the caller's guest, so that the guest becomes  visible to them as well.  The account in the route has to exist and be a guest - any other type is rejected with 400 - and the caller  has to be able to see it and must not be a guest itself.  The call is read-only: it only mints the link and changes nothing, and it can be repeated as often as needed.  The answer is a shortened confirmation URL as plain text; hand it to the person who should get the guest, and  their client completes the hand-over with `POST api/2.0/people/guests/share/approve`.  The link carries a confirmation token and therefore expires, so mint it when it is about to be used rather  than storing it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-guest-sharing-link/).

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

api_instance = DocspaceApiSdk::Portal::GuestsApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The ID of the guest to be handed over, taken from the route. The account has to exist, has to be a guest, and  has to be one the caller can see.

begin
  # Get a guest sharing link
  result = api_instance.get_guest_sharing_link(userid)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::GuestsApi->get_guest_sharing_link: #{e}"
end
```

#### Using the get_guest_sharing_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> get_guest_sharing_link_with_http_info(userid)

```ruby
begin
  # Get a guest sharing link
  data, status_code, headers = api_instance.get_guest_sharing_link_with_http_info(userid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::GuestsApi->get_guest_sharing_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The ID of the guest to be handed over, taken from the route. The account has to exist, has to be a guest, and  has to be one the caller can see. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

