# DocspaceApiSdk::StorageSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_module** | **String** | The storage name. | [optional] |
| **props** | **Hash&lt;String, String&gt;** | The storage properties. | [optional] |
| **last_modified** | **Time** | The date and time when the storage settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StorageSettings.new(
  _module: LocalStorage,
  props: {region=eu-central-1, bucket=tenant-files},
  last_modified: 2025-01-01T12:00:00Z
)
```
