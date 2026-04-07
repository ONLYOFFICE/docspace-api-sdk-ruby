# DocspaceApiSdk::CustomerInfoWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | [**CustomerInfoDto**](CustomerInfoDto.md) |  | [optional] |
| **count** | **Integer** | The total number of items in the response | [optional] |
| **links** | [**Array&lt;GetPortalPrices200ResponseLinksInner&gt;**](GetPortalPrices200ResponseLinksInner.md) | List of links related to the response | [optional] |
| **status** | **Integer** | HTTP status code of the response | [optional] |
| **status_code** | **Integer** | HTTP status code of the response (duplicate of status) | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerInfoWrapper.new(
  response: null,
  count: null,
  links: null,
  status: null,
  status_code: null
)
```
