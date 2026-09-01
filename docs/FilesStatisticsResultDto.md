# DocspaceApiSdk::FilesStatisticsResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **my_documents_used_space** | [**FilesStatisticsFolder**](FilesStatisticsFolder.md) | The used space of files in the \\My Documents\\ section. | [optional] |
| **trash_used_space** | [**FilesStatisticsFolder**](FilesStatisticsFolder.md) | The used space of files in the \\Trash\\ section. | [optional] |
| **archive_used_space** | [**FilesStatisticsFolder**](FilesStatisticsFolder.md) | The used space of files in the \\Archive\\ section. | [optional] |
| **rooms_used_space** | [**FilesStatisticsFolder**](FilesStatisticsFolder.md) | The used space of files in the \\Rooms\\ section. | [optional] |
| **ai_agents_used_space** | [**FilesStatisticsFolder**](FilesStatisticsFolder.md) | The used space of files in the \\AI agents\\ section. | [optional] |
| **forms_used_space** | [**FilesStatisticsFolder**](FilesStatisticsFolder.md) | The used space of files in the \\Forms\\ section. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FilesStatisticsResultDto.new(
  my_documents_used_space: null,
  trash_used_space: null,
  archive_used_space: null,
  rooms_used_space: null,
  ai_agents_used_space: null,
  forms_used_space: null
)
```
