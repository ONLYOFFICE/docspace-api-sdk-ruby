# DocspaceApiSdk::UpdateWebhooksConfigRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The human-readable name of the webhook configuration. |  |
| **uri** | **String** | The destination URL where the webhook events will be sent. |  |
| **secret_key** | **String** | The webhook secret key used to sign the webhook payloads for the security verification. | [optional] |
| **enabled** | **Boolean** | Specifies whether the webhook configuration is active or not. | [optional] |
| **ssl** | **Boolean** | Specifies whether the SSL certificate verification is required or not. | [optional] |
| **triggers** | [**WebhookTrigger**](WebhookTrigger.md) | Defines which events will trigger webhook notifications. | [optional] |
| **target_id** | **String** | Target ID | [optional] |
| **id** | **Integer** | The webhook configuration ID. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateWebhooksConfigRequestsDto.new(
  name: Production Webhook,
  uri: https://example.com/webhook,
  secret_key: my-secret-key-123,
  enabled: true,
  ssl: true,
  triggers: null,
  target_id: 00000000-0000-0000-0000-000000000001,
  id: 1
)
```
