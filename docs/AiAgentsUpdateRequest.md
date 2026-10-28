# DocspaceApiSdk::AiAgentsUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile id to rebind (optional). | [optional] |
| **chat_settings** | **Object** | Chat settings (`ChatSettings`); requires a valid provider/model. | [optional] |
| **send_form_to_external_db** | **Boolean** | Whether form results are sent to an external DB. | [optional] |
| **save_form_as_xlsx** | **Boolean** | Whether forms are saved as XLSX. | [optional] |
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

instance = DocspaceApiSdk::AiAgentsUpdateRequest.new(
  profile_id: null,
  chat_settings: null,
  send_form_to_external_db: null,
  save_form_as_xlsx: null,
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
