# DocspaceApiSdk::AmazonS3RegionArrayWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | [**Array&lt;AmazonS3RegionDto&gt;**](AmazonS3RegionDto.md) | The list of AmazonS3RegionDto objects returned by the operation. | [optional] |
| **count** | **Integer** | How many items this response carries: the length of the page for a list, 1 for a single object | [optional] |
| **total** | **Integer** | How many items the whole list holds across all pages, for working out how many pages to request. Sent only by the operations that page their results, and left out of every other response | [optional] |
| **links** | [**Array&lt;GetPortalPrices200ResponseLinksInner&gt;**](GetPortalPrices200ResponseLinksInner.md) | List of links related to the response | [optional] |
| **status** | **Integer** | HTTP status code of the response | [optional] |
| **status_code** | **Integer** | HTTP status code of the response (duplicate of status) | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AmazonS3RegionArrayWrapper.new(
  response: null,
  count: null,
  total: null,
  links: null,
  status: null,
  status_code: null
)
```
