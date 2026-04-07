# DocspaceApiSdk::CreateAgentRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The room name. |  |
| **quota** | **Integer** | The room quota. | [optional] |
| **indexing** | **Boolean** | Specifies whether to create a room with indexing. | [optional] |
| **deny_download** | **Boolean** | Specifies whether to deny downloads from the room. | [optional] |
| **lifetime** | [**RoomDataLifetimeDto**](RoomDataLifetimeDto.md) |  | [optional] |
| **watermark** | [**WatermarkRequestDto**](WatermarkRequestDto.md) |  | [optional] |
| **logo** | [**LogoRequest**](LogoRequest.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | The list of tags. | [optional] |
| **color** | **String** | The room color. | [optional] |
| **cover** | **String** | The room cover. | [optional] |
| **private** | **Boolean** | Specifies whether the room to be created is private or not. | [optional] |
| **share** | [**Array&lt;FileShareParams&gt;**](FileShareParams.md) | The collection of sharing parameters. | [optional] |
| **chat_settings** | [**ChatSettings**](ChatSettings.md) |  |  |
| **attach_default_tools** | **Boolean** | Specifies whether to attach default tools to the agent or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateAgentRequestDto.new(
  title: My AI Agent Room,
  quota: 10485760,
  indexing: true,
  deny_download: false,
  lifetime: null,
  watermark: null,
  logo: null,
  tags: ["ai","assistant"],
  color: FF6600,
  cover: cover1.jpg,
  private: false,
  share: [{"shareId":"user@example.com","access":1}],
  chat_settings: null,
  attach_default_tools: true
)
```
