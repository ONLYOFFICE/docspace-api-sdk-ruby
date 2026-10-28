# DocspaceApiSdk::UpdateTagRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **old_name** | **String** | The name of the tag to rename, matched against the catalog exactly as it is stored rather than searched for.  Read the stored spelling from `GET api/2.0/files/tags`. |  |
| **new_name** | **String** | The name to store instead. It has to be free: names are unique across the portal, so a name another tag  already carries is refused, and merging two tags this way is not possible. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateTagRequestDto.new(
  old_name: Confidential,
  new_name: Restricted
)
```
