# DocspaceApiSdk::SalesRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_name** | **String** | The name the sales team should address the reply to. It is sent as written and is not matched against any  portal account; an empty value fails the request with 400. |  |
| **email** | **String** | The address the answer is sent to. It has to be a well-formed email address and need not be the caller portal  address; an empty or malformed value fails the request with 400. |  |
| **message** | **String** | What is being asked of the sales team - a quote, an invoice, or a plan that cannot be bought online. An empty  value fails the request with 400. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SalesRequestsDto.new(
  user_name: John Doe,
  email: user@example.com,
  message: I would like to inquire about pricing
)
```
