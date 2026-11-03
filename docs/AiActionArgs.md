# DocspaceApiSdk::AiActionArgs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tools** | [**Array&lt;AiMCPItem&gt;**](AiMCPItem.md) | Extra tools offered to the model for this request. | [optional] |
| **is_reasoning** | **Boolean** | Legacy extended-thinking switch; stands for `medium`. `reasoningLevel` wins when both are set. | [optional] |
| **reasoning_level** | [**AiReasoningLevel**](AiReasoningLevel.md) | Depth of extended thinking for the round; providers clamp it to what the model accepts. | [optional] |
| **prompt** | [**AiActionArgsPrompt**](AiActionArgsPrompt.md) |  | [optional] |
| **tool_instructions** | **Hash&lt;String, String&gt;** | Usage notes of the MCP servers the caller holds the connection to, keyed by server type; folded into the system prompt as advisory text. | [optional] |
| **context_rooms** | [**Array&lt;AiContextRoomRef&gt;**](AiContextRoomRef.md) | Instructions rooms connected to the chat as context, each with the skills the round may use. | [optional] |
| **knowledge_rooms** | [**Array&lt;AiKnowledgeRoomRef&gt;**](AiKnowledgeRoomRef.md) | Knowledge rooms connected to the chat; the knowledge search tool of the round is limited to them. Each `id` has to be a DocSpace room id. | [optional] |
| **knowledge_room** | [**AiKnowledgeRoomRef**](AiKnowledgeRoomRef.md) | A single knowledge room, as an older client sends it. Read only when `knowledgeRooms` is absent; send `knowledgeRooms` instead. | [optional] |
| **folder_context** | [**AiFolderContextRef**](AiFolderContextRef.md) | The folder connected to the chat as the round's context. It becomes the location the model is told the user works in, and the entry the round is attributed to. | [optional] |
| **entity_id** | **String** | The entry the round is attributed to. A hint, resolved against the caller's own access. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiActionArgs.new(
  tools: [],
  is_reasoning: false,
  reasoning_level: null,
  prompt: null,
  tool_instructions: null,
  context_rooms: null,
  knowledge_rooms: null,
  knowledge_room: null,
  folder_context: null,
  entity_id: null
)
```
