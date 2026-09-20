# DocspaceApiSdk::TurnOnAdminMessageSettingsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **turn_on** | **Boolean** | Whether the form is offered. Switching it off hides the form for everybody and makes the operation that  submits it refuse new messages; letters already sent are untouched. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TurnOnAdminMessageSettingsRequestDto.new(
  turn_on: true
)
```
