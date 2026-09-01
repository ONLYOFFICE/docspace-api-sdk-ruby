# DocspaceApiSdk::CreateThirdPartyRoom

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_as_new_folder** | **Boolean** | Specifies whether to create a third-party room as a new folder or not. | [optional] |
| **title** | **String** | The third-party room name to be created. |  |
| **room_type** | [**RoomType**](RoomType.md) | The third-party room type to be created. |  |
| **private** | **Boolean** | Specifies whether to create the private third-party room or not. | [optional] |
| **indexing** | **Boolean** | Specifies whether to create the third-party room with indexing. | [optional] |
| **deny_download** | **Boolean** | Specifies whether to deny downloads from the third-party room. | [optional] |
| **color** | **String** | The color of the third-party room. | [optional] |
| **cover** | **String** | The cover of the third-party room. | [optional] |
| **tags** | **Array&lt;String&gt;** | The list of tags of the third-party room. | [optional] |
| **logo** | [**LogoRequest**](LogoRequest.md) | The logo request parameters of the third-party room. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateThirdPartyRoom.new(
  create_as_new_folder: false,
  title: My Third-Party Room,
  room_type: null,
  private: false,
  indexing: true,
  deny_download: false,
  color: #FF0000,
  cover: cover1.jpg,
  tags: [tag1, tag2, tag3],
  logo: null
)
```
