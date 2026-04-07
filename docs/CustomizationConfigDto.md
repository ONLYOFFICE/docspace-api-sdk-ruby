# DocspaceApiSdk::CustomizationConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **about** | **Boolean** | Specifies if the customization is about. | [optional] |
| **customer** | [**CustomerConfigDto**](CustomerConfigDto.md) |  | [optional] |
| **anonymous** | [**AnonymousConfigDto**](AnonymousConfigDto.md) |  | [optional] |
| **feedback** | [**FeedbackConfig**](FeedbackConfig.md) |  | [optional] |
| **forcesave** | **Boolean** | Specifies if the customization should be force saved. | [optional] |
| **goback** | [**GobackConfig**](GobackConfig.md) |  | [optional] |
| **review** | [**ReviewConfig**](ReviewConfig.md) |  | [optional] |
| **logo** | [**LogoConfigDto**](LogoConfigDto.md) |  | [optional] |
| **mention_share** | **Boolean** | Specifies if the share should be mentioned. | [optional] |
| **submit_form** | [**SubmitForm**](SubmitForm.md) |  | [optional] |
| **start_filling_form** | [**StartFillingForm**](StartFillingForm.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomizationConfigDto.new(
  about: true,
  customer: null,
  anonymous: null,
  feedback: null,
  forcesave: false,
  goback: null,
  review: null,
  logo: null,
  mention_share: true,
  submit_form: null,
  start_filling_form: null
)
```
