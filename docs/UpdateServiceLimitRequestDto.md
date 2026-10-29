# DocspaceApiSdk::UpdateServiceLimitRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the service limit, as returned in `id` by the operation that created it or by the reads of limits. |  |
| **amount_value** | **Float** | The most money the AI services may cost per period, in their currency. Zero blocks the AI services completely. | [optional] |
| **quantity_value** | **Integer** | The largest quantity the AI services may consume per period, in their common unit. Zero blocks the AI services  completely. | [optional] |
| **enabled** | **Boolean** | Whether the limit is in force: false switches it off at once, true switches it back on. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateServiceLimitRequestDto.new(
  id: 42,
  amount_value: 100,
  quantity_value: 2000,
  enabled: true
)
```
