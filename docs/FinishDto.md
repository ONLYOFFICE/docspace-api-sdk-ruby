# DocspaceApiSdk::FinishDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_send_welcome_email** | **Boolean** | Whether every imported account that has not been activated yet is mailed its activation link. Setting it  requires the finished job to still be in the queue, so the import must not have been cleared first; the  letters go out again on each call, and already active accounts are skipped either way. Setting it false ends  the import quietly and leaves inviting those people for later. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FinishDto.new(
  is_send_welcome_email: true
)
```
