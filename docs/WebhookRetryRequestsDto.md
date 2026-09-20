# DocspaceApiSdk::WebhookRetryRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;Integer&gt;** | The delivery records to send again, by the identifiers `GET api/2.0/settings/webhooks/log` reports. An  identifier that exists nowhere, and one belonging to another member subscription when the caller is not a  DocSpace administrator, is skipped in silence rather than failing the call, so compare the number of records  that come back against the number sent. An empty list is accepted and queues nothing. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebhookRetryRequestsDto.new(
  ids: [1, 2, 3]
)
```
