# DocspaceApiSdk::DocsCloudServerConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_anonymous_support** | **Boolean** | Whether anonymous access is supported. | [optional] |
| **file_size_limit** | **Integer** | The maximum file size in bytes. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudServerConfig.new(
  is_anonymous_support: false,
  file_size_limit: 104857600
)
```
