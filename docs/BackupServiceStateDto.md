# DocspaceApiSdk::BackupServiceStateDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Specifies whether the paid backup service is switched on for this portal, which is a setting of its  wallet rather than the health of the backup service. While it is true, backups beyond the free  monthly allowance are charged to the wallet. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BackupServiceStateDto.new(
  enabled: true
)
```
