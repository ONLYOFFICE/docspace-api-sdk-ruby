# DocspaceApiSdk::StorageSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_module** | **String** | The storage module, or `null` when the built-in storage is used. | [optional] |
| **props** | **Hash&lt;String, String&gt;** | The connection properties stored for the module. | [optional] |
| **last_modified** | **Time** | When the settings were last stored. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StorageSettingsDto.new(
  _module: S3,
  props: {region=eu-central-1, bucket=tenant-files},
  last_modified: 2025-01-01T12:00:00Z
)
```
