# DocspaceApiSdk::CustomizationConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **about** | **Boolean** | Whether the About entry of the editor menu is shown. | [optional] |
| **customer** | [**CustomerConfigDto**](CustomerConfigDto.md) | The branding of the organization running the portal. It is filled in on a server installation only and is  empty in the cloud. | [optional] |
| **anonymous** | [**AnonymousConfigDto**](AnonymousConfigDto.md) | How an anonymous participant is treated in this session. | [optional] |
| **feedback** | [**FeedbackConfig**](FeedbackConfig.md) | The support link the editor offers behind its feedback button. | [optional] |
| **forcesave** | **Boolean** | Whether the editors write intermediate revisions while the document stays open. It is empty when the portal  leaves the decision to the editors themselves. | [optional] |
| **goback** | [**GobackConfig**](GobackConfig.md) | Where the editor returns the user to when they leave the document. It is empty when there is nowhere to go  back to, as in an embedded opening. | [optional] |
| **review** | [**ReviewConfig**](ReviewConfig.md) | How tracked changes are displayed when the document opens; it depends on whether this session may write. | [optional] |
| **logo** | [**LogoConfigDto**](LogoConfigDto.md) | The logo the editor shows, in the variants the current layout and file type need. | [optional] |
| **mention_share** | **Boolean** | Whether mentioning a user who cannot yet open the document offers to share it with them, instead of silently  notifying nobody. | [optional] |
| **submit_form** | [**SubmitForm**](SubmitForm.md) | The submit button of a form: whether it is shown and what it says. | [optional] |
| **start_filling_form** | [**StartFillingForm**](StartFillingForm.md) | The button that starts filling out the form. It is empty when this opening offers no such button. | [optional] |
| **ai** | [**AIConfig**](AIConfig.md) | The AI configuration settings. | [optional] |

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
  start_filling_form: null,
  ai: null
)
```
