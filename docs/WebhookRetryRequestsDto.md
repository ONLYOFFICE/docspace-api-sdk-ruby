# DocspaceApiSdk::WebhookRetryRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;Integer&gt;** | The list of webhook delivery IDs to retry. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebhookRetryRequestsDto.new(
  ids: [1, 2, 3]
)
```
