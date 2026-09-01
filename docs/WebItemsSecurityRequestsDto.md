# DocspaceApiSdk::WebItemsSecurityRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;ItemKeyValuePairStringBoolean&gt;**](ItemKeyValuePairStringBoolean.md) | The list of module security configurations. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebItemsSecurityRequestsDto.new(
  items: [item1, item2]
)
```
