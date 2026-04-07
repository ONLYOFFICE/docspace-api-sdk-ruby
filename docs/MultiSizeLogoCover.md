# DocspaceApiSdk::MultiSizeLogoCover

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The logo cover ID. |  |
| **data** | **Hash&lt;String, String&gt;** | The logo cover data. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MultiSizeLogoCover.new(
  id: default_cover,
  data: {"small":"base64...","medium":"base64...","large":"base64..."}
)
```
