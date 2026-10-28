# DocspaceApiSdk::SecurityInfoSimpleRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **share** | [**Array&lt;FileShareParams&gt;**](FileShareParams.md) | One record per account or group whose rights are being set, each naming the subject and the level it gets; a  level of `None` takes the access away. An empty collection makes the call change nothing. | [optional] |
| **notify** | **Boolean** | Set to true to have every account named in `share` emailed about the access it just received; false changes  the rights without telling anyone. | [optional] |
| **sharing_message** | **String** | The text put into that email, ignored while `notify` is false. Markup is stripped before sending, so only the  plain text of the value survives. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SecurityInfoSimpleRequestDto.new(
  share: [{access=2, shareTo=9924256a-739c-462b-af15-e652a3b1b6eb}],
  notify: true,
  sharing_message: You have been granted access to the file
)
```
