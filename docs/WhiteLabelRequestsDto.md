# DocspaceApiSdk::WhiteLabelRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **logo_text** | **String** | The text to display alongside or in place of the logo. | [optional] |
| **logo** | [**Array&lt;ItemKeyValuePairStringLogoRequestsDto&gt;**](ItemKeyValuePairStringLogoRequestsDto.md) | The white label tenant IDs with their logos (light or dark). | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WhiteLabelRequestsDto.new(
  logo_text: Company Name,
  logo: ["item1","item2"]
)
```
