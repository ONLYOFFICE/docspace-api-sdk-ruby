# DocspaceApiSdk::AiAgentsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile id bound to the agent. |  |
| **prompt** | **String** | Agent system prompt; stored as the room's `chatSettings.prompt`. |  |
| **private** | **Boolean** | Whether the agent room is private. | [optional] |
| **share** | **Array&lt;Object&gt;** | Initial share entries (`FileShareParams`). | [optional] |
| **attach_default_tools** | **Boolean** | Whether to attach the default DocSpace MCP tool server. | [optional] |
| **title** | **String** | Agent (room) title. | [optional] |
| **quota** | **Float** | Room quota in bytes. | [optional] |
| **indexing** | **Boolean** | Whether room content is indexed for search. | [optional] |
| **deny_download** | **Boolean** | Whether downloading room content is denied. | [optional] |
| **lifetime** | **Object** | Room data lifetime policy (`RoomDataLifetimeDto`). | [optional] |
| **watermark** | **Object** | Watermark settings (`WatermarkRequestDto`). | [optional] |
| **logo** | **Object** | Room logo (`LogoRequest`). | [optional] |
| **tags** | **Array&lt;String&gt;** | Room tags. | [optional] |
| **color** | **String** | Room accent color. | [optional] |
| **cover** | **String** | Room cover image id. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAgentsCreateRequest.new(
  profile_id: null,
  prompt: null,
  private: null,
  share: null,
  attach_default_tools: null,
  title: null,
  quota: null,
  indexing: null,
  deny_download: null,
  lifetime: null,
  watermark: null,
  logo: null,
  tags: null,
  color: null,
  cover: null
)
```
