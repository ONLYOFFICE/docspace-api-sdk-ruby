# DocspaceApiSdk::DocsCloudServerInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | The server version. | [optional] |
| **package_type** | **String** | The server package type (Open Source, Enterprise Edition or Developer Edition). | [optional] |
| **date** | **Time** | The server build date. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudServerInfo.new(
  version: 8.0.0,
  package_type: Enterprise Edition,
  date: 2024-01-15T10:30:00Z
)
```
