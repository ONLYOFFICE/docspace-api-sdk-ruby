# DocspaceApiSdk::WebhookRetryRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;Integer&gt;** | The delivery records to send again, by the `id` values `GET api/2.0/settings/webhooks/log` reports. The bound  is per call: a longer batch has to be split into several calls. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebhookRetryRequestDto.new(
  ids: [1, 2, 3]
)
```
