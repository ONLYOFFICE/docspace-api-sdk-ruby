# DocspaceApiSdk::ExternalShareDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**Status**](Status.md) | The external data status. |  |
| **id** | **String** | The external data ID. | [optional] |
| **title** | **String** | The external data title. | [optional] |
| **type** | [**FileEntryType**](FileEntryType.md) | The type of the external data. | [optional] |
| **tenant_id** | **Integer** | The tenant ID. |  |
| **entity_id** | **String** | The unique identifier of the shared entity. | [optional] |
| **entity_title** | **String** | The title of the shared entity. | [optional] |
| **entity_type** | [**FileEntryType**](FileEntryType.md) | The entry type of the external data. | [optional] |
| **is_room** | **Boolean** | Indicates whether the entity represents a room. | [optional] |
| **shared** | **Boolean** | Specifies whether to share the external data or not. |  |
| **link_id** | **String** | The link ID of the external data. |  |
| **is_authenticated** | **Boolean** | Specifies whether the user is authenticated or not. |  |
| **is_room_member** | **Boolean** | The room ID of the external data. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExternalShareDto.new(
  status: null,
  id: 123,
  title: Shared Document,
  type: null,
  tenant_id: 1,
  entity_id: 456,
  entity_title: Entity Title,
  entity_type: null,
  is_room: false,
  shared: true,
  link_id: 00000000-0000-0000-0000-000000000000,
  is_authenticated: true,
  is_room_member: false
)
```
