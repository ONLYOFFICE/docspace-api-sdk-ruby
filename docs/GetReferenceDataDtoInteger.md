# DocspaceApiSdk::GetReferenceDataDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_key** | **String** | The unique document identifier used by the service to get a link to the file. |  |
| **instance_id** | **String** | The unique system identifier. |  |
| **source_file_id** | **Integer** | The source file ID. | [optional] |
| **path** | **String** | The file name or relative path for the formula editor. | [optional] |
| **link** | **String** | The file link. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::GetReferenceDataDtoInteger.new(
  file_key: doc_key_123,
  instance_id: doc_key_123,
  source_file_id: 1,
  path: My Document,
  link: https://example.com
)
```
