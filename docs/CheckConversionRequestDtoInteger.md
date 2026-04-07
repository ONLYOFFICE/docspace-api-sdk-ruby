# DocspaceApiSdk::CheckConversionRequestDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID to check conversion proccess. | [optional] |
| **sync** | **Boolean** | Specifies if the conversion process is synchronous or not. | [optional] |
| **start_convert** | **Boolean** | Specifies whether to start a conversion process or not. | [optional] |
| **version** | **Integer** | The file version that is converted. | [optional] |
| **password** | **String** | The password of the converted file. | [optional] |
| **output_type** | **String** | The conversion output type. | [optional] |
| **create_new_if_exist** | **Boolean** | Specifies whether to create a new file if it exists or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CheckConversionRequestDtoInteger.new(
  file_id: 1,
  sync: false,
  start_convert: true,
  version: 1,
  password: password123,
  output_type: pdf,
  create_new_if_exist: false
)
```
