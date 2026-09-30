# DocspaceApiSdk::TimeBound

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** | The date and time when the period starts. | [optional] |
| **end_date** | **Time** | The date and time when the period ends. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TimeBound.new(
  start_date: 2024-01-15T10:30:00Z,
  end_date: 2024-01-15T10:30:00Z
)
```
