# DocspaceApiSdk::AceShortWrapper

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | The name of the user the document will be shared with. | [optional] |
| **permissions** | **String** | The access rights for the user with the name above.  Can be Full Access, Read Only, or Deny Access. | [optional] |
| **is_link** | **Boolean** | Specifies whether to change the user icon to the link icon. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AceShortWrapper.new(
  user: John Doe,
  permissions: Full Access,
  is_link: false
)
```
