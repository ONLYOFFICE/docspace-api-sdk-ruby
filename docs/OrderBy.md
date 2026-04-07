# DocspaceApiSdk::OrderBy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_asc** | **Boolean** | Specifies if the order is ascending. | [optional] |
| **property** | [**SortedByType**](SortedByType.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::OrderBy.new(
  is_asc: true,
  property: null
)
```
