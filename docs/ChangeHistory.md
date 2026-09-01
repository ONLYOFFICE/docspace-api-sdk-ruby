# DocspaceApiSdk::ChangeHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** | The file version of the change history. |  |
| **continue_version** | **Boolean** | Specifies whether to start a new version or continue revision of the change history. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChangeHistory.new(
  version: 1,
  continue_version: false
)
```
