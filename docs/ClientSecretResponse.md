# DocspaceApiSdk::ClientSecretResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_secret** | **String** | The newly generated client secret. It replaces the previous one immediately, so every deployed copy of the client has to be updated with this value. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ClientSecretResponse.new(
  client_secret: 6c7cf17b-1bd3-47d5-94c6-be2d3570e168
)
```
