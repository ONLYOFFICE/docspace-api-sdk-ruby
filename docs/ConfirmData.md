# DocspaceApiSdk::ConfirmData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The address the confirmation link was issued for. It has to be the same address the key was signed with, and  a value that is not an email address fails the request with 400. | [optional] |
| **first** | **Boolean** | Whether the link is being followed for the first time, taken from the `first` parameter of the confirmation  URL. It is part of what the key was signed over, so passing a different value invalidates the key rather than  changing behaviour. | [optional] |
| **key** | **String** | The `key` parameter of the confirmation URL, copied verbatim. It is bound to the address and to the moment it  was issued, so it stops being accepted once the portal email key lifetime has passed. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConfirmData.new(
  email: user@example.com,
  first: true,
  key: abc123def456
)
```
