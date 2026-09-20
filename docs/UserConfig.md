# DocspaceApiSdk::UserConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The account the changes are recorded under. Two sessions carrying the same value are taken by the editors for  the same person. | [optional] |
| **name** | **String** | The name shown next to the changes and in the list of participants. | [optional] |
| **image** | **String** | An absolute address of the avatar shown for this participant. | [optional] |
| **roles** | **Array&lt;String&gt;** | The filling roles this participant holds in the form being filled out. It is set only for a form in a virtual  data room, where the role decides which fields open for them. | [optional] |
| **customer_id** | **String** | Identifies the paying customer this participant belongs to, on deployments where the editors are licensed per  customer. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UserConfig.new(
  id: 9924256b-447c-4f19-9dbd-8ad8c39e8ff5,
  name: John Doe,
  image: https://portal.example.com/storage/userphotos/9924256b_medium.png,
  roles: [Manager],
  customer_id: cust_001
)
```
