# DocspaceApiSdk::TfaValidateRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The verification code provided by the user. |  |
| **session** | **Boolean** | Specifies whether the authentication is session-based. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TfaValidateRequestsDto.new(
  code: 123456,
  session: true
)
```
