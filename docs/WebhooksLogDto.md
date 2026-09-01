# DocspaceApiSdk::WebhooksLogDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The webhook log ID. |  |
| **config_name** | **String** | The webhook configuration name. | [optional] |
| **trigger** | [**WebhookTrigger**](WebhookTrigger.md) | The webhook trigger type. | [optional] |
| **creation_time** | **Time** | The webhook creation time. | [optional] |
| **method** | **String** | The webhook method. | [optional] |
| **route** | **String** | The webhook route. | [optional] |
| **request_headers** | **String** | The webhook request headers. | [optional] |
| **request_payload** | **String** | The webhook request payload. | [optional] |
| **response_headers** | **String** | The webhook response headers. | [optional] |
| **response_payload** | **String** | The webhook response payload. | [optional] |
| **status** | **Integer** | The webhook status. | [optional] |
| **delivery** | **Time** | The webhook delivery time. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebhooksLogDto.new(
  id: 1,
  config_name: Example Name,
  trigger: null,
  creation_time: 2024-01-15T10:30:00Z,
  method: example value,
  route: example value,
  request_headers: example value,
  request_payload: example value,
  response_headers: example value,
  response_payload: example value,
  status: 1,
  delivery: 2024-01-15T10:30:00Z
)
```
