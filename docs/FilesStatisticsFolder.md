# DocspaceApiSdk::FilesStatisticsFolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The folder title. | [optional] |
| **used_space** | **Integer** | The used space in the folder. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FilesStatisticsFolder.new(
  title: My Documents,
  used_space: 1048576
)
```
