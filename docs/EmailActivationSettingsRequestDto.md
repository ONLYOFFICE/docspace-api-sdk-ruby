# DocspaceApiSdk::EmailActivationSettingsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **show** | **Boolean** | Whether the reminder is shown; send false to dismiss it for the calling user. | [optional] |
| **last_modified** | **Time** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EmailActivationSettingsRequestDto.new(
  show: false,
  last_modified: 2026-01-01T10:00:00
)
```
