# DocspaceApiSdk::AiAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Storage-assigned UUID. |  |
| **kind** | **String** | file | image. |  |
| **source** | **String** | Where the attachment came from: `user` - attached by the user (also when unset); `tool` - produced by a tool call (for example `generate_image`). | [optional] |
| **title** | **String** | Display label (filename or user-visible title). |  |
| **content** | **String** | Extracted text for files. | [optional] |
| **base64** | **String** | Base64 data URL for images. | [optional] |
| **path** | **String** | Original host file path (for files). | [optional] |
| **type** | **Float** | ONLYOFFICE file type code (for files). | [optional] |
| **message_id** | **String** | Owning message id once linked. Unset while the attachment is a draft. | [optional] |
| **thread_id** | **String** | Owning thread id once linked. Unset while the attachment is a draft. | [optional] |
| **entity_id** | **String** | The room or folder the attachment was created in, as an opaque token; once the attachment is bound to a message it repeats the thread's own scope. | [optional] |
| **created_at** | **Float** | Storage-assigned creation timestamp. |  |
| **can_analyze** | **Boolean** | Whether the attached form can be analyzed. | [optional] |
| **form_keys** | [**Array&lt;AiAttachmentFormKeysInner&gt;**](AiAttachmentFormKeysInner.md) | Keys of the fields inside the form. `key` is the field identifier, `text` its human-readable label. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAttachment.new(
  id: 55555555-5555-5555-5555-555555555555,
  kind: file,
  source: user,
  title: contract.docx,
  content: This agreement is made on 1 January 2026 between …,
  base64: null,
  path: file_1234,
  type: 7,
  message_id: 22222222-2222-2222-2222-222222222222,
  thread_id: 11111111-1111-1111-1111-111111111111,
  entity_id: 1234,
  created_at: 1767225600000,
  can_analyze: false,
  form_keys: []
)
```
