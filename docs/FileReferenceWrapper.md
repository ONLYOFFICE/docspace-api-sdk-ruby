# DocspaceApiSdk::FileReferenceWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | [**FileReference**](FileReference.md) | The FileReference object returned by the operation. | [optional] |
| **count** | **Integer** | The total number of items in the response | [optional] |
| **links** | [**Array&lt;GetPortalPrices200ResponseLinksInner&gt;**](GetPortalPrices200ResponseLinksInner.md) | List of links related to the response | [optional] |
| **status** | **Integer** | HTTP status code of the response | [optional] |
| **status_code** | **Integer** | HTTP status code of the response (duplicate of status) | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileReferenceWrapper.new(
  response: null,
  count: null,
  links: null,
  status: null,
  status_code: null
)
```
