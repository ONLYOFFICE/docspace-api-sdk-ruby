# DocspaceApiSdk::MigrationStatusDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **progress** | **Float** | The migration progress. | [optional] |
| **error** | **String** | The migration error. | [optional] |
| **parse_result** | [**MigrationApiInfo**](MigrationApiInfo.md) |  | [optional] |
| **is_completed** | **Boolean** | Specifies whether the migration is completed or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MigrationStatusDto.new(
  progress: 99.99,
  error: Connection failed,
  parse_result: null,
  is_completed: true
)
```
