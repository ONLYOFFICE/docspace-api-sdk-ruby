# DocspaceApiSdk::FilesStatisticsResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **my_documents_used_space** | [**FilesStatisticsFolder**](FilesStatisticsFolder.md) |  | [optional] |
| **trash_used_space** | [**FilesStatisticsFolder**](FilesStatisticsFolder.md) |  | [optional] |
| **archive_used_space** | [**FilesStatisticsFolder**](FilesStatisticsFolder.md) |  | [optional] |
| **rooms_used_space** | [**FilesStatisticsFolder**](FilesStatisticsFolder.md) |  | [optional] |
| **ai_agents_used_space** | [**FilesStatisticsFolder**](FilesStatisticsFolder.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FilesStatisticsResultDto.new(
  my_documents_used_space: null,
  trash_used_space: null,
  archive_used_space: null,
  rooms_used_space: null,
  ai_agents_used_space: null
)
```
