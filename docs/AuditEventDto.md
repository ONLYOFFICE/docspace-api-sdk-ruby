# DocspaceApiSdk::AuditEventDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The audit event ID. | [optional] |
| **date** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **user** | **String** | The name of the user who triggered the audit event. | [optional] |
| **user_id** | **String** | The ID of the user who triggered the audit event. | [optional] |
| **action** | **String** | The audit event action. | [optional] |
| **action_id** | [**MessageAction**](MessageAction.md) |  | [optional] |
| **ip** | **String** | The audit event IP. | [optional] |
| **country** | **String** | The audit event country. | [optional] |
| **city** | **String** | The audit event city. | [optional] |
| **browser** | **String** | The audit event browser. | [optional] |
| **platform** | **String** | The audit event platform. | [optional] |
| **page** | **String** | The audit event page. | [optional] |
| **action_type** | [**ActionType**](ActionType.md) |  | [optional] |
| **product** | [**ProductType**](ProductType.md) |  | [optional] |
| **location** | [**LocationType**](LocationType.md) |  | [optional] |
| **target** | **Array&lt;String&gt;** | The list of target objects affected by the audit event (e.g., document ID, user account). | [optional] |
| **entries** | [**Array&lt;EntryType&gt;**](EntryType.md) | The list of audit entry types (e.g., Folder, User, File). | [optional] |
| **context** | **String** | The audit event context. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AuditEventDto.new(
  id: 1,
  date: null,
  user: John Doe,
  user_id: 00000000-0000-0000-0000-000000000001,
  action: User logged in,
  action_id: null,
  ip: 192.0.2.1,
  country: United States,
  city: New York,
  browser: Chrome 120.0,
  platform: Windows,
  page: /rooms/shared,
  action_type: null,
  product: null,
  location: null,
  target: ["item1","item2"],
  entries: ["File","Folder"],
  context: Security settings updated
)
```
