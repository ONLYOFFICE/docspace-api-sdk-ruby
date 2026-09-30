# DocspaceApiSdk::TfaValidateRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The code to check - either one from the authenticator application or one of the account's unused backup  codes, which is spent by the check. A wrong code is refused with 400 and counts against the portal login  attempt limit. |  |
| **session** | **Boolean** | Whether the sign-in that follows is tied to the browser session. When it is, the session ends with the  browser rather than lasting for the portal session lifetime. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TfaValidateRequestsDto.new(
  code: 123456,
  session: true
)
```
