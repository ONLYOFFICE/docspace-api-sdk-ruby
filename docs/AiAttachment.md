# DocspaceApiSdk::AiAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Storage-assigned UUID. |  |
| **kind** | **String** | file | image. |  |
| **source** | **String** | Origin of the attachment. `user` — uploaded by the user in the composer (the default when unset, for backward compatibility). `tool` — produced by a tool call (e.g. `generate_image`). Lets the integrator's adapter route or apply policies (separate bucket, quotas, TTL, CDN) per source. | [optional] |
| **title** | **String** | Display label (filename or user-visible title). |  |
| **content** | **String** | Extracted text for files. | [optional] |
| **base64** | **String** | Base64 data URL for images. | [optional] |
| **path** | **String** | Original host file path (for files). | [optional] |
| **type** | **Float** | ONLYOFFICE file type code (for files). | [optional] |
| **message_id** | **String** | Owning message id once linked. Unset while the attachment is a draft. | [optional] |
| **thread_id** | **String** | Owning thread id once linked. Unset while the attachment is a draft. | [optional] |
| **entity_id** | **String** | Opaque scope token (entity / room) the attachment was created in. Drafts carry it so an entity switch keeps in-flight composer state isolated; once linked to a message the field is redundant with the thread's own entity binding. | [optional] |
| **created_at** | **Float** | Storage-assigned creation timestamp. |  |
| **can_analyze** | **Boolean** | Whether the attached form can be analyzed. | [optional] |
| **form_keys** | [**Array&lt;AiAttachmentFormKeysInner&gt;**](AiAttachmentFormKeysInner.md) | Keys of the fields inside the form. `key` is the field identifier, `text` its human-readable label. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAttachment.new(
  id: null,
  kind: null,
  source: null,
  title: null,
  content: null,
  base64: null,
  path: null,
  type: null,
  message_id: null,
  thread_id: null,
  entity_id: null,
  created_at: null,
  can_analyze: null,
  form_keys: null
)
```
