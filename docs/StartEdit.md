# DocspaceApiSdk::StartEdit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **editing_alone** | **Boolean** | Claims the file for this caller alone: the session is opened without asking the document service to track  co-editing, and the call is refused when anybody else already has the file open. Left off, an ordinary  co-editing session is opened and others may join it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StartEdit.new(
  editing_alone: false
)
```
