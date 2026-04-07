# DocspaceApiSdk::ConnectServerRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | OAuth authorization code received from the provider's redirect. Used to exchange for access and refresh tokens. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConnectServerRequestBody.new(
  code: abc123def456
)
```
