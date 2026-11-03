# DocspaceApiSdk::AiFolderContextRef

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud** | **String** | The account the folder belongs to; `docspace` for a folder of this portal. |  |
| **id** | **String** | The folder ID. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiFolderContextRef.new(
  cloud: docspace,
  id: 1234
)
```
