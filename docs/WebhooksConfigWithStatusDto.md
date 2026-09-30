# DocspaceApiSdk::WebhooksConfigWithStatusDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **configs** | [**WebhooksConfigDto**](WebhooksConfigDto.md) | The subscription itself. Despite the plural name it is one subscription, not a list. | [optional] |
| **status** | **Integer** | The HTTP status code the target answered on the last attempt. `0` means nothing has been delivered yet,  which is not the same as a failure. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebhooksConfigWithStatusDto.new(
  configs: null,
  status: 200
)
```
