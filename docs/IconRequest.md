# DocspaceApiSdk::IconRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **icon** | **String** | The identifier of one of the built-in covers listed by `GET api/2.0/files/rooms/covers`. An empty string  clears the icon of the group, null or a missing member keeps the current one, and anything else is refused. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::IconRequest.new(
  icon: heart
)
```
