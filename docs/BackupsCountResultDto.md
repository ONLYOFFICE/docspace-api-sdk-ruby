# DocspaceApiSdk::BackupsCountResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **free** | **Integer** | The number of free backups. | [optional] |
| **paid** | **Integer** | The number of paid backups. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BackupsCountResultDto.new(
  free: 3,
  paid: 5
)
```
