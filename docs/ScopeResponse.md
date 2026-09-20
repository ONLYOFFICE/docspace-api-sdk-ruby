# DocspaceApiSdk::ScopeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The scope exactly as it is written in an authorization request, for example files:read or openid. | [optional] |
| **group** | **String** | The area of the portal the scope belongs to, which is what groups the scopes on the consent screen: files, rooms, contacts, profiles or openid. | [optional] |
| **type** | **String** | What the scope allows inside its group: read for read-only access, write for changes, and openid for the identity scope itself. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ScopeResponse.new(
  name: files:read,
  group: files,
  type: read
)
```
