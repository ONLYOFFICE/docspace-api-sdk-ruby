# DocspaceApiSdk::RoomLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** | Which link to change, taken from `GET api/2.0/files/rooms/{id}/links`. Leaving it out creates a link, and an  identifier the room does not know creates a link carrying that identifier. | [optional] |
| **access** | [**FileShare**](FileShare.md) | What whoever opens the link may do in the room. The value 0 revokes the link instead of changing it, and the  levels a room accepts depend on its kind. | [optional] |
| **expiration_date** | [**ApiDateTime**](ApiDateTime.md) | When the link stops working, written with the offset of the portal time zone. A date already past is dropped  silently for an external link and refused for an invitation link, and a date further ahead than the portal  allows is refused as well; leaving it out means the link does not expire. | [optional] |
| **internal** | **Boolean** | Whether the external link works only for people already signed in to the portal. With it off the link opens  the room for anyone who has the address, subject to the password. | [optional] |
| **title** | **String** | The name the link is shown under in the room. An empty value is accepted and the portal names the link itself,  so the answer is what tells the caller the name in use. | [optional] |
| **link_type** | [**LinkType**](LinkType.md) | Which kind of link to create: an invitation link makes whoever opens it a member of the room, while an  external link opens the room without an account. It is fixed when the link is created and is ignored on later  changes. | [optional] |
| **password** | **String** | The password an external link asks for before it opens the room. An empty value leaves the link open to anyone  who has the address, and the password is never returned when links are listed. | [optional] |
| **deny_download** | **Boolean** | Whether people arriving through the link are stopped from downloading and printing what they open. They can  still read the documents in the editor. | [optional] |
| **max_use_count** | **Integer** | How many people an invitation link may still let in before it stops working. A value below the number of  people who already used it is refused, and leaving it out puts no ceiling on the link. | [optional] |
| **current_use_count** | **Integer** | How many people have already joined through this invitation link. The value is kept by the portal: it is  reported back when links are listed and anything sent here is ignored. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomLinkRequest.new(
  link_id: b3f1c8de-5a64-4d1e-9f27-6c0a8d5b7e41,
  access: null,
  expiration_date: null,
  internal: false,
  title: Read-only access for auditors,
  link_type: null,
  password: S3cret-Phrase,
  deny_download: false,
  max_use_count: 25,
  current_use_count: 0
)
```
