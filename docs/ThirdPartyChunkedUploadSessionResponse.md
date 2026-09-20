# DocspaceApiSdk::ThirdPartyChunkedUploadSessionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of the reserved upload, repeated in the path of every call that follows it - the chunk uploads,  the finalize and the abort. It is thirty-two hexadecimal characters without separators, and it is the only  thing the server checks, so anyone holding it can write into this upload. | [optional] |
| **path** | **Array&lt;String&gt;** | The chain of folders leading to the destination, outermost first and the destination itself last, with folders  the caller cannot read left out. An answer that reports a stored part carries the destination folder alone  instead of the whole chain. | [optional] |
| **created** | **Time** | The moment the upload was reserved, in UTC. | [optional] |
| **expired** | **Time** | The moment the reservation lapses and the parts buffered for it are dropped, in UTC. It is a gap rather than a  deadline for the whole transfer: every accepted part pushes it twelve hours past that part, so only a long  silence loses the upload. | [optional] |
| **location** | **String** | The absolute address of the separate chunk handler that also accepts the parts of this upload, kept for  clients written against it. A caller working through this API does not need it and sends the parts to the  session operations instead. | [optional] |
| **bytes_total** | **Integer** | The size in bytes that was declared when the upload was reserved, echoed back. It is what the arriving parts  are counted against to decide the file is complete, not the amount received so far. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThirdPartyChunkedUploadSessionResponse.new(
  id: 1b6a2ee1f2a04c6f9bd2cbf0e0f23a54,
  path: [1, 5, 12],
  created: 2026-09-11T10:30:00Z,
  expired: 2026-09-11T22:30:00Z,
  location: https://example.com/ChunkedUploader.ashx?uid=1b6a2ee1f2a04c6f9bd2cbf0e0f23a54,
  bytes_total: 10485760
)
```
