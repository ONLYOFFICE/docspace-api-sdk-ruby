# DocspaceApiSdk::TerminateRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user whose job is addressed. For a terminate operation it has to be the same ID that was passed  when the job was started. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TerminateRequestDto.new(
  user_id: 00000000-0000-0000-0000-000000000000
)
```
