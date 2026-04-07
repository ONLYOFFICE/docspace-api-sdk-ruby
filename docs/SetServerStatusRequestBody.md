# DocspaceApiSdk::SetServerStatusRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Set to true to enable the server (making it available for room assignment), or false to disable it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetServerStatusRequestBody.new(
  enabled: true
)
```
