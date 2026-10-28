# DocspaceApiSdk::MigratingApiFiles

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folders_count** | **Integer** | The number of folders. | [optional] |
| **files_count** | **Integer** | The number of files. | [optional] |
| **bytes_total** | **Integer** | The total number of bytes. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MigratingApiFiles.new(
  folders_count: 12,
  files_count: 48,
  bytes_total: 104857600
)
```
