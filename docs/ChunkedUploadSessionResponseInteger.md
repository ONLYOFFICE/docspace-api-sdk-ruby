# DocspaceApiSdk::ChunkedUploadSessionResponseInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the entity. | [optional] |
| **path** | **Array&lt;Integer&gt;** | Represents the hierarchical path of folders associated with a chunked upload session. | [optional] |
| **created** | **Time** | The timestamp indicating when the chunked upload session was created. | [optional] |
| **expired** | **Time** | The date and time when the chunked upload session is set to expire. | [optional] |
| **location** | **String** | Represents the URI or path of the chunked upload session's current location. | [optional] |
| **bytes_total** | **Integer** | The total size, in bytes, of the file being uploaded in the chunked upload session. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChunkedUploadSessionResponseInteger.new(
  id: 0af4bc0d-9a9d-450c-a72b-f14d9ac55c89,
  path: [123, 456, 789],
  created: 2024-01-15T10:30:00Z,
  expired: 2024-01-15T11:30:00Z,
  location: https://example.com/products/files/httphandlers/filehandler.ashx?action=upload,
  bytes_total: 10485760
)
```
