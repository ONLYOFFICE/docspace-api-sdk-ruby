# DocspaceApiSdk::CreateRoomRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The room name. |  |
| **quota** | **Integer** | The room quota. | [optional] |
| **indexing** | **Boolean** | Specifies whether to create a room with indexing. | [optional] |
| **deny_download** | **Boolean** | Specifies whether to deny downloads from the room. | [optional] |
| **lifetime** | [**RoomDataLifetimeDto**](RoomDataLifetimeDto.md) | The room data lifetime information. | [optional] |
| **watermark** | [**WatermarkRequestDto**](WatermarkRequestDto.md) | The watermark settings. | [optional] |
| **logo** | [**LogoRequest**](LogoRequest.md) | The room logo. | [optional] |
| **tags** | **Array&lt;String&gt;** | The list of tags. | [optional] |
| **color** | **String** | The room color, as a six-digit hexadecimal value without a leading '#'. | [optional] |
| **cover** | **String** | The room cover. | [optional] |
| **room_type** | [**RoomType**](RoomType.md) | The room type. |  |
| **private** | **Boolean** | Specifies whether the room to be created is private or not. | [optional] |
| **share** | [**Array&lt;FileShareParams&gt;**](FileShareParams.md) | The collection of sharing parameters. | [optional] |
| **chat_settings** | [**ChatSettings**](ChatSettings.md) | The chat settings. | [optional] |
| **send_form_to_external_db** | **Boolean** | Specifies whether to send form data to external database. | [optional] |
| **save_form_as_xlsx** | **Boolean** | Specifies whether to save form data as XLSX file. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateRoomRequestDto.new(
  title: My Room,
  quota: 1073741824,
  indexing: true,
  deny_download: false,
  lifetime: null,
  watermark: null,
  logo: null,
  tags: [tag1, tag2, tag3],
  color: FF0000,
  cover: cover1.jpg,
  room_type: null,
  private: false,
  share: [{access=1, shareTo=00000000-0000-0000-0000-000000000000}],
  chat_settings: null,
  send_form_to_external_db: false,
  save_form_as_xlsx: false
)
```
