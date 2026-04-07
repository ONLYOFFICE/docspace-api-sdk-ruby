# DocspaceApiSdk::AiSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_search_enabled** | **Boolean** | Indicates whether web search is enabled for AI chat sessions. | [optional] |
| **web_search_need_reset** | **Boolean** | Indicates whether the web search API key needs to be reconfigured. | [optional] |
| **vectorization_enabled** | **Boolean** | Indicates whether document vectorization is enabled. | [optional] |
| **vectorization_need_reset** | **Boolean** | Indicates whether the embedding provider API key needs to be reconfigured. | [optional] |
| **ai_ready** | **Boolean** | Indicates whether the AI subsystem is fully configured and operational. | [optional] |
| **ai_ready_need_reset** | **Boolean** | Indicates whether the AI provider API key needs to be reconfigured. | [optional] |
| **portal_mcp_server_id** | **String** | The unique identifier of the portal-level MCP server, if configured. | [optional] |
| **embedding_model** | **String** | The name of the embedding model used for document vectorization. |  |
| **model_aliases** | **Hash&lt;String, String&gt;** | Mapping of model identifiers to human-readable aliases. |  |
| **knowledge_search_tool_name** | **String** | The tool name used by the AI assistant for knowledge base search. |  |
| **web_search_tool_name** | **String** | The tool name used by the AI assistant for web search. |  |
| **web_crawling_tool_name** | **String** | The tool name used by the AI assistant for web page crawling. |  |
| **generate_docx_tool_name** | **String** | The tool name used by the AI to launch docx creation in the editor. |  |
| **generate_form_tool_name** | **String** | The tool name used by the AI assistant to launch form creation in the editor. |  |
| **generate_presentation_tool_name** | **String** | The tool name used by the AI assistant to launch presentation creation in the editor. |  |
| **system_ai_enabled** | **Boolean** | Indicates whether the system-level AI provider is enabled. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiSettingsDto.new(
  web_search_enabled: true,
  web_search_need_reset: false,
  vectorization_enabled: true,
  vectorization_need_reset: false,
  ai_ready: true,
  ai_ready_need_reset: false,
  portal_mcp_server_id: 00000000-0000-0000-0000-000000000000,
  embedding_model: text-embedding-3-small,
  model_aliases: {"gpt-5.2":"GPT-5.2","claude-sonnet-4-20250514":"Claude Sonnet 4"},
  knowledge_search_tool_name: knowledge_search,
  web_search_tool_name: web_search,
  web_crawling_tool_name: web_crawling,
  generate_docx_tool_name: generate_docx,
  generate_form_tool_name: generate_form,
  generate_presentation_tool_name: generate_presentation,
  system_ai_enabled: true
)
```
