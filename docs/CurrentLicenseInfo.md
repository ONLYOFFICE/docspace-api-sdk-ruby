# DocspaceApiSdk::CurrentLicenseInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trial** | **Boolean** | Specifies whether the license is trial or not. |  |
| **due_date** | **Time** | The date when the license expires. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CurrentLicenseInfo.new(
  trial: false,
  due_date: 2025-06-15T10:30:00.0000000Z
)
```
