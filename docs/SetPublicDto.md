# DocspaceApiSdk::SetPublicDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The identifier of the room template. Take it from `templateId` of `GET api/2.0/files/roomtemplate/status`, or  from the folder list of `GET api/2.0/files/rooms` called with `searchArea` set to 4; an identifier of an  ordinary room is not accepted. |  |
| **public** | **Boolean** | Whether the Everyone group keeps read access to the template. True shares it with every member allowed to  create rooms; false leaves it reachable only for its owner. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetPublicDto.new(
  id: 1234,
  public: true
)
```
