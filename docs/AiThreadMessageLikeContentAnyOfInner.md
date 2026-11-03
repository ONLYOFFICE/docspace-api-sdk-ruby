# DocspaceApiSdk::AiThreadMessageLikeContentAnyOfInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Part kind: `text`, `reasoning`, `source`, `image`, `file`, `audio`, `data` or `tool-call`. |  |
| **text** | **String** | The text of a `text` or `reasoning` part. | [optional] |
| **parent_id** | **String** | Id of the part this one belongs to, on `text`, `reasoning`, `source` and `tool-call` parts. On a `reasoning` part the chat library keeps the provider's thinking signature here. | [optional] |
| **source_type** | **String** | A `source` part's source kind; always `url`. | [optional] |
| **id** | **String** | A `source` part's id. | [optional] |
| **url** | **String** | A `source` part's URL. | [optional] |
| **title** | **String** | A `source` part's title. | [optional] |
| **image** | **String** | An `image` part's picture, as a URL (usually a `data:` URL). For an image the user attached, a JSON string `{ ref, title, kind: image }` naming the stored attachment instead. | [optional] |
| **mime_type** | **String** | A `file` part's media type. For a file the user attached, a JSON string `{ ref, title, kind: file, path, type }` naming the stored attachment instead - the chat library carries the reference here. | [optional] |
| **data** | **String** | A `file` part's content; empty when the part references an attachment. (A `data` part would carry its payload here too, as any JSON value; neither the chat library nor this service writes one.) | [optional] |
| **filename** | **String** | The file name of a `file` or `image` part. | [optional] |
| **name** | **String** | An `image` part's display name, or a `data` part's name. | [optional] |
| **audio** | [**AiThreadMessageLikeContentAnyOfInnerAudio**](AiThreadMessageLikeContentAnyOfInnerAudio.md) |  | [optional] |
| **tool_call_id** | **String** | A `tool-call` part's call id. | [optional] |
| **tool_name** | **String** | A `tool-call` part's tool name. | [optional] |
| **args** | **Object** | A `tool-call` part's arguments. | [optional] |
| **args_text** | **String** | A `tool-call` part's arguments as the model streamed them, JSON text. | [optional] |
| **result** | **Object** |  | [optional] |
| **is_error** | **Boolean** | Whether a `tool-call` part's result is an error. | [optional] |
| **artifact** | **Object** |  | [optional] |
| **interrupt** | [**AiThreadMessageLikeContentAnyOfInnerInterrupt**](AiThreadMessageLikeContentAnyOfInnerInterrupt.md) |  | [optional] |
| **messages** | **Array&lt;Object&gt;** | Messages of a sub-agent run inside a `tool-call` part. | [optional] |
| **metadata** | **Object** | Provider-specific data of a `tool-call` part - for a Gemini call, `{ thoughtSignature }`, which has to be sent back with the call. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiThreadMessageLikeContentAnyOfInner.new(
  type: null,
  text: null,
  parent_id: null,
  source_type: null,
  id: null,
  url: null,
  title: null,
  image: null,
  mime_type: null,
  data: null,
  filename: null,
  name: null,
  audio: null,
  tool_call_id: null,
  tool_name: null,
  args: null,
  args_text: null,
  result: null,
  is_error: null,
  artifact: null,
  interrupt: null,
  messages: null,
  metadata: null
)
```
