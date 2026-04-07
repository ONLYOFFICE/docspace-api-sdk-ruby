# DocspaceApiSdk::WebhooksConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The webhook ID. |  |
| **name** | **String** | The webhook name. | [optional] |
| **uri** | **String** | The webhook URI. | [optional] |
| **enabled** | **Boolean** | Specifies if the webhooks are enabled or not. | [optional] |
| **ssl** | **Boolean** | The webhook SSL verification (enabled or not). | [optional] |
| **triggers** | [**WebhookTrigger**](WebhookTrigger.md) |  | [optional] |
| **target_id** | **String** | The webhook target ID. | [optional] |
| **created_by** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] |
| **created_on** | **Time** | The date and time when the webhook was created. | [optional] |
| **modified_by** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] |
| **modified_on** | **Time** | The date and time when the webhook was modified. | [optional] |
| **last_failure_on** | **Time** | The date and time of the webhook last failure. | [optional] |
| **last_failure_content** | **String** | The webhook last failure content. | [optional] |
| **last_success_on** | **Time** | The date and time of the webhook last success. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebhooksConfigDto.new(
  id: 1,
  name: John,
  uri: https://example.com,
  enabled: true,
  ssl: true,
  triggers: null,
  target_id: 00000000-0000-0000-0000-000000000001,
  created_by: null,
  created_on: 2024-01-15T10:30Z,
  modified_by: null,
  modified_on: 2024-01-15T10:30Z,
  last_failure_on: 2024-01-15T10:30Z,
  last_failure_content: example value,
  last_success_on: 2024-01-15T10:30Z
)
```
