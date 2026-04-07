# DocspaceApiSdk::ChatImageMultimodalSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **formats** | **Array&lt;String&gt;** | The supported image formats. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChatImageMultimodalSettingsDto.new(
  formats: [".jpeg",".gif"]
)
```
