# DocspaceApiSdk::RoomSecurityDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **members** | [**Array&lt;FileShareDto&gt;**](FileShareDto.md) | The access entries of the subjects named in the request, read back after the change was applied. A subject the  caller may not see is missing from it, so comparing this list with the request is the way to learn who was  skipped; it is null when nothing was applied at all. | [optional] |
| **warning** | **String** | The reason the first subject that could not be handled was skipped, in the language of the request, while the  rest of the list was still applied. Null when every named subject went through. The text is meant to be shown  to a person, not matched against. | [optional] |
| **error** | [**RoomSecurityError**](RoomSecurityError.md) | Reports the one case in which nothing at all was changed: a member being removed still holds a role in a form  of the room, and the request did not ask to remove them anyway. Repeat the call with `force` to remove them  together with the role. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomSecurityDto.new(
  members: [{access=10, isOwner=false, subjectType=0}],
  warning: The maximum number of links is 10,
  error: null
)
```
