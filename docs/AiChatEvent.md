# DocspaceApiSdk::AiChatEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Emitted once per `sendWithStream` call, immediately after the user message has been persisted by storage and before the assistant stream starts. Carries the storage-assigned `id` and `createdAt`. The UI uses it to render the user bubble — no client-side optimistic placeholder is needed, which keeps the runtime tree free of phantom nodes from index-fallback ids. |  |
| **message** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | The message the event is about, in the state it has reached. | [optional] |
| **message_id** | **String** | The storage identifier of that message. | [optional] |
| **idx** | **Float** | The zero-based position of the pending tool call within the message. | [optional] |
| **thread_id** | **String** | The thread the event belongs to. | [optional] |
| **auto_allow** | **Boolean** | The consumer should execute the tool without prompting the user. True when the tool is in the persisted always-allow list, or the tool itself opts in via `TMCPItem.requireApproval === false` (host tools default to this). For a client-side tool with a server-side engine, this lets the engine return the pending call already flagged auto-allow so the client runs it and streams the result back without a dialog round-trip. | [optional] |
| **server_executed** | **Boolean** | Set when the tool is served by a server-side system source: the consumer must NOT execute it locally — only show the approval UI (unless `autoAllow`) and resume via `approveToolCall` (no `result` needed) / `denyToolCall`. The engine runs it in-engine. | [optional] |
| **title** | **String** | The generated thread title. | [optional] |
| **profile_id** | **String** | The profile that generated the title, when one was used. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiChatEvent.new(
  type: null,
  message: null,
  message_id: null,
  idx: null,
  thread_id: null,
  auto_allow: null,
  server_executed: null,
  title: null,
  profile_id: null
)
```
