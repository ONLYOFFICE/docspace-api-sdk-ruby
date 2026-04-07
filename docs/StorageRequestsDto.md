# DocspaceApiSdk::StorageRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_module** | **String** | The name for the storage module to be configured. |  |
| **props** | [**Array&lt;ItemKeyValuePairStringString&gt;**](ItemKeyValuePairStringString.md) | The list of configuration key-value pairs for the storage module. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StorageRequestsDto.new(
  _module: default,
  props: ["item1","item2"]
)
```
