# DocspaceApiSdk::ExternalSharingSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_share** | **Boolean** | Whether links that open a file or a room without a portal account may be created. While it is false the portal  also reports sharing on social networks as off and the default link type as internal, whatever was asked for. | [optional] |
| **default_share_link_internal** | **Boolean** | The kind of link the portal offers first: true means a link only accounts of this portal can open, false one  that anyone holding it can open. | [optional] |
| **external_share_apply_to_documents** | **Boolean** | Whether the restriction covers personal documents. It only has an effect while external sharing is off, so a  true here with sharing allowed restricts nothing. | [optional] |
| **external_share_apply_to_rooms** | **Boolean** | Whether the restriction covers rooms, including the creation of new public ones. It only has an effect while  external sharing is off. | [optional] |
| **block_existing_links_on_restrict** | **Boolean** | Whether links created before the restriction stop opening as well. With false they keep working and only new  ones are refused. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExternalSharingSettingsDto.new(
  external_share: true,
  default_share_link_internal: false,
  external_share_apply_to_documents: true,
  external_share_apply_to_rooms: true,
  block_existing_links_on_restrict: true
)
```
