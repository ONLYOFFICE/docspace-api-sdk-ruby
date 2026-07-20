# DocspaceApiSdk::ExternalSharingSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_share** | **Boolean** | Specifies whether external (public) link creation is allowed. | [optional] |
| **default_share_link_internal** | **Boolean** | Specifies the default sharing link type: true = DocSpace users only, false = Anyone with the link. | [optional] |
| **external_share_apply_to_documents** | **Boolean** | When external sharing is restricted, specifies whether the restriction applies to the My Documents section. | [optional] |
| **external_share_apply_to_rooms** | **Boolean** | When external sharing is restricted, specifies whether the restriction applies to the Rooms section. | [optional] |
| **block_existing_links_on_restrict** | **Boolean** | When external sharing is restricted, specifies whether existing public links are blocked immediately. | [optional] |

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
