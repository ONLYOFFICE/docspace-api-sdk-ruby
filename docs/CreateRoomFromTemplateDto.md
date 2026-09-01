# DocspaceApiSdk::CreateRoomFromTemplateDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | The template ID from which the room to be created. |  |
| **title** | **String** | The room title. |  |
| **logo** | [**LogoRequest**](LogoRequest.md) | The logo request parameters. | [optional] |
| **copy_logo** | **Boolean** | Specifies whether to copy a logo or not. | [optional] |
| **tags** | **Array&lt;String&gt;** | The collection of tags. | [optional] |
| **color** | **String** | The color of the room to be created. | [optional] |
| **cover** | **String** | The cover of the room to be created. | [optional] |
| **quota** | **Integer** | The room quota. | [optional] |
| **indexing** | **Boolean** | Specifies whether to create a room with indexing. | [optional] |
| **deny_download** | **Boolean** | Specifies whether to deny downloads from the room. | [optional] |
| **lifetime** | [**RoomDataLifetimeDto**](RoomDataLifetimeDto.md) | The room data lifetime information. | [optional] |
| **watermark** | [**WatermarkRequestDto**](WatermarkRequestDto.md) | The watermark settings. | [optional] |
| **private** | **Boolean** | Specifies whether the room to be created is private or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateRoomFromTemplateDto.new(
  template_id: 1,
  title: My Room From Template,
  logo: null,
  copy_logo: false,
  tags: [tag1, tag2, tag3],
  color: #FF0000,
  cover: cover1.jpg,
  quota: 1073741824,
  indexing: true,
  deny_download: false,
  lifetime: null,
  watermark: null,
  private: false
)
```
