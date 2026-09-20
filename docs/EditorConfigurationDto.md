# DocspaceApiSdk::EditorConfigurationDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_url** | **String** | Where the editors post the document back to when they save it. A client must not call it itself; it is the  address the document service uses. | [optional] |
| **co_editing** | [**CoEditingConfig**](CoEditingConfig.md) | How co-editing starts out for this session and whether the user may switch it in the interface. | [optional] |
| **create_url** | **String** | Where the editor sends the user when they ask for a new document of the same type. It is empty when creating  one is not offered here. | [optional] |
| **customization** | [**CustomizationConfigDto**](CustomizationConfigDto.md) | How the editor interface is dressed for this portal, this document and this layout. | [optional] |
| **embedded** | [**EmbeddedConfig**](EmbeddedConfig.md) | The addresses the framed viewer needs. It is filled in only for the embedded layout. | [optional] |
| **encryption_keys** | [**Array&lt;EncryptionKeyDto&gt;**](EncryptionKeyDto.md) | The caller's end-to-end encryption keys, added only when the document lies in a private room, so that the  editors can decrypt it in the browser. It is empty everywhere else. | [optional] |
| **lang** | **String** | The culture the editor interface is shown in, taken from the profile of the caller. |  |
| **mode** | **String** | `edit` when this session may write the document, `view` when it may only read it. |  |
| **mode_write** | **Boolean** | Whether this session may write; it is what the mode above says in one word. | [optional] |
| **plugins** | [**PluginsConfig**](PluginsConfig.md) | Which editor plugins are offered. The portal currently offers none, so the list inside comes back empty. | [optional] |
| **recent** | [**Array&lt;RecentConfig&gt;**](RecentConfig.md) | The documents offered in the editor's recent list. It is left out altogether when there is nothing to offer. | [optional] |
| **templates** | [**Array&lt;TemplatesConfig&gt;**](TemplatesConfig.md) | Always empty: the portal no longer passes creation templates through the editor configuration. | [optional] |
| **user** | [**UserConfig**](UserConfig.md) | The account the editors attribute changes to. It is empty for an anonymous session opened through an external  link, and the editors then ask for a name themselves. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EditorConfigurationDto.new(
  callback_url: https://portal.example.com/filehandler.ashx?action=track&fileid=512,
  co_editing: null,
  create_url: https://portal.example.com/products/files/?action=create&doctype=word,
  customization: null,
  embedded: null,
  encryption_keys: null,
  lang: en-US,
  mode: edit,
  mode_write: true,
  plugins: null,
  recent: [],
  templates: [],
  user: null
)
```
