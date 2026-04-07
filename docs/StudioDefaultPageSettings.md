# DocspaceApiSdk::StudioDefaultPageSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_folder_type** | [**FolderType**](FolderType.md) |  | [optional] |
| **last_modified** | **Time** | The timestamp indicating when the settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StudioDefaultPageSettings.new(
  default_folder_type: null,
  last_modified: 1990-01-01T00:00Z
)
```
