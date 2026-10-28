# DocspaceApiSdk::ErrorApiResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** | The response status flag. Always 1 on an error, as opposed to 0 on success. | [optional] |
| **status_code** | **Integer** | The HTTP status code of the response, repeated in the body. | [optional] |
| **error** | [**ErrorApiResponseError**](ErrorApiResponseError.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ErrorApiResponse.new(
  status: null,
  status_code: null,
  error: null
)
```
