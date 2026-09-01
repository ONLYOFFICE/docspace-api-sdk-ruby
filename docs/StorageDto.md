# DocspaceApiSdk::StorageDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The storage ID. |  |
| **title** | **String** | The storage title. |  |
| **properties** | [**Array&lt;AuthKey&gt;**](AuthKey.md) | The list of storage authentication keys. | [optional] |
| **current** | **Boolean** | Specifies if this is the current portal storage or not. |  |
| **is_set** | **Boolean** | Specifies if this storage can be set or not. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StorageDto.new(
  id: storage_001,
  title: Main Storage,
  properties: [{name=ApiKey, value=12345}],
  current: true,
  is_set: true
)
```
