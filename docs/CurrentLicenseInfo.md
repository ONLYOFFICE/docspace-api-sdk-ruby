# DocspaceApiSdk::CurrentLicenseInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trial** | **Boolean** | Whether the portal is on a trial rather than a paid subscription. A trial expires at `dueDate` and is not  extended by paying - a plan has to be bought instead. |  |
| **due_date** | **Time** | The day the subscription runs out, with the time of day cut off. The largest value a date can hold means  it never runs out, which is how a free or unlimited plan is expressed. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CurrentLicenseInfo.new(
  trial: false,
  due_date: 2025-06-15T10:30:00.0000000Z
)
```
