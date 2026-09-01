# DocspaceApiSdk::SalesRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_name** | **String** | The name of the user submitting the sales request. |  |
| **email** | **String** | The contact email address for the sales inquiry. |  |
| **message** | **String** | The details of the sales inquiry or payment request. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SalesRequestsDto.new(
  user_name: John Doe,
  email: user@example.com,
  message: I would like to inquire about pricing
)
```
