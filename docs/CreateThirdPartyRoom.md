# DocspaceApiSdk::CreateThirdPartyRoom

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_as_new_folder** | **Boolean** | Creates a new folder named after `title` inside the folder named in the path and turns that subfolder into the  room, leaving the named folder itself untouched. When omitted, the named folder becomes the room and keeps  everything it already holds. | [optional] |
| **title** | **String** | The name the room is shown under. It is stored on the connected account, so it does not have to match the name  of the folder in the storage; with `createAsNewFolder` it is also the name given to the created subfolder. |  |
| **room_type** | [**RoomType**](RoomType.md) | The kind of room the folder becomes, which decides the default access rules of its members and cannot be  changed afterwards. |  |
| **private** | **Boolean** | Restricts the room to the members explicitly invited into it. The flag is kept on the connected storage  account rather than on the folder, so every folder read through that account reports the same value. | [optional] |
| **indexing** | **Boolean** | Keeps the contents of the room in an explicit numbered order, the one reported as `order` on every entry,  instead of leaving the order to the reader. | [optional] |
| **deny_download** | **Boolean** | Forbids downloading and printing the contents of the room, which leaves the members with viewing and editing  in the editor only. | [optional] |
| **color** | **String** | The background colour drawn behind the cover of the room, as six hexadecimal digits without a leading number  sign. An empty value restores the colour the portal picks by default. | [optional] |
| **cover** | **String** | The drawing shown on the room tile, named by one of the built-in cover identifiers returned by  `GET api/2.0/files/rooms/covers`. An empty value leaves the room without a cover, and any other unknown value  is rejected as an invalid request. | [optional] |
| **tags** | **Array&lt;String&gt;** | The tags to attach to the room, named by their text. A name that is not in the portal tag catalogue yet is  added to it, and `GET api/2.0/files/tags` lists the names already there. | [optional] |
| **logo** | [**LogoRequest**](LogoRequest.md) | The picture to use as the room logo, which has to be uploaded with `POST api/2.0/files/logos` first; leaving  it out keeps the room on its cover and colour. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateThirdPartyRoom.new(
  create_as_new_folder: false,
  title: Third-party project room,
  room_type: null,
  private: false,
  indexing: true,
  deny_download: false,
  color: FF5733,
  cover: bookmark,
  tags: [Marketing, Q3],
  logo: null
)
```
