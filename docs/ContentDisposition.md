# DocspaceApiSdk::ContentDisposition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disposition_type** | **String** |  | [optional] |
| **parameters** | **Array&lt;Object&gt;** |  | [optional][readonly] |
| **file_name** | **String** |  | [optional] |
| **creation_date** | **Time** |  | [optional] |
| **modification_date** | **Time** |  | [optional] |
| **inline** | **Boolean** |  | [optional] |
| **read_date** | **Time** |  | [optional] |
| **size** | **Integer** |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ContentDisposition.new(
  disposition_type: null,
  parameters: null,
  file_name: null,
  creation_date: null,
  modification_date: null,
  inline: null,
  read_date: null,
  size: null
)
```
