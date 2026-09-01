# DocspaceApiSdk::Quota

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The quota ID. | [optional] |
| **quantity** | **Integer** | The quota quantity. | [optional] |
| **wallet** | **Boolean** | The quota applies to the wallet or not | [optional] |
| **due_date** | **Time** | The quota due date. | [optional] |
| **next_quantity** | **Integer** | The quota next quantity. | [optional] |
| **additional** | **Boolean** | Indicates whether the quota is primary or additional. | [optional] |
| **next_quota** | **Integer** | The quota ID to switch to at the next period. | [optional] |
| **state** | [**QuotaState**](QuotaState.md) | The quota state. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Quota.new(
  id: ,
  quantity: 50,
  wallet: false,
  due_date: 2026-03-31T00:00:00Z,
  next_quantity: 100,
  additional: false,
  next_quota: ,
  state: null
)
```
