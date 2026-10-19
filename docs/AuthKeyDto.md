# DocspaceApiSdk::AuthKeyDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The authorization key name. |  |
| **value** | **String** | The authorization key value. |  |
| **title** | **String** | The authorization key title. | [optional] |
| **type** | **String** | The field type: text, password, select, toggle. | [optional] |
| **options** | **Array&lt;String&gt;** | The list of options for select type fields. | [optional] |
| **depends_on** | **String** | The name of another key this field depends on for visibility. | [optional] |
| **depends_on_value** | **String** | The value of the `dependsOn` key that makes this field visible. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AuthKeyDto.new(
  name: Auth-Key,
  value: abc123xyz456,
  title: API key,
  type: password,
  options: [s3, gcs],
  depends_on: storageType,
  depends_on_value: s3
)
```
