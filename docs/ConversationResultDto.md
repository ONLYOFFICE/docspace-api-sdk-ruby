# DocspaceApiSdk::ConversationResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of the conversion entry. The portal leaves it empty for file conversions, so a caller follows  its own conversion by the file it queued rather than by this value. |  |
| **operation** | [**FileOperationType**](FileOperationType.md) | Tells which kind of file operation the entry describes, so that a conversion can be told apart from the copy,  move and download entries that share this envelope. A conversion entry reports the conversion type. |  |
| **progress** | **Integer** | How far the conversion has got, counted in percent from 0 while it is only queued to 100 once it is over -  whether it ended with a converted file or with an error. 100 is the value a polling caller waits for. |  |
| **source** | **String** | Describes what is being converted: the identifier of the source file, the version that was taken and whether  an existing result may be overwritten, packed as a JSON object inside a string. It is what identifies the  entry when several conversions of the same caller are in flight. | [optional] |
| **result** | **Object** |  | [optional] |
| **error** | **String** | The reason the conversion stopped, in the language of the caller, and empty while it is running and after it  has succeeded. `progress` reaches 100 for a failure as well, so this field is what separates a converted file  from a broken conversion; a conversion still unfinished after ten minutes ends with a timeout reported here. | [optional] |
| **processed** | **String** | Reports whether the portal has taken the entry as far as it goes: `1` once the conversion has finished or  failed, and empty while it is still queued or still being converted. It is the bookkeeping of the conversion  queue rather than a result - what happened is in `progress`, `error` and `result`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConversationResultDto.new(
  id: 12345,
  operation: null,
  progress: 50,
  source: {"id":9846,"version":1,"updateIfExist":false},
  result: null,
  error: Conversion failed,
  processed: 1
)
```
