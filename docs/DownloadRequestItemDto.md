# DocspaceApiSdk::DownloadRequestItemDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | [**DownloadRequestItemDtoKey**](DownloadRequestItemDtoKey.md) |  |  |
| **value** | **String** | The target format or conversion type for the file download. |  |
| **password** | **String** | The optional password for accessing protected files. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DownloadRequestItemDto.new(
  key: null,
  value: pdf,
  password: password123
)
```
