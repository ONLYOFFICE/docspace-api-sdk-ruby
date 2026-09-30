# DocspaceApiSdk::WhiteLabelRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **logo_text** | **String** | The wordmark printed next to or instead of a logo image, on the login page, in the editors and in  notification letters. An empty or blank value, and the built-in `ONLYOFFICE` itself, clear the setting rather  than store it. The text is not rendered into the logo images, which carry their own wordmark. | [optional] |
| **logo** | [**Array&lt;ItemKeyValuePairStringLogoRequestsDto&gt;**](ItemKeyValuePairStringLogoRequestsDto.md) | The logo images to store, each entry naming a logo slot in its `key` - the numeric `type` published by  `GET api/2.0/settings/whitelabel/logos` - and carrying the two theme images in its value. A slot left out of  the list keeps the image it has, so this is a partial update rather than a replacement of the whole branding.  Saving the login-page slot also rebuilds the notification logo from it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WhiteLabelRequestsDto.new(
  logo_text: Company Name,
  logo: [item1, item2]
)
```
