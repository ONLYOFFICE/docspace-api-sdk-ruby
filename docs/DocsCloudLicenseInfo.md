# DocspaceApiSdk::DocsCloudLicenseInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **valid** | **Time** | The date and time until which the license is valid. | [optional] |
| **trial** | **Boolean** | Whether the license is a trial. | [optional] |
| **build_date** | **Time** | The license build date. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudLicenseInfo.new(
  valid: 2024-01-15T10:30:00Z,
  trial: false,
  build_date: 2024-01-15T10:30:00Z
)
```
