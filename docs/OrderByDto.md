# DocspaceApiSdk::OrderByDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_asc** | **Boolean** | Specifies if the order is ascending. | [optional] |
| **property** | [**SortedByType**](SortedByType.md) | The parameters by which the files will be sorted. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::OrderByDto.new(
  is_asc: true,
  property: null
)
```
