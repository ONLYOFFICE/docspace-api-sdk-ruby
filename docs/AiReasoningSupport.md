# DocspaceApiSdk::AiReasoningSupport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thinks** | **Boolean** | Whether the model can think at all. False hides the whole control. |  |
| **can_disable** | **Boolean** | Whether `off` really turns thinking off. False means the model thinks always and off only drops to its lowest depth (or leaves the default depth, where there is no knob). |  |
| **depths** | [**Array&lt;AiReasoningDepth&gt;**](AiReasoningDepth.md) | Depths the model distinguishes, lowest first. Empty when thinking is an on/off switch with no depth (or the model doesn't think). A level not listed is clamped to the nearest one — see `clampReasoningLevel`. |  |
| **default_depth** | [**AiReasoningDepth**](AiReasoningDepth.md) | The depth the model runs at when nothing asks for one — what a stored `off` means on a model that cannot be switched off. Known only where a catalogue reports it (OpenRouter's `default_effort`); otherwise `DEFAULT_REASONING_LEVEL` clamped to `depths` is assumed. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiReasoningSupport.new(
  thinks: null,
  can_disable: null,
  depths: null,
  default_depth: null
)
```
