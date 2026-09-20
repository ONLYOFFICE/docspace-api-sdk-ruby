# DocspaceApiSdk::SsoSettingsV2ConstantsWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | [**SsoSettingsV2ConstantsDto**](SsoSettingsV2ConstantsDto.md) | The SsoSettingsV2ConstantsDto object returned by the operation. | [optional] |
| **count** | **Integer** | The total number of items in the response | [optional] |
| **links** | [**Array&lt;GetPortalPrices200ResponseLinksInner&gt;**](GetPortalPrices200ResponseLinksInner.md) | List of links related to the response | [optional] |
| **status** | **Integer** | HTTP status code of the response | [optional] |
| **status_code** | **Integer** | HTTP status code of the response (duplicate of status) | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoSettingsV2ConstantsWrapper.new(
  response: null,
  count: null,
  links: null,
  status: null,
  status_code: null
)
```
