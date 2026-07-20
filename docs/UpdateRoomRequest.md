# DocspaceApiSdk::UpdateRoomRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The room title. | [optional] |
| **quota** | **Integer** | The room quota. | [optional] |
| **indexing** | **Boolean** | Specifies whether to create a third-party room with indexing. | [optional] |
| **deny_download** | **Boolean** | Specifies whether to deny downloads from the third-party room. | [optional] |
| **lifetime** | [**RoomDataLifetimeDto**](RoomDataLifetimeDto.md) |  | [optional] |
| **watermark** | [**WatermarkRequestDto**](WatermarkRequestDto.md) |  | [optional] |
| **logo** | [**LogoRequest**](LogoRequest.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | The list of tags. | [optional] |
| **color** | **String** | The room color. | [optional] |
| **cover** | **String** | The room cover. | [optional] |
| **chat_settings** | [**ChatSettings**](ChatSettings.md) |  | [optional] |
| **send_form_to_external_db** | **Boolean** | Specifies whether to send form data to external database. | [optional] |
| **save_form_as_xlsx** | **Boolean** | Specifies whether to save form data as XLSX file. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateRoomRequest.new(
  title: My Document,
  quota: 10485760,
  indexing: true,
  deny_download: true,
  lifetime: null,
  watermark: null,
  logo: null,
  tags: ["tag1","tag2"],
  color: #FF5733,
  cover: cover1,
  chat_settings: null,
  send_form_to_external_db: false,
  save_form_as_xlsx: false
)
```
