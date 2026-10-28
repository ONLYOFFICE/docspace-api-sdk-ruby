# DocspaceApiSdk::BackupsCountResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **free** | **Integer** | The number of backups covered by the free monthly allowance. | [optional] |
| **paid** | **Integer** | The number of backups charged to the portal wallet. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BackupsCountResultDto.new(
  free: 3,
  paid: 5
)
```
