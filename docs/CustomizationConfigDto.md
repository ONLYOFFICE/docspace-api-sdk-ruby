# DocspaceApiSdk::CustomizationConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **about** | **Boolean** | Specifies if the customization is about. | [optional] |
| **customer** | [**CustomerConfigDto**](CustomerConfigDto.md) | The customization customer configuration. | [optional] |
| **anonymous** | [**AnonymousConfigDto**](AnonymousConfigDto.md) | The anonymous configuration of the customization. | [optional] |
| **feedback** | [**FeedbackConfig**](FeedbackConfig.md) | The feedback configuration of the customization. | [optional] |
| **forcesave** | **Boolean** | Specifies if the customization should be force saved. | [optional] |
| **goback** | [**GobackConfig**](GobackConfig.md) | The go back configuration of the customization. | [optional] |
| **review** | [**ReviewConfig**](ReviewConfig.md) | The review configuration of the customization. | [optional] |
| **logo** | [**LogoConfigDto**](LogoConfigDto.md) | The logo of the customization. | [optional] |
| **mention_share** | **Boolean** | Specifies if the share should be mentioned. | [optional] |
| **submit_form** | [**SubmitForm**](SubmitForm.md) | The Complete & Submit button settings. | [optional] |
| **start_filling_form** | [**StartFillingForm**](StartFillingForm.md) | The parameters of the button that starts filling out the form. | [optional] |

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
