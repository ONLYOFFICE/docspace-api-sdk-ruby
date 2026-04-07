# DocspaceApiSdk::Quota

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The quota ID. | [optional] |
| **quantity** | **Integer** | The quota quantity. | [optional] |
| **wallet** | **Boolean** | The quota applies to the wallet or not | [optional] |
| **due_date** | **Time** | The quota due date. | [optional] |
| **next_quantity** | **Integer** | The quota next quantity. | [optional] |
| **state** | [**QuotaState**](QuotaState.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Quota.new(
  id: null,
  quantity: 50,
  wallet: false,
  due_date: 2026-03-31T00:00Z,
  next_quantity: 100,
  state: null
)
```
