# DocspaceApiSdk::MobileRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mobile_phone** | **String** | The number the SMS codes are sent to, in international form with the leading `+` and no spaces. It is stored  as not yet activated and only becomes the confirmed number once a code sent to it is accepted; an already  activated number is not replaced this way and has to be erased first. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MobileRequestsDto.new(
  mobile_phone: +1234567890
)
```
