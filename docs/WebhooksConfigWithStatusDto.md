# DocspaceApiSdk::WebhooksConfigWithStatusDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **configs** | [**WebhooksConfigDto**](WebhooksConfigDto.md) | The webhook configuration. | [optional] |
| **status** | **Integer** | The webhook status. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebhooksConfigWithStatusDto.new(
  configs: null,
  status: 1
)
```
