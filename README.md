# docspace-api-sdk

The ONLYOFFICE DocSpace SDK for Ruby is a library that provides tools for integrating and managing DocSpace features within your applications. It simplifies interaction with the DocSpace API by offering ready-to-use methods and models.

For more information, please visit [https://helpdesk.onlyoffice.com/hc/en-us](https://helpdesk.onlyoffice.com/hc/en-us)

### Building

To build the Ruby gem, run the following command:

```bash
gem build docspace-api-sdk.gemspec
```

### Consuming

To use the generated SDK in your project, choose one of the following options.

#### From published gem (recommended)

Add this to your `Gemfile`:

```ruby
gem 'docspace-api-sdk', '~> 4.0.0'
```

Then run:

```bash
bundle install
```

#### From local build

```bash
gem install ./docspace-api-sdk-4.0.0.gem
```

#### From Git

```ruby
gem 'docspace-api-sdk', git: 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

## Getting Started

Please follow the [building](#building) instruction and then run the following Ruby code:

```ruby
# Load the gem
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AIApi.new
ai_ai_approve_tool_call_request = DocspaceApiSdk::AiAiApproveToolCallRequest.new({result: 3.56, thread_id: 'thread_id_example', message_id: 'message_id_example', idx: 3.56, message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiAiApproveToolCallRequest | 


begin
  # Approve tool call
  result = api_instance.ai_ai_approve_tool_call(ai_ai_approve_tool_call_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Exception when calling AI::AIApi->ai_ai_approve_tool_call: #{e}"
end

```

## Documentation For Authorization


Authentication schemes defined for the API:
<a id="asc_auth_key"></a>
### asc_auth_key

- **Type**: API key
- **API key parameter name**: asc_auth_key
- **Location**: Cookie

<a id="Basic"></a>
### Basic

- **Type**: HTTP basic authentication

<a id="Bearer"></a>
### Bearer

- **Type**: Bearer authentication (JWT)

<a id="ApiKeyBearer"></a>
### ApiKeyBearer

- **Type**: API key
- **API key parameter name**: ApiKeyBearer
- **Location**: HTTP header

<a id="OAuth2"></a>
### OAuth2

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: {{authBaseUrl}}/oauth2/authorize
- **Token Url**: {{authBaseUrl}}/oauth2/token
- **Scopes**: 
 - **read**: Read access to protected resources
 - **write**: Write access to protected resources

<a id="OpenId"></a>
### OpenId

- **Type**: OpenId Connect
- **OpenId Connect URL**: {{authBaseUrl}}/.well-known/openid-configuration

<a id="cookieAuth"></a>
### cookieAuth

- **Type**: API key
- **API key parameter name**: asc_auth_key
- **Location**: Cookie

<a id="bearerAuth"></a>
### bearerAuth

- **Type**: Bearer authentication

<a id="x-signature"></a>
### x-signature

- **Type**: API key
- **API key parameter name**: x-signature
- **Location**: Cookie


## Rate Limiting

All API responses may include the following rate limiting headers:

| Header | Description |
|--------|-------------|
| `X-RateLimit-Limit` | Sliding window rate limit: 1500 requests per minute per user/IP. |
| `X-RateLimit-Remaining` | Number of requests remaining in the current sliding window (1500 req/min). Concurrent limits also apply: 50 parallel GET requests, 15 parallel POST/PUT requests. |
| `X-RateLimit-Reset` | Unix timestamp (seconds) when the current sliding window rate limit resets. |
| `Retry-After` | Seconds to wait before retrying. Up to 60s for the sliding window (1500 req/min), up to 86400s for the daily POST/PUT limit (10000/day). |

### Documentation for API Endpoints

All URIs are relative to *https://your-docspace.onlyoffice.com*

### API Endpoints tables:

<details>
  <summary>AI</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::AIApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIAIApi.md#ai_ai_approve_tool_call"><strong>ai_ai_approve_tool_call</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/ai/approve-tool-call</td>
        <td>Approve tool call</td>
      </tr>
      <tr>
        <td><a href="docs/AIAIApi.md#ai_ai_deny_tool_call"><strong>ai_ai_deny_tool_call</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/ai/deny-tool-call</td>
        <td>Deny tool call</td>
      </tr>
      <tr>
        <td><a href="docs/AIAIApi.md#ai_ai_regenerate_stream"><strong>ai_ai_regenerate_stream</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/ai/regenerate-stream</td>
        <td>Regenerate stream</td>
      </tr>
      <tr>
        <td><a href="docs/AIAIApi.md#ai_ai_send"><strong>ai_ai_send</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/ai/send</td>
        <td>Send</td>
      </tr>
      <tr>
        <td><a href="docs/AIAIApi.md#ai_ai_send_custom"><strong>ai_ai_send_custom</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/ai/send-custom</td>
        <td>Send custom</td>
      </tr>
      <tr>
        <td><a href="docs/AIAIApi.md#ai_ai_send_with_stream"><strong>ai_ai_send_with_stream</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/ai/send-with-stream</td>
        <td>Send with stream</td>
      </tr>
      <tr>
        <td><a href="docs/AIAIApi.md#ai_ai_send_with_stream_open_ai"><strong>ai_ai_send_with_stream_open_ai</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/ai/send-with-stream-openai</td>
        <td>Send with stream open ai</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::AgentsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsApi.md#ai_agents_create"><strong>ai_agents_create</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/agents</td>
        <td>Create an agent</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsApi.md#ai_agents_delete"><strong>ai_agents_delete</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/agents/{id}</td>
        <td>Delete an agent</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsApi.md#ai_agents_get"><strong>ai_agents_get</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/agents/{id}</td>
        <td>Get an agent</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsApi.md#ai_agents_list"><strong>ai_agents_list</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/agents</td>
        <td>List agents</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsApi.md#ai_agents_news"><strong>ai_agents_news</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/agents/news</td>
        <td>List agent news items</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsApi.md#ai_agents_reset_quota"><strong>ai_agents_reset_quota</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/agents/resetquota</td>
        <td>Reset agents' quota</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsApi.md#ai_agents_update"><strong>ai_agents_update</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/agents/{id}</td>
        <td>Update an agent</td>
      </tr>
      <tr>
        <td><a href="docs/AIAgentsApi.md#ai_agents_update_quota"><strong>ai_agents_update_quota</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/agents/agentquota</td>
        <td>Update agents' quota</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::AssignmentsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIAssignmentsApi.md#ai_assignments_assign"><strong>ai_assignments_assign</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/assignments/assign</td>
        <td>Assign</td>
      </tr>
      <tr>
        <td><a href="docs/AIAssignmentsApi.md#ai_assignments_bulk_assign"><strong>ai_assignments_bulk_assign</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/assignments/bulk-assign</td>
        <td>Bulk assign</td>
      </tr>
      <tr>
        <td><a href="docs/AIAssignmentsApi.md#ai_assignments_cascade_profile_delete"><strong>ai_assignments_cascade_profile_delete</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/assignments/cascade-profile-delete</td>
        <td>Cascade profile delete</td>
      </tr>
      <tr>
        <td><a href="docs/AIAssignmentsApi.md#ai_assignments_get_all_assignments"><strong>ai_assignments_get_all_assignments</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/assignments/get-all-assignments</td>
        <td>Get all assignments</td>
      </tr>
      <tr>
        <td><a href="docs/AIAssignmentsApi.md#ai_assignments_get_assignment"><strong>ai_assignments_get_assignment</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/assignments/get-assignment</td>
        <td>Get assignment</td>
      </tr>
      <tr>
        <td><a href="docs/AIAssignmentsApi.md#ai_assignments_resolve_for_action"><strong>ai_assignments_resolve_for_action</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/assignments/resolve-for-action</td>
        <td>Resolve for action</td>
      </tr>
      <tr>
        <td><a href="docs/AIAssignmentsApi.md#ai_assignments_try_resolve_for_action"><strong>ai_assignments_try_resolve_for_action</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/assignments/try-resolve-for-action</td>
        <td>Try resolve for action</td>
      </tr>
      <tr>
        <td><a href="docs/AIAssignmentsApi.md#ai_assignments_unassign"><strong>ai_assignments_unassign</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/assignments/unassign</td>
        <td>Unassign</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::AttachmentsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIAttachmentsApi.md#ai_attachments_delete"><strong>ai_attachments_delete</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/attachments/delete</td>
        <td>Delete</td>
      </tr>
      <tr>
        <td><a href="docs/AIAttachmentsApi.md#ai_attachments_delete_many"><strong>ai_attachments_delete_many</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/attachments/delete-many</td>
        <td>Delete many</td>
      </tr>
      <tr>
        <td><a href="docs/AIAttachmentsApi.md#ai_attachments_get"><strong>ai_attachments_get</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/attachments/get</td>
        <td>Get</td>
      </tr>
      <tr>
        <td><a href="docs/AIAttachmentsApi.md#ai_attachments_get_many"><strong>ai_attachments_get_many</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/attachments/get-many</td>
        <td>Get many</td>
      </tr>
      <tr>
        <td><a href="docs/AIAttachmentsApi.md#ai_attachments_link_to_message"><strong>ai_attachments_link_to_message</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/attachments/link-to-message</td>
        <td>Link to message</td>
      </tr>
      <tr>
        <td><a href="docs/AIAttachmentsApi.md#ai_attachments_save_file"><strong>ai_attachments_save_file</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/attachments/save-file</td>
        <td>Save file</td>
      </tr>
      <tr>
        <td><a href="docs/AIAttachmentsApi.md#ai_attachments_save_files_many"><strong>ai_attachments_save_files_many</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/attachments/save-files-many</td>
        <td>Save files many</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::EditorToolsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIEditorToolsApi.md#ai_editor_tools_call"><strong>ai_editor_tools_call</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/editor-tools/call</td>
        <td>Execute a DocSpace tool on behalf of the editor AI plugin</td>
      </tr>
      <tr>
        <td><a href="docs/AIEditorToolsApi.md#ai_editor_tools_list"><strong>ai_editor_tools_list</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/editor-tools/list</td>
        <td>Sanitized DocSpace tool catalog for the editor AI plugin</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::ExportApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIExportApi.md#ai_export_text_to_docx"><strong>ai_export_text_to_docx</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/text-to-docx</td>
        <td>Start markdown → docx export</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::OpenAIPassthroughApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIOpenAIPassthroughApi.md#ai_openai_chat_completions"><strong>ai_openai_chat_completions</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/openai/{profileId}/v1/chat/completions</td>
        <td>OpenAI-compatible chat completions proxied to the profile's provider</td>
      </tr>
      <tr>
        <td><a href="docs/AIOpenAIPassthroughApi.md#ai_openai_images_generations"><strong>ai_openai_images_generations</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/openai/{profileId}/v1/images/generations</td>
        <td>OpenAI-compatible image generation proxied to the profile's provider</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::PreferencesApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIPreferencesApi.md#ai_preferences_clear_deep_mode"><strong>ai_preferences_clear_deep_mode</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/preferences/clear-deep-mode</td>
        <td>Clear deep mode</td>
      </tr>
      <tr>
        <td><a href="docs/AIPreferencesApi.md#ai_preferences_get_deep_mode"><strong>ai_preferences_get_deep_mode</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/preferences/get-deep-mode</td>
        <td>Get deep mode</td>
      </tr>
      <tr>
        <td><a href="docs/AIPreferencesApi.md#ai_preferences_is_deep_mode_set"><strong>ai_preferences_is_deep_mode_set</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/preferences/is-deep-mode-set</td>
        <td>Is deep mode set</td>
      </tr>
      <tr>
        <td><a href="docs/AIPreferencesApi.md#ai_preferences_set_deep_mode"><strong>ai_preferences_set_deep_mode</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/preferences/set-deep-mode</td>
        <td>Set deep mode</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::ProfilesApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIProfilesApi.md#ai_profiles_create"><strong>ai_profiles_create</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/profiles/create</td>
        <td>Create</td>
      </tr>
      <tr>
        <td><a href="docs/AIProfilesApi.md#ai_profiles_delete"><strong>ai_profiles_delete</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/profiles/delete</td>
        <td>Delete</td>
      </tr>
      <tr>
        <td><a href="docs/AIProfilesApi.md#ai_profiles_get_by_id"><strong>ai_profiles_get_by_id</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/profiles/get-by-id</td>
        <td>Get by id</td>
      </tr>
      <tr>
        <td><a href="docs/AIProfilesApi.md#ai_profiles_list"><strong>ai_profiles_list</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/profiles/list</td>
        <td>List</td>
      </tr>
      <tr>
        <td><a href="docs/AIProfilesApi.md#ai_profiles_list_models"><strong>ai_profiles_list_models</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/profiles/list-models</td>
        <td>List models</td>
      </tr>
      <tr>
        <td><a href="docs/AIProfilesApi.md#ai_profiles_list_provider_models"><strong>ai_profiles_list_provider_models</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/profiles/list-provider-models</td>
        <td>List provider models</td>
      </tr>
      <tr>
        <td><a href="docs/AIProfilesApi.md#ai_profiles_test_connection"><strong>ai_profiles_test_connection</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/profiles/test-connection</td>
        <td>Test connection</td>
      </tr>
      <tr>
        <td><a href="docs/AIProfilesApi.md#ai_profiles_update"><strong>ai_profiles_update</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/profiles/update</td>
        <td>Update</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::PromptsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_create"><strong>ai_prompts_create</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/prompts/create</td>
        <td>Create</td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_create_folder"><strong>ai_prompts_create_folder</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/prompts/create-folder</td>
        <td>Create folder</td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_delete"><strong>ai_prompts_delete</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/prompts/delete</td>
        <td>Delete</td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_delete_folder"><strong>ai_prompts_delete_folder</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/prompts/delete-folder</td>
        <td>Delete folder</td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_export"><strong>ai_prompts_export</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/prompts/export</td>
        <td>Export</td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_get_by_id"><strong>ai_prompts_get_by_id</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/prompts/get-by-id</td>
        <td>Get by id</td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_get_folder_by_id"><strong>ai_prompts_get_folder_by_id</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/prompts/get-folder-by-id</td>
        <td>Get folder by id</td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_import_bundle"><strong>ai_prompts_import_bundle</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/prompts/import-bundle</td>
        <td>Import bundle</td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_list"><strong>ai_prompts_list</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/prompts/list</td>
        <td>List</td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_list_folders"><strong>ai_prompts_list_folders</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/prompts/list-folders</td>
        <td>List folders</td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_move"><strong>ai_prompts_move</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/prompts/move</td>
        <td>Move</td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_rename_folder"><strong>ai_prompts_rename_folder</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/prompts/rename-folder</td>
        <td>Rename folder</td>
      </tr>
      <tr>
        <td><a href="docs/AIPromptsApi.md#ai_prompts_update"><strong>ai_prompts_update</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/prompts/update</td>
        <td>Update</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::SettingsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AISettingsApi.md#ai_settings_get"><strong>ai_settings_get</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/config</td>
        <td>Get AI settings</td>
      </tr>
      <tr>
        <td><a href="docs/AISettingsApi.md#ai_settings_get_user"><strong>ai_settings_get_user</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/config/user</td>
        <td>Get user AI settings</td>
      </tr>
      <tr>
        <td><a href="docs/AISettingsApi.md#ai_settings_get_vectorization"><strong>ai_settings_get_vectorization</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/config/vectorization</td>
        <td>Get vectorization settings</td>
      </tr>
      <tr>
        <td><a href="docs/AISettingsApi.md#ai_settings_set_user"><strong>ai_settings_set_user</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/config/user</td>
        <td>Update user AI settings</td>
      </tr>
      <tr>
        <td><a href="docs/AISettingsApi.md#ai_settings_set_vectorization"><strong>ai_settings_set_vectorization</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/config/vectorization</td>
        <td>Update vectorization settings</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::ThreadsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_append_user_message"><strong>ai_threads_append_user_message</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/threads/append-user-message</td>
        <td>Append user message</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_clear_messages"><strong>ai_threads_clear_messages</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/threads/clear-messages</td>
        <td>Clear messages</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_create"><strong>ai_threads_create</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/threads/create</td>
        <td>Create</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_delete"><strong>ai_threads_delete</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/threads/delete</td>
        <td>Delete</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_delete_message"><strong>ai_threads_delete_message</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/threads/delete-message</td>
        <td>Delete message</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_get_by_id"><strong>ai_threads_get_by_id</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/threads/get-by-id</td>
        <td>Get by id</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_get_message_by_id"><strong>ai_threads_get_message_by_id</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/threads/get-message-by-id</td>
        <td>Get message by id</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_list"><strong>ai_threads_list</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/threads/list</td>
        <td>List</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_open_or_create"><strong>ai_threads_open_or_create</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/threads/open-or-create</td>
        <td>Open or create</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_read_messages"><strong>ai_threads_read_messages</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/threads/read-messages</td>
        <td>Read messages</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_regenerate_title"><strong>ai_threads_regenerate_title</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/threads/regenerate-title</td>
        <td>Regenerate title</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_rename"><strong>ai_threads_rename</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/threads/rename</td>
        <td>Rename</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_touch"><strong>ai_threads_touch</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/threads/touch</td>
        <td>Touch</td>
      </tr>
      <tr>
        <td><a href="docs/AIThreadsApi.md#ai_threads_update_message"><strong>ai_threads_update_message</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/threads/update-message</td>
        <td>Update message</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::ToolsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_add_custom_server"><strong>ai_tools_add_custom_server</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/tools/add-custom-server</td>
        <td>Add custom server</td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_get_allow_always"><strong>ai_tools_get_allow_always</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/tools/get-allow-always</td>
        <td>Get allow always</td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_get_custom_server"><strong>ai_tools_get_custom_server</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/tools/get-custom-server</td>
        <td>Get custom server</td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_get_disabled"><strong>ai_tools_get_disabled</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/tools/get-disabled</td>
        <td>Get disabled</td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_is_allow_always"><strong>ai_tools_is_allow_always</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/tools/is-allow-always</td>
        <td>Is allow always</td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_is_tool_disabled"><strong>ai_tools_is_tool_disabled</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/tools/is-tool-disabled</td>
        <td>Is tool disabled</td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_list_custom_servers"><strong>ai_tools_list_custom_servers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/tools/list-custom-servers</td>
        <td>List custom servers</td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_list_system_tools"><strong>ai_tools_list_system_tools</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/tools/list-system-tools</td>
        <td>List system tools</td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_remove_custom_server"><strong>ai_tools_remove_custom_server</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/tools/remove-custom-server</td>
        <td>Remove custom server</td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_replace_all_custom_servers"><strong>ai_tools_replace_all_custom_servers</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/tools/replace-all-custom-servers</td>
        <td>Replace all custom servers</td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_set_allow_always"><strong>ai_tools_set_allow_always</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/tools/set-allow-always</td>
        <td>Set allow always</td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_set_disabled"><strong>ai_tools_set_disabled</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/tools/set-disabled</td>
        <td>Set disabled</td>
      </tr>
      <tr>
        <td><a href="docs/AIToolsApi.md#ai_tools_update_custom_server"><strong>ai_tools_update_custom_server</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/tools/update-custom-server</td>
        <td>Update custom server</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::VectorizationApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIVectorizationApi.md#ai_vectorization_start_task"><strong>ai_vectorization_start_task</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/vectorization/tasks</td>
        <td>Start a vectorization task</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>AI::WebSearchApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AIWebSearchApi.md#ai_web_search_clear"><strong>ai_web_search_clear</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/ai/web-search/clear</td>
        <td>Clear</td>
      </tr>
      <tr>
        <td><a href="docs/AIWebSearchApi.md#ai_web_search_configure"><strong>ai_web_search_configure</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/web-search/configure</td>
        <td>Configure</td>
      </tr>
      <tr>
        <td><a href="docs/AIWebSearchApi.md#ai_web_search_get_active_config"><strong>ai_web_search_get_active_config</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/web-search/get-active-config</td>
        <td>Get active config</td>
      </tr>
      <tr>
        <td><a href="docs/AIWebSearchApi.md#ai_web_search_is_configured"><strong>ai_web_search_is_configured</strong></a></td>
        <td><strong>GET</strong> /api/2.0/ai/web-search/is-configured</td>
        <td>Is configured</td>
      </tr>
      <tr>
        <td><a href="docs/AIWebSearchApi.md#ai_web_search_passthrough_contents"><strong>ai_web_search_passthrough_contents</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/websearch/v1/contents</td>
        <td>Web page contents proxied to the portal's active web-search provider</td>
      </tr>
      <tr>
        <td><a href="docs/AIWebSearchApi.md#ai_web_search_passthrough_search"><strong>ai_web_search_passthrough_search</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/websearch/v1/search</td>
        <td>Web search proxied to the portal's active web-search provider</td>
      </tr>
      <tr>
        <td><a href="docs/AIWebSearchApi.md#ai_web_search_set_active_config"><strong>ai_web_search_set_active_config</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/ai/web-search/set-active-config</td>
        <td>Set active config</td>
      </tr>
      <tr>
        <td><a href="docs/AIWebSearchApi.md#ai_web_search_test_connection"><strong>ai_web_search_test_connection</strong></a></td>
        <td><strong>POST</strong> /api/2.0/ai/web-search/test-connection</td>
        <td>Test connection</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>ApiKeys</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>ApiKeys::ApiKeysApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/ApiKeysApi.md#create_api_key"><strong>create_api_key</strong></a></td>
        <td><strong>POST</strong> /api/2.0/keys</td>
        <td>Create a user API key</td>
      </tr>
      <tr>
        <td><a href="docs/ApiKeysApi.md#delete_api_key"><strong>delete_api_key</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/keys/{keyId}</td>
        <td>Delete a user API key</td>
      </tr>
      <tr>
        <td><a href="docs/ApiKeysApi.md#get_all_permissions"><strong>get_all_permissions</strong></a></td>
        <td><strong>GET</strong> /api/2.0/keys/permissions</td>
        <td>Get API key permissions</td>
      </tr>
      <tr>
        <td><a href="docs/ApiKeysApi.md#get_api_key"><strong>get_api_key</strong></a></td>
        <td><strong>GET</strong> /api/2.0/keys/@self</td>
        <td>Get current user's API key</td>
      </tr>
      <tr>
        <td><a href="docs/ApiKeysApi.md#get_api_keys"><strong>get_api_keys</strong></a></td>
        <td><strong>GET</strong> /api/2.0/keys</td>
        <td>Get current user's API keys</td>
      </tr>
      <tr>
        <td><a href="docs/ApiKeysApi.md#update_api_key"><strong>update_api_key</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/keys/{keyId}</td>
        <td>Update an API key</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>Apps</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Apps::AppsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AppsApi.md#get"><strong>get</strong></a></td>
        <td><strong>GET</strong> /api/2.0/apps/{id}</td>
        <td>Get a single app</td>
      </tr>
      <tr>
        <td><a href="docs/AppsApi.md#get_all"><strong>get_all</strong></a></td>
        <td><strong>GET</strong> /api/2.0/apps</td>
        <td>Get all apps</td>
      </tr>
      <tr>
        <td><a href="docs/AppsApi.md#get_settings"><strong>get_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/apps/{id}/settings</td>
        <td>Get app settings</td>
      </tr>
      <tr>
        <td><a href="docs/AppsApi.md#set_enabled"><strong>set_enabled</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/apps/{id}/enabled</td>
        <td>Enable or disable an app</td>
      </tr>
      <tr>
        <td><a href="docs/AppsApi.md#set_settings"><strong>set_settings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/apps/{id}/settings</td>
        <td>Save app settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>Authentication</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Authentication::AuthenticationApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationApi.md#authenticate_me"><strong>authenticate_me</strong></a></td>
        <td><strong>POST</strong> /api/2.0/authentication</td>
        <td>Authenticate a user</td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationApi.md#authenticate_me_from_body_with_code"><strong>authenticate_me_from_body_with_code</strong></a></td>
        <td><strong>POST</strong> /api/2.0/authentication/{code}</td>
        <td>Authenticate a user by code</td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationApi.md#check_confirm"><strong>check_confirm</strong></a></td>
        <td><strong>POST</strong> /api/2.0/authentication/confirm</td>
        <td>Open confirmation email URL</td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationApi.md#get_is_authentificated"><strong>get_is_authentificated</strong></a></td>
        <td><strong>GET</strong> /api/2.0/authentication</td>
        <td>Check authentication</td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationApi.md#logout"><strong>logout</strong></a></td>
        <td><strong>POST</strong> /api/2.0/authentication/logout</td>
        <td>Log out</td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationApi.md#save_mobile_phone"><strong>save_mobile_phone</strong></a></td>
        <td><strong>POST</strong> /api/2.0/authentication/setphone</td>
        <td>Set a mobile phone</td>
      </tr>
      <tr>
        <td><a href="docs/AuthenticationApi.md#send_sms_code"><strong>send_sms_code</strong></a></td>
        <td><strong>POST</strong> /api/2.0/authentication/sendsms</td>
        <td>Send SMS code</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>Backup</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Backup::BackupApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#cancel_backup"><strong>cancel_backup</strong></a></td>
        <td><strong>POST</strong> /api/2.0/backup/cancelbackup</td>
        <td>Cancel current backup</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#create_backup_schedule"><strong>create_backup_schedule</strong></a></td>
        <td><strong>POST</strong> /api/2.0/backup/createbackupschedule</td>
        <td>Create the backup schedule</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#delete_backup"><strong>delete_backup</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/backup/deletebackup/{id}</td>
        <td>Delete the backup</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#delete_backup_history"><strong>delete_backup_history</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/backup/deletebackuphistory</td>
        <td>Delete the backup history</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#delete_backup_schedule"><strong>delete_backup_schedule</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/backup/deletebackupschedule</td>
        <td>Delete the backup schedule</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#get_backup_history"><strong>get_backup_history</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getbackuphistory</td>
        <td>Get the backup history</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#get_backup_progress"><strong>get_backup_progress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getbackupprogress</td>
        <td>Get the backup progress</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#get_backup_schedule"><strong>get_backup_schedule</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getbackupschedule</td>
        <td>Get the backup schedule</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#get_backups_count"><strong>get_backups_count</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getbackupscount</td>
        <td>Get the number of backups</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#get_backups_counts"><strong>get_backups_counts</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getbackupscountbypaid</td>
        <td>Get the number of free and paid backups</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#get_backups_service_state"><strong>get_backups_service_state</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getservicestate</td>
        <td>Get the backup service state</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#get_restore_progress"><strong>get_restore_progress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/backup/getrestoreprogress</td>
        <td>Get the restoring progress</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#start_backup"><strong>start_backup</strong></a></td>
        <td><strong>POST</strong> /api/2.0/backup/startbackup</td>
        <td>Start the backup</td>
      </tr>
      <tr>
        <td><a href="docs/BackupApi.md#start_backup_restore"><strong>start_backup_restore</strong></a></td>
        <td><strong>POST</strong> /api/2.0/backup/startrestore</td>
        <td>Start the restoring process</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>Capabilities</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Capabilities::CapabilitiesApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/CapabilitiesApi.md#get_portal_capabilities"><strong>get_portal_capabilities</strong></a></td>
        <td><strong>GET</strong> /api/2.0/capabilities</td>
        <td>Get portal capabilities</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>Files</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Files::FilesApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#add_file_to_recent"><strong>add_file_to_recent</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/recent</td>
        <td>Add a file to the Recent section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#add_templates"><strong>add_templates</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/templates</td>
        <td>Add template files</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#change_version_history"><strong>change_version_history</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/history</td>
        <td>Change version history</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#check_fill_form_draft"><strong>check_fill_form_draft</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/masterform/{fileId}/checkfillformdraft</td>
        <td>Check the form draft filling</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#copy_file_as"><strong>copy_file_as</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/copyas</td>
        <td>Copy a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#create_edit_session"><strong>create_edit_session</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/edit_session</td>
        <td>Create the editing session</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#create_file"><strong>create_file</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/file</td>
        <td>Create a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#create_file_in_my_documents"><strong>create_file_in_my_documents</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/@my/file</td>
        <td>Create a file in the My documents section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#create_file_primary_external_link"><strong>create_file_primary_external_link</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{id}/link</td>
        <td>Create primary external link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#create_html_file"><strong>create_html_file</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/html</td>
        <td>Create an HTML file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#create_html_file_in_my_documents"><strong>create_html_file_in_my_documents</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/@my/html</td>
        <td>Create an HTML file in the My documents section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#create_text_file"><strong>create_text_file</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/text</td>
        <td>Create a text file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#create_text_file_in_my_documents"><strong>create_text_file_in_my_documents</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/@my/text</td>
        <td>Create a text file in the My documents section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#create_thumbnails"><strong>create_thumbnails</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/thumbnails</td>
        <td>Create file thumbnails</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#delete_file"><strong>delete_file</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/file/{fileId}</td>
        <td>Delete a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#delete_recent"><strong>delete_recent</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/recent</td>
        <td>Delete recent files</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#delete_templates"><strong>delete_templates</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/templates</td>
        <td>Delete template files</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#generate_xlsx"><strong>generate_xlsx</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/xlsx</td>
        <td>Generate XLSX report</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_all_form_roles"><strong>get_all_form_roles</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/formroles</td>
        <td>Get form roles</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_edit_diff_url"><strong>get_edit_diff_url</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/edit/diff</td>
        <td>Get changes URL</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_edit_history"><strong>get_edit_history</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/edit/history</td>
        <td>Get version history</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_encryption_info"><strong>get_encryption_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/{fileId}/access</td>
        <td>Get file encryption information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_file_history"><strong>get_file_history</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/log</td>
        <td>Get file history</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_file_info"><strong>get_file_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}</td>
        <td>Get file information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_file_links"><strong>get_file_links</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{id}/links</td>
        <td>Get file external links</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_file_primary_external_link"><strong>get_file_primary_external_link</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{id}/link</td>
        <td>Get primary external link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_file_version_info"><strong>get_file_version_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/history</td>
        <td>Get file versions</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_fill_result"><strong>get_fill_result</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/fillresult</td>
        <td>Get form-filling result</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_form_submissions"><strong>get_form_submissions</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/submissions</td>
        <td>Get form submission results</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_presigned_file_uri"><strong>get_presigned_file_uri</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/presigned</td>
        <td>Get file download link asynchronously</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_presigned_uri"><strong>get_presigned_uri</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/presigneduri</td>
        <td>Get file download link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_protected_file_users"><strong>get_protected_file_users</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/protectusers</td>
        <td>Get users access rights to the protected file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_reference_data"><strong>get_reference_data</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/referencedata</td>
        <td>Get reference data</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#get_xlsx"><strong>get_xlsx</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/xlsx</td>
        <td>Get XLSX report generation status</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#is_form_pdf"><strong>is_form_pdf</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/isformpdf</td>
        <td>Check the PDF file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#lock_file"><strong>lock_file</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/lock</td>
        <td>Lock a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#manage_form_filling"><strong>manage_form_filling</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/manageformfilling</td>
        <td>Perform form filling action</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#open_edit_file"><strong>open_edit_file</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/openedit</td>
        <td>Open a file configuration</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#restore_file_version"><strong>restore_file_version</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/restoreversion</td>
        <td>Restore a file version</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#save_editing_file_from_form"><strong>save_editing_file_from_form</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/saveediting</td>
        <td>Save file edits</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#save_file_as_pdf"><strong>save_file_as_pdf</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{id}/saveaspdf</td>
        <td>Save a file as PDF</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#save_form_role_mapping"><strong>save_form_role_mapping</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/formrolemapping</td>
        <td>Save form role mapping</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#set_custom_filter_tag"><strong>set_custom_filter_tag</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/customfilter</td>
        <td>Set the Custom Filter editing mode</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#set_encryption_info"><strong>set_encryption_info</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/{fileId}/access</td>
        <td>Set file encryption information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#set_file_external_link"><strong>set_file_external_link</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{id}/links</td>
        <td>Set an external link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#set_file_order"><strong>set_file_order</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/{fileId}/order</td>
        <td>Set file order</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#set_files_order"><strong>set_files_order</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/order</td>
        <td>Set order of files</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#start_edit_file"><strong>start_edit_file</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/startedit</td>
        <td>Start file editing</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#start_filling_file"><strong>start_filling_file</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/startfilling</td>
        <td>Start file filling</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#toggle_file_favorite"><strong>toggle_file_favorite</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/favorites/{fileId}</td>
        <td>Change the file favorite status</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#track_edit_file"><strong>track_edit_file</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/trackeditfile</td>
        <td>Track file editing</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFilesApi.md#update_file"><strong>update_file</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}</td>
        <td>Update a file</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Files::FoldersApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#check_upload"><strong>check_upload</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/upload/check</td>
        <td>Check file uploads</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#create_folder"><strong>create_folder</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/folder/{folderId}</td>
        <td>Create a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#create_folder_primary_external_link"><strong>create_folder_primary_external_link</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/folder/{id}/link</td>
        <td>Create primary external link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#create_report_folder_history"><strong>create_report_folder_history</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/folder/{folderId}/log/report</td>
        <td>Start the folder history report generation</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#delete_folder"><strong>delete_folder</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/folder/{folderId}</td>
        <td>Delete a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#generate_xlsx_by_folder"><strong>generate_xlsx_by_folder</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/folder/{folderId}/xlsx</td>
        <td>Generate XLSX report by folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_favorites_folder"><strong>get_favorites_folder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/@favorites</td>
        <td>Get the Favorites section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_files_used_space"><strong>get_files_used_space</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/filesusedspace</td>
        <td>Get used space of files</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_folder"><strong>get_folder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/{folderId}/formfilter</td>
        <td>Get folder form filter</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_folder_by_folder_id"><strong>get_folder_by_folder_id</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/{folderId}</td>
        <td>Get a folder by ID</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_folder_history"><strong>get_folder_history</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{folderId}/log</td>
        <td>Get folder history</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_folder_info"><strong>get_folder_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{folderId}</td>
        <td>Get folder information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_folder_links"><strong>get_folder_links</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{id}/links</td>
        <td>Get the folder links</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_folder_path"><strong>get_folder_path</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{folderId}/path</td>
        <td>Get the folder path</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_folder_primary_external_link"><strong>get_folder_primary_external_link</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{id}/link</td>
        <td>Get primary external link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_folders"><strong>get_folders</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/{folderId}/subfolders</td>
        <td>Get subfolders</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_forms_folder"><strong>get_forms_folder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/@forms</td>
        <td>Get the Forms section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_my_folder"><strong>get_my_folder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/@my</td>
        <td>Get the My documents section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_new_folder_items"><strong>get_new_folder_items</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/{folderId}/news</td>
        <td>Get new folder items</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_recent_folder"><strong>get_recent_folder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/recent</td>
        <td>Get the Recent section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_report_folder_history"><strong>get_report_folder_history</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{folderId}/log/report</td>
        <td>Get the folder history report generation status</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_root_folders"><strong>get_root_folders</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/@root</td>
        <td>Get filtered sections</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#get_trash_folder"><strong>get_trash_folder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/@trash</td>
        <td>Get the Trash section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#insert_file"><strong>insert_file</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/insert</td>
        <td>Insert a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#insert_file_to_my_from_body"><strong>insert_file_to_my_from_body</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/@my/insert</td>
        <td>Insert a file to the My documents section</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#rename_folder"><strong>rename_folder</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/folder/{folderId}</td>
        <td>Rename a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#set_folder_order"><strong>set_folder_order</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/folder/{folderId}/order</td>
        <td>Set folder order</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#set_folder_primary_external_link"><strong>set_folder_primary_external_link</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/folder/{id}/links</td>
        <td>Set the folder external link</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#terminate_report_folder_history"><strong>terminate_report_folder_history</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/folder/{folderId}/log/report</td>
        <td>Terminate the folder history report generation</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#upload_file"><strong>upload_file</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/upload</td>
        <td>Upload a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesFoldersApi.md#upload_file_to_my"><strong>upload_file_to_my</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/@my/upload</td>
        <td>Upload a file to the My documents section</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Files::OperationsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#abort_upload_session"><strong>abort_upload_session</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/{folderId}/session/{sessionId}</td>
        <td>Aborts an in-progress file upload session.</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#add_favorites"><strong>add_favorites</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/favorites</td>
        <td>Add favorite files and folders</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#bulk_download"><strong>bulk_download</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/bulkdownload</td>
        <td>Bulk download</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#check_conversion_status"><strong>check_conversion_status</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/checkconversion</td>
        <td>Get conversion status</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#check_move_or_copy_batch_items"><strong>check_move_or_copy_batch_items</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/fileops/move</td>
        <td>Move or copy files to a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#check_move_or_copy_dest_folder"><strong>check_move_or_copy_dest_folder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/fileops/checkdestfolder</td>
        <td>Check for moving or copying files to a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#copy_batch_items"><strong>copy_batch_items</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/copy</td>
        <td>Copy to the folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#create_upload_session"><strong>create_upload_session</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/upload/create_session</td>
        <td>Chunked upload</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#create_upload_session_in_folder"><strong>create_upload_session_in_folder</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/session</td>
        <td>Creates a session for uploading a file to a specific folder in chunks.</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#delete_batch_items"><strong>delete_batch_items</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/delete</td>
        <td>Delete files and folders</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#delete_favorites_from_body"><strong>delete_favorites_from_body</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/favorites</td>
        <td>Delete favorite files and folders (using body parameters)</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#delete_file_versions"><strong>delete_file_versions</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/deleteversion</td>
        <td>Delete file versions</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#duplicate_batch_items"><strong>duplicate_batch_items</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/duplicate</td>
        <td>Duplicate files and folders</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#empty_trash"><strong>empty_trash</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/emptytrash</td>
        <td>Empty the Trash folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#finalize_session"><strong>finalize_session</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/{folderId}/session/{sessionId}/finalize</td>
        <td>Finalize an upload session</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#get_operation_statuses"><strong>get_operation_statuses</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/fileops</td>
        <td>Get active file operations</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#get_operation_statuses_by_type"><strong>get_operation_statuses_by_type</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/fileops/{operationType}</td>
        <td>Get file operation statuses</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#mark_as_read"><strong>mark_as_read</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/markasread</td>
        <td>Mark as read</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#move_batch_items"><strong>move_batch_items</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/move</td>
        <td>Move or copy to a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#start_file_conversion"><strong>start_file_conversion</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/checkconversion</td>
        <td>Start file conversion</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#terminate_tasks"><strong>terminate_tasks</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/fileops/terminate/{id}</td>
        <td>Finish active operations</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#update_file_comment"><strong>update_file_comment</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{fileId}/comment</td>
        <td>Update a comment</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#upload_async_session"><strong>upload_async_session</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/session/{sessionId}/upload</td>
        <td>Handles the upload of a chunk for an existing upload session.</td>
      </tr>
      <tr>
        <td><a href="docs/FilesOperationsApi.md#upload_session"><strong>upload_session</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/{folderId}/session/{sessionId}</td>
        <td>Resumes an ongoing file upload session for uploading additional chunks of data.</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Files::QuotaApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesQuotaApi.md#reset_room_quota"><strong>reset_room_quota</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/resetquota</td>
        <td>Reset the room quota limit</td>
      </tr>
      <tr>
        <td><a href="docs/FilesQuotaApi.md#update_rooms_quota"><strong>update_rooms_quota</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/roomquota</td>
        <td>Change the room quota limit</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Files::SettingsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#change_access_to_thirdparty"><strong>change_access_to_thirdparty</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/thirdparty</td>
        <td>Change the third-party settings access</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#change_automatically_clean_up"><strong>change_automatically_clean_up</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/autocleanup</td>
        <td>Update the trash bin auto-clearing setting</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#change_default_access_rights"><strong>change_default_access_rights</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/dafaultaccessrights</td>
        <td>Change the default access rights</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#change_delete_confirm"><strong>change_delete_confirm</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/changedeleteconfrim</td>
        <td>Confirm the file deletion</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#change_download_zip"><strong>change_download_zip</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/downloadtargz</td>
        <td>Change the archive format (using body parameters)</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#change_external_sharing_settings"><strong>change_external_sharing_settings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/externalsharingsettings</td>
        <td>Change the Access Control external sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#check_doc_service_url"><strong>check_doc_service_url</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/docservice</td>
        <td>Check the document service URL</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#display_file_extension"><strong>display_file_extension</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/displayfileextension</td>
        <td>Display a file extension</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#display_recent"><strong>display_recent</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/displayrecent</td>
        <td>Display the Recent folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#external_share"><strong>external_share</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/external</td>
        <td>Change the external sharing ability</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#external_share_social_media"><strong>external_share_social_media</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/externalsocialmedia</td>
        <td>Change the external sharing ability on social networks</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#forcesave"><strong>forcesave</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/forcesave</td>
        <td>Change the forcesaving ability</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#get_automatically_clean_up"><strong>get_automatically_clean_up</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/settings/autocleanup</td>
        <td>Get the trash bin auto-clearing setting</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#get_default_templates"><strong>get_default_templates</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/settings/defaulttemplate</td>
        <td>Get the default template setting</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#get_doc_service_url"><strong>get_doc_service_url</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/docservice</td>
        <td>Get the document service URL</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#get_files_module"><strong>get_files_module</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/info</td>
        <td>Get the Documents information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#get_files_settings"><strong>get_files_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/settings</td>
        <td>Get file settings</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#hide_confirm_cancel_operation"><strong>hide_confirm_cancel_operation</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/hideconfirmcanceloperation</td>
        <td>Hide confirmation dialog when canceling operations</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#hide_confirm_convert"><strong>hide_confirm_convert</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/hideconfirmconvert</td>
        <td>Hide the confirmation dialog when converting</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#hide_confirm_room_lifetime"><strong>hide_confirm_room_lifetime</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/hideconfirmroomlifetime</td>
        <td>Hide confirmation dialog when changing room lifetime settings</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#keep_new_file_name"><strong>keep_new_file_name</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/keepnewfilename</td>
        <td>Ask a new file name</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#reset_default_template"><strong>reset_default_template</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/settings/defaulttemplate</td>
        <td>Reset the default template setting</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#set_default_template"><strong>set_default_template</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/defaulttemplate</td>
        <td>Change the default template setting</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#set_open_editor_in_same_tab"><strong>set_open_editor_in_same_tab</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/openeditorinsametab</td>
        <td>Open document in the same browser tab</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#set_organize_rooms_grouping"><strong>set_organize_rooms_grouping</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/settings/organizegrouping</td>
        <td>Organize rooms grouping</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#store_forcesave"><strong>store_forcesave</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/storeforcesave</td>
        <td>Change the ability to store the forcesaved files</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#store_original"><strong>store_original</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/storeoriginal</td>
        <td>Change the ability to upload original formats</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#update_file_if_exist"><strong>update_file_if_exist</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/updateifexist</td>
        <td>Update a file version if it exists</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSettingsApi.md#upload_default_template"><strong>upload_default_template</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/settings/defaulttemplate</td>
        <td>Upload a file as the default template setting</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Files::SharingApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#apply_external_share_password"><strong>apply_external_share_password</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/share/{key}/password</td>
        <td>Apply external data password</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#change_file_owner"><strong>change_file_owner</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/owner</td>
        <td>Change the file owner</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#get_encryption_access"><strong>get_encryption_access</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/publickeys</td>
        <td>Get file encryption keys</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#get_external_share_data"><strong>get_external_share_data</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/share/{key}</td>
        <td>Get the external data</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#get_file_security_info"><strong>get_file_security_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{id}/share</td>
        <td>Get the shared file information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#get_folder_security_info"><strong>get_folder_security_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{id}/share</td>
        <td>Get the shared folder information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#get_groups_members_with_file_security"><strong>get_groups_members_with_file_security</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/group/{groupId}/share</td>
        <td>Get file group members with security information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#get_groups_members_with_folder_security"><strong>get_groups_members_with_folder_security</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/folder/{folderId}/group/{groupId}/share</td>
        <td>Get folder group members with security information</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#get_security_info"><strong>get_security_info</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/share</td>
        <td>Get the sharing rights</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#get_shared_users"><strong>get_shared_users</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/file/{fileId}/sharedusers</td>
        <td>Get user access rights by file ID</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#remove_security_info"><strong>remove_security_info</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/share</td>
        <td>Remove the sharing rights</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#send_editor_notify"><strong>send_editor_notify</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/file/{fileId}/sendeditornotify</td>
        <td>Send the mention message</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#set_file_security_info"><strong>set_file_security_info</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/file/{id}/share</td>
        <td>Share a file</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#set_folder_security_info"><strong>set_folder_security_info</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/folder/{id}/share</td>
        <td>Share a folder</td>
      </tr>
      <tr>
        <td><a href="docs/FilesSharingApi.md#set_security_info"><strong>set_security_info</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/share</td>
        <td>Set the sharing rights</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Files::ThirdPartyIntegrationApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationApi.md#delete_third_party"><strong>delete_third_party</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/thirdparty/{providerId}</td>
        <td>Remove a third-party account</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationApi.md#get_all_providers"><strong>get_all_providers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/thirdparty/providers</td>
        <td>Get all providers</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationApi.md#get_backup_third_party_account"><strong>get_backup_third_party_account</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/thirdparty/backup</td>
        <td>Get a third-party account backup</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationApi.md#get_capabilities"><strong>get_capabilities</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/thirdparty/capabilities</td>
        <td>Get providers</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationApi.md#get_common_third_party_folders"><strong>get_common_third_party_folders</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/thirdparty/common</td>
        <td>Get the common third-party services</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationApi.md#get_third_party_accounts"><strong>get_third_party_accounts</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/thirdparty</td>
        <td>Get the third-party accounts</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationApi.md#save_third_party"><strong>save_third_party</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/thirdparty</td>
        <td>Save a third-party account</td>
      </tr>
      <tr>
        <td><a href="docs/FilesThirdPartyIntegrationApi.md#save_third_party_backup"><strong>save_third_party_backup</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/thirdparty/backup</td>
        <td>Save a third-party account backup</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>Group</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Group::GroupApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/GroupApi.md#add_group"><strong>add_group</strong></a></td>
        <td><strong>POST</strong> /api/2.0/group</td>
        <td>Add a new group</td>
      </tr>
      <tr>
        <td><a href="docs/GroupApi.md#add_members_to"><strong>add_members_to</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/group/{id}/members</td>
        <td>Add group members</td>
      </tr>
      <tr>
        <td><a href="docs/GroupApi.md#delete_group"><strong>delete_group</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/group/{id}</td>
        <td>Delete a group</td>
      </tr>
      <tr>
        <td><a href="docs/GroupApi.md#get_group"><strong>get_group</strong></a></td>
        <td><strong>GET</strong> /api/2.0/group/{id}</td>
        <td>Get a group</td>
      </tr>
      <tr>
        <td><a href="docs/GroupApi.md#get_group_by_user_id"><strong>get_group_by_user_id</strong></a></td>
        <td><strong>GET</strong> /api/2.0/group/user/{userid}</td>
        <td>Get user groups</td>
      </tr>
      <tr>
        <td><a href="docs/GroupApi.md#get_groups"><strong>get_groups</strong></a></td>
        <td><strong>GET</strong> /api/2.0/group</td>
        <td>Get groups</td>
      </tr>
      <tr>
        <td><a href="docs/GroupApi.md#move_members_to"><strong>move_members_to</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/group/{fromId}/members/{toId}</td>
        <td>Move group members</td>
      </tr>
      <tr>
        <td><a href="docs/GroupApi.md#remove_members_from"><strong>remove_members_from</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/group/{id}/members</td>
        <td>Remove group members</td>
      </tr>
      <tr>
        <td><a href="docs/GroupApi.md#set_group_manager"><strong>set_group_manager</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/group/{id}/manager</td>
        <td>Set a group manager</td>
      </tr>
      <tr>
        <td><a href="docs/GroupApi.md#set_members_to"><strong>set_members_to</strong></a></td>
        <td><strong>POST</strong> /api/2.0/group/{id}/members</td>
        <td>Replace group members</td>
      </tr>
      <tr>
        <td><a href="docs/GroupApi.md#update_group"><strong>update_group</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/group/{id}</td>
        <td>Update a group</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Group::SearchApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/GroupSearchApi.md#get_groups_with_files_shared"><strong>get_groups_with_files_shared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/group/file/{id}</td>
        <td>Get groups with file sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/GroupSearchApi.md#get_groups_with_folders_shared"><strong>get_groups_with_folders_shared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/group/folder/{id}</td>
        <td>Get groups with folder sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/GroupSearchApi.md#get_groups_with_rooms_shared"><strong>get_groups_with_rooms_shared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/group/room/{id}</td>
        <td>Get groups with room sharing settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>Migration</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Migration::MigrationApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/MigrationApi.md#cancel_migration"><strong>cancel_migration</strong></a></td>
        <td><strong>POST</strong> /api/2.0/migration/cancel</td>
        <td>Cancel migration</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationApi.md#clear_migration"><strong>clear_migration</strong></a></td>
        <td><strong>POST</strong> /api/2.0/migration/clear</td>
        <td>Clear migration</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationApi.md#finish_migration"><strong>finish_migration</strong></a></td>
        <td><strong>POST</strong> /api/2.0/migration/finish</td>
        <td>Finish migration</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationApi.md#get_migration_logs"><strong>get_migration_logs</strong></a></td>
        <td><strong>GET</strong> /api/2.0/migration/logs</td>
        <td>Get migration logs</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationApi.md#get_migration_status"><strong>get_migration_status</strong></a></td>
        <td><strong>GET</strong> /api/2.0/migration/status</td>
        <td>Get migration status</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationApi.md#list_migrations"><strong>list_migrations</strong></a></td>
        <td><strong>GET</strong> /api/2.0/migration/list</td>
        <td>Get migrations</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationApi.md#start_migration"><strong>start_migration</strong></a></td>
        <td><strong>POST</strong> /api/2.0/migration/migrate</td>
        <td>Start migration</td>
      </tr>
      <tr>
        <td><a href="docs/MigrationApi.md#upload_and_initialize_migration"><strong>upload_and_initialize_migration</strong></a></td>
        <td><strong>POST</strong> /api/2.0/migration/init/{migratorName}</td>
        <td>Upload and initialize migration</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>OAuth20</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>OAuth20::AuthorizationApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20AuthorizationApi.md#authorize_o_auth"><strong>authorize_o_auth</strong></a></td>
        <td><strong>GET</strong> /oauth2/authorize</td>
        <td>OAuth2 Authorization Endpoint</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20AuthorizationApi.md#exchange_token"><strong>exchange_token</strong></a></td>
        <td><strong>POST</strong> /oauth2/token</td>
        <td>OAuth2 Token Endpoint</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20AuthorizationApi.md#submit_consent"><strong>submit_consent</strong></a></td>
        <td><strong>POST</strong> /oauth2/authorize</td>
        <td>OAuth2 consent endpoint</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>OAuth20::ClientManagementApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementApi.md#change_activation"><strong>change_activation</strong></a></td>
        <td><strong>PATCH</strong> /api/2.0/clients/{clientId}/activation</td>
        <td>Change client activation status</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementApi.md#create_client"><strong>create_client</strong></a></td>
        <td><strong>POST</strong> /api/2.0/clients</td>
        <td>Create a new OAuth2 client</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementApi.md#delete_client"><strong>delete_client</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/clients/{clientId}</td>
        <td>Delete an OAuth2 client</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementApi.md#delete_tenant_clients"><strong>delete_tenant_clients</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/clients/tenant</td>
        <td>Delete all tenant OAuth2 clients</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementApi.md#delete_user_clients"><strong>delete_user_clients</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/clients</td>
        <td>Delete all user OAuth2 clients</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementApi.md#regenerate_secret"><strong>regenerate_secret</strong></a></td>
        <td><strong>PATCH</strong> /api/2.0/clients/{clientId}/regenerate</td>
        <td>Regenerate client secret</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementApi.md#revoke_user_client"><strong>revoke_user_client</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/clients/{clientId}/revoke</td>
        <td>Revoke client consent</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientManagementApi.md#update_client"><strong>update_client</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/clients/{clientId}</td>
        <td>Update an existing OAuth2 client</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>OAuth20::ClientQueryingApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientQueryingApi.md#get_client"><strong>get_client</strong></a></td>
        <td><strong>GET</strong> /api/2.0/clients/{clientId}</td>
        <td>Get client details</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientQueryingApi.md#get_client_info"><strong>get_client_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/clients/{clientId}/info</td>
        <td>Retrieves detailed information for a specific client</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientQueryingApi.md#get_clients"><strong>get_clients</strong></a></td>
        <td><strong>GET</strong> /api/2.0/clients</td>
        <td>List clients</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientQueryingApi.md#get_clients_info"><strong>get_clients_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/clients/info</td>
        <td>Retrieves a pageable list of client information</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientQueryingApi.md#get_consents"><strong>get_consents</strong></a></td>
        <td><strong>GET</strong> /api/2.0/clients/consents</td>
        <td>Retrieves a pageable list of consents</td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ClientQueryingApi.md#get_public_client_info"><strong>get_public_client_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/clients/{clientId}/public/info</td>
        <td>Handles the GET request for public client information</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>OAuth20::DiscoveryApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20DiscoveryApi.md#handle_options"><strong>handle_options</strong></a></td>
        <td><strong>OPTIONS</strong> /.well-known/oauth-authorization-server</td>
        <td></td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>OAuth20::ScopeManagementApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/OAuth20ScopeManagementApi.md#get_scopes"><strong>get_scopes</strong></a></td>
        <td><strong>GET</strong> /api/2.0/scopes</td>
        <td>List available OAuth2 scopes</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>People</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>People::EmailApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleEmailApi.md#change_user_email"><strong>change_user_email</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/{userid}/email</td>
        <td>Change a user email</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleEmailApi.md#send_email_change_instructions"><strong>send_email_change_instructions</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/email</td>
        <td>Send instructions to change email</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>People::GuestsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleGuestsApi.md#approve_guest_share_link"><strong>approve_guest_share_link</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/guests/share/approve</td>
        <td>Approve a guest sharing link</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleGuestsApi.md#delete_guests"><strong>delete_guests</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/people/guests</td>
        <td>Delete guests</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>People::PasswordApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePasswordApi.md#change_user_password"><strong>change_user_password</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/{userid}/password</td>
        <td>Change a user password</td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePasswordApi.md#send_user_password"><strong>send_user_password</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/password</td>
        <td>Remind a user password</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>People::PhotosApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePhotosApi.md#create_member_photo_thumbnails"><strong>create_member_photo_thumbnails</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/{userid}/photo/thumbnails</td>
        <td>Create photo thumbnails</td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePhotosApi.md#delete_member_photo"><strong>delete_member_photo</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/people/{userid}/photo</td>
        <td>Delete a user photo</td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePhotosApi.md#get_member_photo"><strong>get_member_photo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/{userid}/photo</td>
        <td>Get a user photo</td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePhotosApi.md#update_member_photo"><strong>update_member_photo</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/{userid}/photo</td>
        <td>Update a user photo</td>
      </tr>
      <tr>
        <td><a href="docs/PeoplePhotosApi.md#upload_member_photo"><strong>upload_member_photo</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/{userid}/photo</td>
        <td>Upload a user photo</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>People::ProfilesApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#add_member"><strong>add_member</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people</td>
        <td>Add a user</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#check_user_exists_by_email"><strong>check_user_exists_by_email</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/exists</td>
        <td>Check if a user exists by email</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#delete_member"><strong>delete_member</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/people/{userid}</td>
        <td>Delete a user</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#delete_profile"><strong>delete_profile</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/people/@self</td>
        <td>Delete my profile</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#get_all_profiles"><strong>get_all_profiles</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people</td>
        <td>Get profiles</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#get_claims"><strong>get_claims</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/tokendiagnostics</td>
        <td>Get user claims</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#get_profile_by_email"><strong>get_profile_by_email</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/email</td>
        <td>Get a profile by user email</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#get_profile_by_user_id"><strong>get_profile_by_user_id</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/{userid}</td>
        <td>Get a profile by user ID</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#get_self_profile"><strong>get_self_profile</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/@self</td>
        <td>Get my profile</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#invite_users"><strong>invite_users</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/invite</td>
        <td>Invite users</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#remove_users"><strong>remove_users</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/delete</td>
        <td>Delete users</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#resend_user_invites"><strong>resend_user_invites</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/invite</td>
        <td>Resend activation emails</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#update_member"><strong>update_member</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/{userid}</td>
        <td>Update a user</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleProfilesApi.md#update_member_culture"><strong>update_member_culture</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/{userid}/culture</td>
        <td>Update a user culture</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>People::QuotaApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleQuotaApi.md#reset_users_quota"><strong>reset_users_quota</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/resetquota</td>
        <td>Reset a user quota limit</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleQuotaApi.md#update_user_quota"><strong>update_user_quota</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/userquota</td>
        <td>Change a user quota limit</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>People::SearchApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchApi.md#get_accounts_entries_with_files_shared"><strong>get_accounts_entries_with_files_shared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/accounts/file/{id}/search</td>
        <td>Get account entries with file sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchApi.md#get_accounts_entries_with_folders_shared"><strong>get_accounts_entries_with_folders_shared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/accounts/folder/{id}/search</td>
        <td>Get account entries with folder sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchApi.md#get_accounts_entries_with_rooms_shared"><strong>get_accounts_entries_with_rooms_shared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/accounts/room/{id}/search</td>
        <td>Get account entries</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchApi.md#get_search"><strong>get_search</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/@search/{query}</td>
        <td>Search users</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchApi.md#get_simple_by_filter"><strong>get_simple_by_filter</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/simple/filter</td>
        <td>Search users by extended filter</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchApi.md#get_users_with_files_shared"><strong>get_users_with_files_shared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/file/{id}</td>
        <td>Get users with file sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchApi.md#get_users_with_folders_shared"><strong>get_users_with_folders_shared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/folder/{id}</td>
        <td>Get users with folder sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchApi.md#get_users_with_room_shared"><strong>get_users_with_room_shared</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/room/{id}</td>
        <td>Get users with room sharing settings</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchApi.md#search_users_by_extended_filter"><strong>search_users_by_extended_filter</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/filter</td>
        <td>Search users with detailed information by extended filter</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchApi.md#search_users_by_query"><strong>search_users_by_query</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/search</td>
        <td>Search users (using query parameters)</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleSearchApi.md#search_users_by_status"><strong>search_users_by_status</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/status/{status}/search</td>
        <td>Search users by status filter</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>People::ThemeApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleThemeApi.md#change_portal_theme"><strong>change_portal_theme</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/theme</td>
        <td>Change the portal theme</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleThemeApi.md#get_portal_theme"><strong>get_portal_theme</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/theme</td>
        <td>Get the portal theme</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>People::ThirdPartyAccountsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleThirdPartyAccountsApi.md#get_third_party_auth_providers"><strong>get_third_party_auth_providers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/thirdparty/providers</td>
        <td>Get third-party accounts</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleThirdPartyAccountsApi.md#link_third_party_account"><strong>link_third_party_account</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/thirdparty/linkaccount</td>
        <td>Link a third-pary account</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleThirdPartyAccountsApi.md#signup_third_party_account"><strong>signup_third_party_account</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/thirdparty/signup</td>
        <td>Create a third-pary account</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleThirdPartyAccountsApi.md#unlink_third_party_account"><strong>unlink_third_party_account</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/people/thirdparty/unlinkaccount</td>
        <td>Unlink a third-pary account</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>People::UserDataApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataApi.md#get_delete_personal_folder_progress"><strong>get_delete_personal_folder_progress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/delete/personal/progress</td>
        <td>Get the progress of deleting the personal folder</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataApi.md#get_reassign_progress"><strong>get_reassign_progress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/reassign/progress/{userid}</td>
        <td>Get the reassignment progress</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataApi.md#get_remove_progress"><strong>get_remove_progress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/remove/progress/{userid}</td>
        <td>Get the deletion progress</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataApi.md#necessary_reassign"><strong>necessary_reassign</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/reassign/necessary</td>
        <td>Check data for reassignment need</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataApi.md#send_instructions_to_delete"><strong>send_instructions_to_delete</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/self/delete</td>
        <td>Send the deletion instructions</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataApi.md#start_delete_personal_folder"><strong>start_delete_personal_folder</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/delete/personal/start</td>
        <td>Delete the personal folder</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataApi.md#start_reassign"><strong>start_reassign</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/reassign/start</td>
        <td>Start the data reassignment</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataApi.md#start_remove"><strong>start_remove</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/remove/start</td>
        <td>Start the data deletion</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataApi.md#terminate_reassign"><strong>terminate_reassign</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/reassign/terminate</td>
        <td>Terminate the data reassignment</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserDataApi.md#terminate_remove"><strong>terminate_remove</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/remove/terminate</td>
        <td>Terminate the data deletion</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>People::UserStatusApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserStatusApi.md#get_by_status"><strong>get_by_status</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/status/{status}</td>
        <td>Get profiles by status</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserStatusApi.md#update_user_activation_status"><strong>update_user_activation_status</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/activationstatus/{activationstatus}</td>
        <td>Set an activation status to the users</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserStatusApi.md#update_user_status"><strong>update_user_status</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/status/{status}</td>
        <td>Change a user status</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>People::UserTypeApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserTypeApi.md#get_user_type_update_progress"><strong>get_user_type_update_progress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/type/progress/{userid}</td>
        <td>Get the progress of updating user type</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserTypeApi.md#start_user_type_update"><strong>start_user_type_update</strong></a></td>
        <td><strong>POST</strong> /api/2.0/people/type</td>
        <td>Start updating user type</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserTypeApi.md#terminate_user_type_update"><strong>terminate_user_type_update</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/type/terminate</td>
        <td>Terminate updating user type</td>
      </tr>
      <tr>
        <td><a href="docs/PeopleUserTypeApi.md#update_user_type"><strong>update_user_type</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/people/type/{type}</td>
        <td>Change a user type</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>Portal</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Portal::GuestsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PortalGuestsApi.md#get_guest_sharing_link"><strong>get_guest_sharing_link</strong></a></td>
        <td><strong>GET</strong> /api/2.0/people/guests/{userid}/share</td>
        <td>Get a guest sharing link</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Portal::PaymentApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#calculate_wallet_payment"><strong>calculate_wallet_payment</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/payment/calculatewallet</td>
        <td>Calculate the wallet payment amount</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#change_tenant_wallet_service_state"><strong>change_tenant_wallet_service_state</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/servicestate</td>
        <td>Change tenant wallet service state</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#create_customer_monthly_usage_report"><strong>create_customer_monthly_usage_report</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/customer/usage/monthly/report</td>
        <td>Start the customer monthly usage report generation</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#create_customer_operations_report"><strong>create_customer_operations_report</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/customer/operationsreport</td>
        <td>Start the customer operations report generation</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#create_customer_service_usage_report"><strong>create_customer_service_usage_report</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/customer/usage/report</td>
        <td>Start the customer service usage report generation</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_active_services"><strong>get_active_services</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/activeservices</td>
        <td>Get the active wallet services</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_ai_prices"><strong>get_ai_prices</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/ai-prices</td>
        <td>Get AI model prices</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_checkout_setup_url"><strong>get_checkout_setup_url</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/checkoutsetupurl</td>
        <td>Get the checkout setup page URL</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_customer_balance"><strong>get_customer_balance</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customer/balance</td>
        <td>Get the customer balance</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_customer_info"><strong>get_customer_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customerinfo</td>
        <td>Get the customer information</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_customer_monthly_usage"><strong>get_customer_monthly_usage</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customer/usage/monthly</td>
        <td>Get the customer monthly usage</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_customer_monthly_usage_report"><strong>get_customer_monthly_usage_report</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customer/usage/monthly/report</td>
        <td>Get the status of the customer monthly usage report generation</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_customer_operations"><strong>get_customer_operations</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customer/operations</td>
        <td>Get the customer operations</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_customer_operations_report"><strong>get_customer_operations_report</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customer/operationsreport</td>
        <td>Get the status of the customer operations report generation</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_customer_service_usage"><strong>get_customer_service_usage</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customer/usage</td>
        <td>Get the customer service usage</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_customer_service_usage_report"><strong>get_customer_service_usage_report</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/customer/usage/report</td>
        <td>Get the status of the customer service usage report generation</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_payment_account"><strong>get_payment_account</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/account</td>
        <td>Get the payment account</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_payment_currencies"><strong>get_payment_currencies</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/currencies</td>
        <td>Get currencies</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_payment_quotas"><strong>get_payment_quotas</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/quotas</td>
        <td>Get quotas</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_payment_url"><strong>get_payment_url</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/payment/url</td>
        <td>Get the payment page URL</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_portal_prices"><strong>get_portal_prices</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/prices</td>
        <td>Get prices</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_quota_payment_information"><strong>get_quota_payment_information</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/quota</td>
        <td>Get quota payment information</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_restricted_ai_models"><strong>get_restricted_ai_models</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/ai-model/restrictions</td>
        <td>Get restricted AI models</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_subscription_balance_info"><strong>get_subscription_balance_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/subscription/balance</td>
        <td>Get the subscription balance information</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_tenant_wallet_service_settings"><strong>get_tenant_wallet_service_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/servicessettings</td>
        <td>Gets the wallet service settings for the tenant.</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_tenant_wallet_settings"><strong>get_tenant_wallet_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/topupsettings</td>
        <td>Gets the tenant wallet auto top up settings</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_wallet_service"><strong>get_wallet_service</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/walletservice</td>
        <td>Get wallet service</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#get_wallet_services"><strong>get_wallet_services</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/payment/walletservices</td>
        <td>Get wallet services</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#move_subscription_to_wallet"><strong>move_subscription_to_wallet</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/subscription/movetowallet</td>
        <td>Move the subscription balance to the wallet and purchase admins</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#send_payment_request"><strong>send_payment_request</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/request</td>
        <td>Send a payment request</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#set_restricted_ai_models"><strong>set_restricted_ai_models</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/payment/ai-model/restrictions</td>
        <td>Set restricted AI models</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#set_tenant_wallet_settings"><strong>set_tenant_wallet_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/topupsettings</td>
        <td>Set the wallet auto top up settings</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#terminate_customer_monthly_usage_report"><strong>terminate_customer_monthly_usage_report</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/portal/payment/customer/usage/monthly/report</td>
        <td>Terminate the customer monthly usage report generation</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#terminate_customer_operations_report"><strong>terminate_customer_operations_report</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/portal/payment/customer/operationsreport</td>
        <td>Terminate the customer operations report generation</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#terminate_customer_service_usage_report"><strong>terminate_customer_service_usage_report</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/portal/payment/customer/usage/report</td>
        <td>Terminate the customer service usage report generation</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#top_up_deposit"><strong>top_up_deposit</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/payment/deposit</td>
        <td>Put money on deposit</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#update_payment"><strong>update_payment</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/payment/update</td>
        <td>Update the payment quantity</td>
      </tr>
      <tr>
        <td><a href="docs/PortalPaymentApi.md#update_wallet_payment"><strong>update_wallet_payment</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/payment/updatewallet</td>
        <td>Update the wallet payment quantity</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Portal::QuotaApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PortalQuotaApi.md#get_portal_quota"><strong>get_portal_quota</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/quota</td>
        <td>Get a portal quota</td>
      </tr>
      <tr>
        <td><a href="docs/PortalQuotaApi.md#get_portal_tariff"><strong>get_portal_tariff</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/tariff</td>
        <td>Get a portal tariff</td>
      </tr>
      <tr>
        <td><a href="docs/PortalQuotaApi.md#get_portal_used_space"><strong>get_portal_used_space</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/usedspace</td>
        <td>Get the portal used space</td>
      </tr>
      <tr>
        <td><a href="docs/PortalQuotaApi.md#get_right_quota"><strong>get_right_quota</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/quota/right</td>
        <td>Get the recommended quota</td>
      </tr>
      <tr>
        <td><a href="docs/PortalQuotaApi.md#get_upcoming_payments"><strong>get_upcoming_payments</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/tariff/upcoming</td>
        <td>Get upcoming payments</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Portal::SettingsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsApi.md#continue_portal"><strong>continue_portal</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/continue</td>
        <td>Restore a portal</td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsApi.md#delete_portal"><strong>delete_portal</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/portal/delete</td>
        <td>Delete a portal</td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsApi.md#get_portal_information"><strong>get_portal_information</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal</td>
        <td>Get a portal</td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsApi.md#get_portal_path"><strong>get_portal_path</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/path</td>
        <td>Get a path to the portal</td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsApi.md#send_delete_instructions"><strong>send_delete_instructions</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/delete</td>
        <td>Send removal instructions</td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsApi.md#send_suspend_instructions"><strong>send_suspend_instructions</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/suspend</td>
        <td>Send suspension instructions</td>
      </tr>
      <tr>
        <td><a href="docs/PortalSettingsApi.md#suspend_portal"><strong>suspend_portal</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/suspend</td>
        <td>Deactivate a portal</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Portal::UsersApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersApi.md#create_invitation_link"><strong>create_invitation_link</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/users/invitationlink</td>
        <td>Create an invitation link</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersApi.md#delete_invitation_link"><strong>delete_invitation_link</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/portal/users/invitationlink</td>
        <td>Deletes an invitation link.</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersApi.md#get_invitation_link"><strong>get_invitation_link</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/users/invite/{employeeType}</td>
        <td>Get an invitation link</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersApi.md#get_invitation_link_by_employee_type"><strong>get_invitation_link_by_employee_type</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/users/invitationlink/{employeeType}</td>
        <td>Get an invitation link</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersApi.md#get_portal_users_count"><strong>get_portal_users_count</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/userscount</td>
        <td>Get a number of portal users</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersApi.md#get_user_by_id"><strong>get_user_by_id</strong></a></td>
        <td><strong>GET</strong> /api/2.0/portal/users/{userID}</td>
        <td>Get a user by ID</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersApi.md#mark_gift_message_as_read"><strong>mark_gift_message_as_read</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/present/mark</td>
        <td>Mark a gift message as read</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersApi.md#send_congratulations"><strong>send_congratulations</strong></a></td>
        <td><strong>POST</strong> /api/2.0/portal/sendcongratulations</td>
        <td>Send congratulations</td>
      </tr>
      <tr>
        <td><a href="docs/PortalUsersApi.md#update_invitation_link"><strong>update_invitation_link</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/portal/users/invitationlink</td>
        <td>Update an invitation link</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>Rooms</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Rooms::RoomsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#add_room_tags"><strong>add_room_tags</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/tags</td>
        <td>Add the room tags</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#archive_room"><strong>archive_room</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/archive</td>
        <td>Archive a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#change_room_cover"><strong>change_room_cover</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/{id}/cover</td>
        <td>Change the room cover</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#create_room"><strong>create_room</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms</td>
        <td>Create a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#create_room_from_template"><strong>create_room_from_template</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/fromtemplate</td>
        <td>Create a room from the template</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#create_room_logo"><strong>create_room_logo</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/{id}/logo</td>
        <td>Create a room logo</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#create_room_tag"><strong>create_room_tag</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/tags</td>
        <td>Create a room tag</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#create_room_template"><strong>create_room_template</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/roomtemplate</td>
        <td>Start creating room template</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#create_room_third_party"><strong>create_room_third_party</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/thirdparty/{id}</td>
        <td>Create a third-party room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#delete_custom_tags"><strong>delete_custom_tags</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/tags</td>
        <td>Delete the custom room tags</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#delete_room"><strong>delete_room</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/rooms/{id}</td>
        <td>Remove a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#delete_room_logo"><strong>delete_room_logo</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/rooms/{id}/logo</td>
        <td>Remove a room logo</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#delete_room_tags"><strong>delete_room_tags</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/rooms/{id}/tags</td>
        <td>Remove the room tags</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_external_db_sync_status"><strong>get_external_db_sync_status</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/{id}/externaldbsync</td>
        <td>Get external DB sync status</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_new_room_items"><strong>get_new_room_items</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/{id}/news</td>
        <td>Get the new room items</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_public_settings"><strong>get_public_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/roomtemplate/{id}/public</td>
        <td>Get public settings</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_room_covers"><strong>get_room_covers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/covers</td>
        <td>Get covers</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_room_creating_status"><strong>get_room_creating_status</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/fromtemplate/status</td>
        <td>Get the room creation progress</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_room_index_export"><strong>get_room_index_export</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/indexexport</td>
        <td>Get the room index export</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_room_info"><strong>get_room_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/{id}</td>
        <td>Get room information</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_room_links"><strong>get_room_links</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/{id}/links</td>
        <td>Get the room links</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_room_security_info"><strong>get_room_security_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/{id}/share</td>
        <td>Get the room access rights</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_room_tags_info"><strong>get_room_tags_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/tags</td>
        <td>Get the room tags</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_room_template_creating_status"><strong>get_room_template_creating_status</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/roomtemplate/status</td>
        <td>Get status of room template creation</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_rooms_folder"><strong>get_rooms_folder</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms</td>
        <td>Get rooms</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_rooms_new_items"><strong>get_rooms_new_items</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/news</td>
        <td>Get the room new items</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#get_rooms_primary_external_link"><strong>get_rooms_primary_external_link</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/rooms/{id}/link</td>
        <td>Get the room primary external link</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#has_tag_links"><strong>has_tag_links</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/tags/{tagName}/haslinks</td>
        <td>Has tag links</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#pin_room"><strong>pin_room</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/pin</td>
        <td>Pin a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#reorder_room"><strong>reorder_room</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/reorder</td>
        <td>Reorder the room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#resend_email_invitations"><strong>resend_email_invitations</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/{id}/resend</td>
        <td>Resend the room invitations</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#set_public_settings"><strong>set_public_settings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/roomtemplate/public</td>
        <td>Set public settings</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#set_room_link"><strong>set_room_link</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/links</td>
        <td>Set the room external or invitation link</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#set_room_security"><strong>set_room_security</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/share</td>
        <td>Set the room access rights</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#start_external_db_sync"><strong>start_external_db_sync</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/{id}/externaldbsync</td>
        <td>Start external DB sync</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#start_room_index_export"><strong>start_room_index_export</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/rooms/{id}/indexexport</td>
        <td>Start the room index export</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#terminate_room_index_export"><strong>terminate_room_index_export</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/rooms/indexexport</td>
        <td>Terminate the room index export</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#unarchive_room"><strong>unarchive_room</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/unarchive</td>
        <td>Unarchive a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#unpin_room"><strong>unpin_room</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}/unpin</td>
        <td>Unpin a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#update_room"><strong>update_room</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/rooms/{id}</td>
        <td>Update a room</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#update_room_tag"><strong>update_room_tag</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/tags</td>
        <td>Update tag</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsApi.md#upload_room_logo"><strong>upload_room_logo</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/logos</td>
        <td>Upload a room logo image</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Rooms::GroupsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/RoomsGroupsApi.md#add_room_group"><strong>add_room_group</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/group</td>
        <td>Add a new room group</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsGroupsApi.md#change_room_group_icon"><strong>change_room_group_icon</strong></a></td>
        <td><strong>POST</strong> /api/2.0/files/group/{id}/icon</td>
        <td>Change group icon</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsGroupsApi.md#delete_room_group"><strong>delete_room_group</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/files/group/{id}</td>
        <td>Delete group</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsGroupsApi.md#get_room_group_info"><strong>get_room_group_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/group/{id}</td>
        <td>Get room group info</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsGroupsApi.md#get_room_groups"><strong>get_room_groups</strong></a></td>
        <td><strong>GET</strong> /api/2.0/files/group</td>
        <td>List room groups</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsGroupsApi.md#update_room_group"><strong>update_room_group</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/files/group/{id}</td>
        <td>Update room group</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Rooms::PrivacyRoomApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/RoomsPrivacyRoomApi.md#delete_keys"><strong>delete_keys</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/privacyroom/keys/{id}</td>
        <td>Deletes an encryption key and removes it from the system.</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsPrivacyRoomApi.md#get_user_keys"><strong>get_user_keys</strong></a></td>
        <td><strong>GET</strong> /api/2.0/privacyroom/keys</td>
        <td>Retrieves encryption keys associated with the current user.</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsPrivacyRoomApi.md#get_user_keys_for_room"><strong>get_user_keys_for_room</strong></a></td>
        <td><strong>GET</strong> /api/2.0/privacyroom/{roomId}/access</td>
        <td>Retrieves the encryption keys associated with a specific privacy room.</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsPrivacyRoomApi.md#replace_key"><strong>replace_key</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/privacyroom/keys</td>
        <td>Replaces an existing encryption key with a new one for the user.</td>
      </tr>
      <tr>
        <td><a href="docs/RoomsPrivacyRoomApi.md#set_keys"><strong>set_keys</strong></a></td>
        <td><strong>POST</strong> /api/2.0/privacyroom/keys</td>
        <td>Creates and sets encryption keys for the user.</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>Security</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Security::AccessToDevToolsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAccessToDevToolsApi.md#set_tenant_dev_tools_access_settings"><strong>set_tenant_dev_tools_access_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/devtoolsaccess</td>
        <td>Set the Developer Tools access settings</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Security::ActiveConnectionsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityActiveConnectionsApi.md#get_all_active_connections"><strong>get_all_active_connections</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/activeconnections</td>
        <td>Get active connections</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityActiveConnectionsApi.md#log_out_active_connection"><strong>log_out_active_connection</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/security/activeconnections/logout/{loginEventId}</td>
        <td>Log out from the connection</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityActiveConnectionsApi.md#log_out_all_active_connections_change_password"><strong>log_out_all_active_connections_change_password</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/security/activeconnections/logoutallchangepassword</td>
        <td>Log out and change password</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityActiveConnectionsApi.md#log_out_all_active_connections_for_user"><strong>log_out_all_active_connections_for_user</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/security/activeconnections/logoutall/{userId}</td>
        <td>Log out for the user by ID</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityActiveConnectionsApi.md#log_out_all_except_this_connection"><strong>log_out_all_except_this_connection</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/security/activeconnections/logoutallexceptthis</td>
        <td>Log out from all connections except the current one</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Security::AuditTrailDataApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataApi.md#create_audit_trail_report"><strong>create_audit_trail_report</strong></a></td>
        <td><strong>POST</strong> /api/2.0/security/audit/events/report</td>
        <td>Start the audit trail report generation</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataApi.md#get_audit_events_by_filter"><strong>get_audit_events_by_filter</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/events/filter</td>
        <td>Get filtered audit trail data</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataApi.md#get_audit_settings"><strong>get_audit_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/settings/lifetime</td>
        <td>Get the audit trail settings</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataApi.md#get_audit_trail_mappers"><strong>get_audit_trail_mappers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/mappers</td>
        <td>Get audit trail mappers</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataApi.md#get_audit_trail_report"><strong>get_audit_trail_report</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/events/report</td>
        <td>Get the audit trail report generation status</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataApi.md#get_audit_trail_types"><strong>get_audit_trail_types</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/types</td>
        <td>Get audit trail types</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataApi.md#get_last_audit_events"><strong>get_last_audit_events</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/events/last</td>
        <td>Get audit trail data</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataApi.md#set_audit_settings"><strong>set_audit_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/security/audit/settings/lifetime</td>
        <td>Set the audit trail settings</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityAuditTrailDataApi.md#terminate_audit_trail_report"><strong>terminate_audit_trail_report</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/security/audit/events/report</td>
        <td>Terminate the audit trail report generation</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Security::BannersVisibilityApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityBannersVisibilityApi.md#set_tenant_banner_settings"><strong>set_tenant_banner_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/banner</td>
        <td>Set the banners visibility</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Security::CSPApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityCSPApi.md#configure_csp"><strong>configure_csp</strong></a></td>
        <td><strong>POST</strong> /api/2.0/security/csp</td>
        <td>Configure CSP settings</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityCSPApi.md#get_csp_settings"><strong>get_csp_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/csp</td>
        <td>Get CSP settings</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Security::FirebaseApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityFirebaseApi.md#doc_register_pusn_notification_device"><strong>doc_register_pusn_notification_device</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/push/docregisterdevice</td>
        <td>Save the Documents Firebase device token</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityFirebaseApi.md#subscribe_documents_push_notification"><strong>subscribe_documents_push_notification</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/push/docsubscribe</td>
        <td>Subscribe to Documents push notification</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Security::LoginHistoryApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityLoginHistoryApi.md#create_login_history_report"><strong>create_login_history_report</strong></a></td>
        <td><strong>POST</strong> /api/2.0/security/audit/login/report</td>
        <td>Start the login history report generation</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityLoginHistoryApi.md#get_last_login_events"><strong>get_last_login_events</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/login/last</td>
        <td>Get login history</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityLoginHistoryApi.md#get_login_events_by_filter"><strong>get_login_events_by_filter</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/login/filter</td>
        <td>Get filtered login events</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityLoginHistoryApi.md#get_login_history_report"><strong>get_login_history_report</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/audit/login/report</td>
        <td>Get the login history report generation status</td>
      </tr>
      <tr>
        <td><a href="docs/SecurityLoginHistoryApi.md#terminate_login_history_report"><strong>terminate_login_history_report</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/security/audit/login/report</td>
        <td>Terminate the login history report generation</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Security::OAuth2Api</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecurityOAuth2Api.md#generate_jwt_token"><strong>generate_jwt_token</strong></a></td>
        <td><strong>GET</strong> /api/2.0/security/oauth2/token</td>
        <td>Generate JWT token</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Security::SMTPSettingsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SecuritySMTPSettingsApi.md#get_smtp_operation_status"><strong>get_smtp_operation_status</strong></a></td>
        <td><strong>GET</strong> /api/2.0/smtpsettings/smtp/test/status</td>
        <td>Get the SMTP testing process status</td>
      </tr>
      <tr>
        <td><a href="docs/SecuritySMTPSettingsApi.md#get_smtp_settings"><strong>get_smtp_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/smtpsettings/smtp</td>
        <td>Get the SMTP settings</td>
      </tr>
      <tr>
        <td><a href="docs/SecuritySMTPSettingsApi.md#reset_smtp_settings"><strong>reset_smtp_settings</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/smtpsettings/smtp</td>
        <td>Reset the SMTP settings</td>
      </tr>
      <tr>
        <td><a href="docs/SecuritySMTPSettingsApi.md#save_smtp_settings"><strong>save_smtp_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/smtpsettings/smtp</td>
        <td>Save the SMTP settings</td>
      </tr>
      <tr>
        <td><a href="docs/SecuritySMTPSettingsApi.md#test_smtp_settings"><strong>test_smtp_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/smtpsettings/smtp/test</td>
        <td>Test the SMTP settings</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>Settings</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::AccessToDevToolsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsAccessToDevToolsApi.md#get_tenant_access_dev_tools_settings"><strong>get_tenant_access_dev_tools_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/devtoolsaccess</td>
        <td>Get the Developer Tools access settings</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::AuthorizationApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsAuthorizationApi.md#get_auth_services"><strong>get_auth_services</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/authservice</td>
        <td>Get the authorization services</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsAuthorizationApi.md#save_auth_keys"><strong>save_auth_keys</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/authservice</td>
        <td>Save the authorization keys</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsAuthorizationApi.md#test_external_database_connection"><strong>test_external_database_connection</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/authservice/externaldb/test</td>
        <td>Test external database connection</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::BannersVisibilityApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsBannersVisibilityApi.md#get_tenant_banner_settings"><strong>get_tenant_banner_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/banner</td>
        <td>Get the banners visibility</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::CommonSettingsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#close_admin_helper"><strong>close_admin_helper</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/closeadminhelper</td>
        <td>Close the admin helper</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#complete_wizard"><strong>complete_wizard</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/wizard/complete</td>
        <td>Complete the Wizard settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#configure_deep_link"><strong>configure_deep_link</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/deeplink</td>
        <td>Configure the deep link settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#delete_portal_color_theme"><strong>delete_portal_color_theme</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/colortheme</td>
        <td>Delete a color theme</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#get_deep_link_settings"><strong>get_deep_link_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/deeplink</td>
        <td>Get the deep link settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#get_payment_settings"><strong>get_payment_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/payment</td>
        <td>Get the payment settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#get_portal_color_theme"><strong>get_portal_color_theme</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/colortheme</td>
        <td>Get a color theme</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#get_portal_hostname"><strong>get_portal_hostname</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/machine</td>
        <td>Get hostname</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#get_portal_logo"><strong>get_portal_logo</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/logo</td>
        <td>Get a portal logo</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#get_portal_settings"><strong>get_portal_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings</td>
        <td>Get the portal settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#get_socket_settings"><strong>get_socket_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/socket</td>
        <td>Get the socket settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#get_supported_cultures"><strong>get_supported_cultures</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/cultures</td>
        <td>Get supported languages</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#get_tenant_ai_access_settings"><strong>get_tenant_ai_access_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/ai-access</td>
        <td>Get the AI access settings for the portal</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#get_tenant_user_invitation_settings"><strong>get_tenant_user_invitation_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/invitationsettings</td>
        <td>Get the user invitation settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#get_time_zones"><strong>get_time_zones</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/timezones</td>
        <td>Get time zones</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#save_default_folder"><strong>save_default_folder</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/defaultfolder</td>
        <td>Set the default folder</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#save_dns_settings"><strong>save_dns_settings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/dns</td>
        <td>Save the DNS settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#save_mail_domain_settings"><strong>save_mail_domain_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/maildomainsettings</td>
        <td>Save the mail domain settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#save_portal_color_theme"><strong>save_portal_color_theme</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/colortheme</td>
        <td>Save a color theme</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#set_tenant_ai_access_settings"><strong>set_tenant_ai_access_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/ai-access</td>
        <td>Set the AI access for the portal</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#update_email_activation_settings"><strong>update_email_activation_settings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/emailactivation</td>
        <td>Update the email activation settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCommonSettingsApi.md#update_invitation_settings"><strong>update_invitation_settings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/invitationsettings</td>
        <td>Update user invitation settings</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::CookiesApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCookiesApi.md#get_cookie_settings"><strong>get_cookie_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/cookiesettings</td>
        <td>Get cookies lifetime</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsCookiesApi.md#update_cookie_settings"><strong>update_cookie_settings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/cookiesettings</td>
        <td>Update cookies lifetime</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::DocsCloudApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsDocsCloudApi.md#calculate_dev_pack"><strong>calculate_dev_pack</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/docscloud/calculatedevpack</td>
        <td>Calculate the DocsCloud subscription switch cost</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsDocsCloudApi.md#create_tenant_quota_report"><strong>create_tenant_quota_report</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/docscloud/tenant/quota/report</td>
        <td>Start the DocsCloud tenant quota report generation</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsDocsCloudApi.md#get_tenant"><strong>get_tenant</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/docscloud/tenant</td>
        <td>Get the DocsCloud tenant</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsDocsCloudApi.md#get_tenant_config"><strong>get_tenant_config</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/docscloud/tenant/config</td>
        <td>Get the DocsCloud tenant configuration</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsDocsCloudApi.md#get_tenant_info"><strong>get_tenant_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/docscloud/tenant/info</td>
        <td>Get the DocsCloud tenant information</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsDocsCloudApi.md#get_tenant_quota"><strong>get_tenant_quota</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/docscloud/tenant/quota</td>
        <td>Get the DocsCloud tenant quota</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsDocsCloudApi.md#get_tenant_quota_report"><strong>get_tenant_quota_report</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/docscloud/tenant/quota/report</td>
        <td>Get the status of the DocsCloud tenant quota report generation</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsDocsCloudApi.md#get_tenant_usage"><strong>get_tenant_usage</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/docscloud/tenant/usage</td>
        <td>Get the DocsCloud tenant usage</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsDocsCloudApi.md#start_docs_cloud_trial"><strong>start_docs_cloud_trial</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/docscloud/trial</td>
        <td>Start the DocsCloud trial</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsDocsCloudApi.md#switch_to_dev_pack"><strong>switch_to_dev_pack</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/docscloud/switchtodevpack</td>
        <td>Switch the DocsCloud subscription to DocsCloudDevPack</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsDocsCloudApi.md#terminate_tenant_quota_report"><strong>terminate_tenant_quota_report</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/docscloud/tenant/quota/report</td>
        <td>Terminate the DocsCloud tenant quota report generation</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsDocsCloudApi.md#update_tenant_config"><strong>update_tenant_config</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/docscloud/tenant/config</td>
        <td>Update the DocsCloud tenant configuration</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::EncryptionApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsEncryptionApi.md#get_storage_encryption_progress"><strong>get_storage_encryption_progress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/encryption/progress</td>
        <td>Get the storage encryption progress</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsEncryptionApi.md#get_storage_encryption_settings"><strong>get_storage_encryption_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/encryption/settings</td>
        <td>Get the storage encryption settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsEncryptionApi.md#start_storage_encryption"><strong>start_storage_encryption</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/encryption/start</td>
        <td>Start the storage encryption process</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::GreetingSettingsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsGreetingSettingsApi.md#get_greeting_settings"><strong>get_greeting_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/greetingsettings</td>
        <td>Get greeting settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsGreetingSettingsApi.md#get_is_default_greeting_settings"><strong>get_is_default_greeting_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/greetingsettings/isdefault</td>
        <td>Check the default greeting settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsGreetingSettingsApi.md#restore_greeting_settings"><strong>restore_greeting_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/greetingsettings/restore</td>
        <td>Restore the greeting settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsGreetingSettingsApi.md#save_greeting_settings"><strong>save_greeting_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/greetingsettings</td>
        <td>Save the greeting settings</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::IPRestrictionsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsIPRestrictionsApi.md#get_ip_restrictions"><strong>get_ip_restrictions</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/iprestrictions</td>
        <td>Get the IP portal restrictions</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsIPRestrictionsApi.md#read_ip_restrictions_settings"><strong>read_ip_restrictions_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/iprestrictions/settings</td>
        <td>Get the IP restriction settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsIPRestrictionsApi.md#save_ip_restrictions"><strong>save_ip_restrictions</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/iprestrictions</td>
        <td>Update the IP restrictions</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsIPRestrictionsApi.md#update_ip_restrictions_settings"><strong>update_ip_restrictions_settings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/iprestrictions/settings</td>
        <td>Update the IP restriction settings</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::LicenseApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLicenseApi.md#accept_license"><strong>accept_license</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/license/accept</td>
        <td>Activate a license</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLicenseApi.md#get_is_license_required"><strong>get_is_license_required</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/license/required</td>
        <td>Request a license</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLicenseApi.md#refresh_license"><strong>refresh_license</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/license/refresh</td>
        <td>Refresh the license</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLicenseApi.md#upload_license"><strong>upload_license</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/license</td>
        <td>Upload a license</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::LoginSettingsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLoginSettingsApi.md#get_login_settings"><strong>get_login_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security/loginsettings</td>
        <td>Get the login settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLoginSettingsApi.md#set_default_login_settings"><strong>set_default_login_settings</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/security/loginsettings</td>
        <td>Reset the login settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsLoginSettingsApi.md#update_login_settings"><strong>update_login_settings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/security/loginsettings</td>
        <td>Update the login settings</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::MessagesApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsMessagesApi.md#enable_admin_message_settings"><strong>enable_admin_message_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/messagesettings</td>
        <td>Enable the administrator message settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsMessagesApi.md#send_admin_mail"><strong>send_admin_mail</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/sendadmmail</td>
        <td>Send a message to the administrator</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsMessagesApi.md#send_join_invite_mail"><strong>send_join_invite_mail</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/sendjoininvite</td>
        <td>Sends an invitation email</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::NotificationsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsNotificationsApi.md#get_notification_channels"><strong>get_notification_channels</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/notification/channels</td>
        <td>Get notification channels</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsNotificationsApi.md#get_notification_settings"><strong>get_notification_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/notification/{type}</td>
        <td>Check notification availability</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsNotificationsApi.md#get_rooms_notification_settings"><strong>get_rooms_notification_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/notification/rooms</td>
        <td>Get room notification settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsNotificationsApi.md#set_notification_settings"><strong>set_notification_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/notification</td>
        <td>Enable notifications</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsNotificationsApi.md#set_rooms_notification_status"><strong>set_rooms_notification_status</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/notification/rooms</td>
        <td>Set room notification status</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::OwnerApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsOwnerApi.md#send_owner_change_instructions"><strong>send_owner_change_instructions</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/owner</td>
        <td>Send the owner change instructions</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsOwnerApi.md#update_portal_owner"><strong>update_portal_owner</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/owner</td>
        <td>Update the portal owner</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::QuotaApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsQuotaApi.md#get_user_quota_settings"><strong>get_user_quota_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/userquotasettings</td>
        <td>Get the user quota settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsQuotaApi.md#save_ai_agent_quota_settings"><strong>save_ai_agent_quota_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/aiagentquotasettings</td>
        <td>Save the AI Agent quota settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsQuotaApi.md#save_room_quota_settings"><strong>save_room_quota_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/roomquotasettings</td>
        <td>Save the room quota settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsQuotaApi.md#set_tenant_quota_settings"><strong>set_tenant_quota_settings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/tenantquotasettings</td>
        <td>Save the tenant quota settings</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::RebrandingApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#delete_additional_white_label_settings"><strong>delete_additional_white_label_settings</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/rebranding/additional</td>
        <td>Delete the additional white label settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#delete_company_white_label_settings"><strong>delete_company_white_label_settings</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/rebranding/company</td>
        <td>Delete the company white label settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#get_additional_white_label_settings"><strong>get_additional_white_label_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/rebranding/additional</td>
        <td>Get the additional white label settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#get_company_white_label_settings"><strong>get_company_white_label_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/rebranding/company</td>
        <td>Get the company white label settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#get_enable_whitelabel"><strong>get_enable_whitelabel</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/enablewhitelabel</td>
        <td>Check the white label availability</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#get_is_default_white_label_logo_text"><strong>get_is_default_white_label_logo_text</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/whitelabel/logotext/isdefault</td>
        <td>Check the default white label logo text</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#get_is_default_white_label_logos"><strong>get_is_default_white_label_logos</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/whitelabel/logos/isdefault</td>
        <td>Check the default white label logos</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#get_licensor_data"><strong>get_licensor_data</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/companywhitelabel</td>
        <td>Get the licensor data</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#get_white_label_logo_text"><strong>get_white_label_logo_text</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/whitelabel/logotext</td>
        <td>Get the white label logo text</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#get_white_label_logos"><strong>get_white_label_logos</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/whitelabel/logos</td>
        <td>Get the white label logos</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#restore_white_label_logo_text"><strong>restore_white_label_logo_text</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/whitelabel/logotext/restore</td>
        <td>Restore the white label logo text</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#restore_white_label_logos"><strong>restore_white_label_logos</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/whitelabel/logos/restore</td>
        <td>Restore the white label logos</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#save_additional_white_label_settings"><strong>save_additional_white_label_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/rebranding/additional</td>
        <td>Save the additional white label settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#save_company_white_label_settings"><strong>save_company_white_label_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/rebranding/company</td>
        <td>Save the company white label settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#save_white_label_logo_text"><strong>save_white_label_logo_text</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/whitelabel/logotext/save</td>
        <td>Save the white label logo text settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#save_white_label_settings"><strong>save_white_label_settings</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/whitelabel/logos/save</td>
        <td>Save the white label logos</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsRebrandingApi.md#save_white_label_settings_from_files"><strong>save_white_label_settings_from_files</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/whitelabel/logos/savefromfiles</td>
        <td>Save the white label logos from files</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::SSOApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSSOApi.md#get_default_sso_settings_v2"><strong>get_default_sso_settings_v2</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/ssov2/default</td>
        <td>Get the default SSO settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSSOApi.md#get_sso_settings_v2"><strong>get_sso_settings_v2</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/ssov2</td>
        <td>Get the SSO settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSSOApi.md#get_sso_settings_v2_constants"><strong>get_sso_settings_v2_constants</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/ssov2/constants</td>
        <td>Get the SSO settings constants</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSSOApi.md#reset_sso_settings_v2"><strong>reset_sso_settings_v2</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/ssov2</td>
        <td>Reset the SSO settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSSOApi.md#save_sso_settings_v2"><strong>save_sso_settings_v2</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/ssov2</td>
        <td>Save the SSO settings</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::SecurityApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityApi.md#get_enabled_modules"><strong>get_enabled_modules</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security/modules</td>
        <td>Get the enabled modules</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityApi.md#get_is_product_administrator"><strong>get_is_product_administrator</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security/administrator</td>
        <td>Check a product administrator</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityApi.md#get_password_settings"><strong>get_password_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security/password</td>
        <td>Get the password settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityApi.md#get_product_administrators"><strong>get_product_administrators</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security/administrator/{productid}</td>
        <td>Get the product administrators</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityApi.md#get_web_item_security_info"><strong>get_web_item_security_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security/{id}</td>
        <td>Get the module availability</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityApi.md#get_web_item_settings_security_info"><strong>get_web_item_settings_security_info</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/security</td>
        <td>Get the security settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityApi.md#set_access_to_web_items"><strong>set_access_to_web_items</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/security/access</td>
        <td>Set the security settings to modules</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityApi.md#set_product_administrator"><strong>set_product_administrator</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/security/administrator</td>
        <td>Set a product administrator</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityApi.md#set_web_item_security"><strong>set_web_item_security</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/security</td>
        <td>Set the module security settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsSecurityApi.md#update_password_settings"><strong>update_password_settings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/security/password</td>
        <td>Set the password settings</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::StatisticsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStatisticsApi.md#get_space_usage_statistics"><strong>get_space_usage_statistics</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/statistics/spaceusage/{id}</td>
        <td>Get the space usage statistics</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::StorageApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageApi.md#get_all_backup_storages"><strong>get_all_backup_storages</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/storage/backup</td>
        <td>Get the backup storages</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageApi.md#get_all_cdn_storages"><strong>get_all_cdn_storages</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/storage/cdn</td>
        <td>Get the CDN storages</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageApi.md#get_all_storages"><strong>get_all_storages</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/storage</td>
        <td>Get storages</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageApi.md#get_amazon_s3_regions"><strong>get_amazon_s3_regions</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/storage/s3/regions</td>
        <td>Get Amazon regions</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageApi.md#get_storage_progress"><strong>get_storage_progress</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/storage/progress</td>
        <td>Get the storage progress</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageApi.md#reset_cdn_to_default"><strong>reset_cdn_to_default</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/storage/cdn</td>
        <td>Reset the CDN storage settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageApi.md#reset_storage_to_default"><strong>reset_storage_to_default</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/storage</td>
        <td>Reset the storage settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageApi.md#update_cdn_storage"><strong>update_cdn_storage</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/storage/cdn</td>
        <td>Update the CDN storage</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsStorageApi.md#update_storage"><strong>update_storage</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/storage</td>
        <td>Update a storage</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::TFASettingsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsApi.md#get_tfa_app_codes"><strong>get_tfa_app_codes</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/tfaappcodes</td>
        <td>Get the TFA codes</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsApi.md#get_tfa_confirm_data"><strong>get_tfa_confirm_data</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/tfaapp/confirm</td>
        <td>Get TFA confirmation data</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsApi.md#get_tfa_settings"><strong>get_tfa_settings</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/tfaapp</td>
        <td>Get the TFA settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsApi.md#tfa_app_generate_setup_code"><strong>tfa_app_generate_setup_code</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/tfaapp/setup</td>
        <td>Generate setup code</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsApi.md#tfa_validate_auth_code"><strong>tfa_validate_auth_code</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/tfaapp/validate</td>
        <td>Validate the TFA code</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsApi.md#unlink_tfa_app"><strong>unlink_tfa_app</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/tfaappnewapp</td>
        <td>Unlink the TFA application</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsApi.md#update_tfa_app_codes"><strong>update_tfa_app_codes</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/tfaappnewcodes</td>
        <td>Update the TFA codes</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsApi.md#update_tfa_settings"><strong>update_tfa_settings</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/tfaapp</td>
        <td>Update the TFA settings</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTFASettingsApi.md#update_tfa_settings_link"><strong>update_tfa_settings_link</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/tfaappwithlink</td>
        <td>Updates TFA settings</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::TelegramApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTelegramApi.md#check_telegram"><strong>check_telegram</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/telegram/check</td>
        <td>Check the Telegram connection</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTelegramApi.md#link_telegram"><strong>link_telegram</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/telegram/link</td>
        <td>Get the Telegram link</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsTelegramApi.md#unlink_telegram"><strong>unlink_telegram</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/telegram/link</td>
        <td>Unlink Telegram</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::WebhooksApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksApi.md#create_webhook"><strong>create_webhook</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/webhook</td>
        <td>Create a webhook</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksApi.md#enable_webhook"><strong>enable_webhook</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/webhook/enable</td>
        <td>Enable a webhook</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksApi.md#get_tenant_webhooks"><strong>get_tenant_webhooks</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/webhook</td>
        <td>Get webhooks</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksApi.md#get_webhook_triggers"><strong>get_webhook_triggers</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/webhook/triggers</td>
        <td>Get webhook triggers</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksApi.md#get_webhooks_logs"><strong>get_webhooks_logs</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/webhooks/log</td>
        <td>Get webhook logs</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksApi.md#remove_webhook"><strong>remove_webhook</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/webhook/{id}</td>
        <td>Remove a webhook</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksApi.md#retry_webhook"><strong>retry_webhook</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/webhook/{id}/retry</td>
        <td>Retry a webhook</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksApi.md#retry_webhooks"><strong>retry_webhooks</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/webhook/retry</td>
        <td>Retry webhooks</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebhooksApi.md#update_webhook"><strong>update_webhook</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/webhook</td>
        <td>Update a webhook</td>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>Settings::WebpluginsApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebpluginsApi.md#add_web_plugin_from_file"><strong>add_web_plugin_from_file</strong></a></td>
        <td><strong>POST</strong> /api/2.0/settings/webplugins</td>
        <td>Add a web plugin</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebpluginsApi.md#delete_web_plugin"><strong>delete_web_plugin</strong></a></td>
        <td><strong>DELETE</strong> /api/2.0/settings/webplugins/{name}</td>
        <td>Delete a web plugin</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebpluginsApi.md#get_web_plugin"><strong>get_web_plugin</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/webplugins/{name}</td>
        <td>Get a web plugin by name</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebpluginsApi.md#get_web_plugins"><strong>get_web_plugins</strong></a></td>
        <td><strong>GET</strong> /api/2.0/settings/webplugins</td>
        <td>Get web plugins</td>
      </tr>
      <tr>
        <td><a href="docs/SettingsWebpluginsApi.md#update_web_plugin"><strong>update_web_plugin</strong></a></td>
        <td><strong>PUT</strong> /api/2.0/settings/webplugins/{name}</td>
        <td>Update a web plugin</td>
      </tr>
    </tbody>
  </table>

</details>
<details>
  <summary>ThirdParty</summary>

  <table>
    <tbody>
      <tr>
        <th>Method</th>
        <th>HTTP request</th>
        <th>Description</th>
      </tr>
      <tr>
        <td colspan="3" style="text-align: center;"><strong>ThirdParty::ThirdPartyApi</strong></td>
      </tr>
      <tr>
        <td><a href="docs/ThirdPartyApi.md#get_third_party_code"><strong>get_third_party_code</strong></a></td>
        <td><strong>GET</strong> /api/2.0/thirdparty/{provider}</td>
        <td>Get the code request</td>
      </tr>
    </tbody>
  </table>

</details>

### Documentation For Models

<details><summary>Models list</summary>

 - [DocspaceApiSdk::AccessRequestKeyDto](docs/AccessRequestKeyDto.md)
 - [DocspaceApiSdk::AccountInfoArrayWrapper](docs/AccountInfoArrayWrapper.md)
 - [DocspaceApiSdk::AccountInfoDto](docs/AccountInfoDto.md)
 - [DocspaceApiSdk::AccountLoginType](docs/AccountLoginType.md)
 - [DocspaceApiSdk::AceShortWrapper](docs/AceShortWrapper.md)
 - [DocspaceApiSdk::AceShortWrapperArrayWrapper](docs/AceShortWrapperArrayWrapper.md)
 - [DocspaceApiSdk::ActionConfig](docs/ActionConfig.md)
 - [DocspaceApiSdk::ActionLinkConfig](docs/ActionLinkConfig.md)
 - [DocspaceApiSdk::ActionType](docs/ActionType.md)
 - [DocspaceApiSdk::ActiveConnectionsDto](docs/ActiveConnectionsDto.md)
 - [DocspaceApiSdk::ActiveConnectionsItemDto](docs/ActiveConnectionsItemDto.md)
 - [DocspaceApiSdk::ActiveConnectionsWrapper](docs/ActiveConnectionsWrapper.md)
 - [DocspaceApiSdk::ActiveServiceArrayWrapper](docs/ActiveServiceArrayWrapper.md)
 - [DocspaceApiSdk::ActiveServiceDto](docs/ActiveServiceDto.md)
 - [DocspaceApiSdk::AdditionalWhiteLabelSettings](docs/AdditionalWhiteLabelSettings.md)
 - [DocspaceApiSdk::AdditionalWhiteLabelSettingsDto](docs/AdditionalWhiteLabelSettingsDto.md)
 - [DocspaceApiSdk::AdditionalWhiteLabelSettingsDtoWrapper](docs/AdditionalWhiteLabelSettingsDtoWrapper.md)
 - [DocspaceApiSdk::AdditionalWhiteLabelSettingsResponseWrapper](docs/AdditionalWhiteLabelSettingsResponseWrapper.md)
 - [DocspaceApiSdk::AdditionalWhiteLabelSettingsWrapper](docs/AdditionalWhiteLabelSettingsWrapper.md)
 - [DocspaceApiSdk::AdminMessageBaseSettingsRequestsDto](docs/AdminMessageBaseSettingsRequestsDto.md)
 - [DocspaceApiSdk::AdminMessageSettingsRequestsDto](docs/AdminMessageSettingsRequestsDto.md)
 - [DocspaceApiSdk::AiActionType](docs/AiActionType.md)
 - [DocspaceApiSdk::AiAgentNewItemsDto](docs/AiAgentNewItemsDto.md)
 - [DocspaceApiSdk::AiAgentsCreateRequest](docs/AiAgentsCreateRequest.md)
 - [DocspaceApiSdk::AiAgentsDeleteRequest](docs/AiAgentsDeleteRequest.md)
 - [DocspaceApiSdk::AiAgentsResetQuotaRequest](docs/AiAgentsResetQuotaRequest.md)
 - [DocspaceApiSdk::AiAgentsUpdateQuotaRequest](docs/AiAgentsUpdateQuotaRequest.md)
 - [DocspaceApiSdk::AiAgentsUpdateQuotaRequestRoomIdsInner](docs/AiAgentsUpdateQuotaRequestRoomIdsInner.md)
 - [DocspaceApiSdk::AiAgentsUpdateRequest](docs/AiAgentsUpdateRequest.md)
 - [DocspaceApiSdk::AiAiActionArgs](docs/AiAiActionArgs.md)
 - [DocspaceApiSdk::AiAiActionArgsPrompt](docs/AiAiActionArgsPrompt.md)
 - [DocspaceApiSdk::AiAiApproveToolCallRequest](docs/AiAiApproveToolCallRequest.md)
 - [DocspaceApiSdk::AiAiRegenerateStreamRequest](docs/AiAiRegenerateStreamRequest.md)
 - [DocspaceApiSdk::AiAiSendCustomRequest](docs/AiAiSendCustomRequest.md)
 - [DocspaceApiSdk::AiAiSendRequest](docs/AiAiSendRequest.md)
 - [DocspaceApiSdk::AiAiSendStreamBody](docs/AiAiSendStreamBody.md)
 - [DocspaceApiSdk::AiAiSettingsDto](docs/AiAiSettingsDto.md)
 - [DocspaceApiSdk::AiAiSettingsWrapper](docs/AiAiSettingsWrapper.md)
 - [DocspaceApiSdk::AiAiToolCallData](docs/AiAiToolCallData.md)
 - [DocspaceApiSdk::AiAiUserSettingsDto](docs/AiAiUserSettingsDto.md)
 - [DocspaceApiSdk::AiAiUserSettingsWrapper](docs/AiAiUserSettingsWrapper.md)
 - [DocspaceApiSdk::AiAssignmentMutationResult](docs/AiAssignmentMutationResult.md)
 - [DocspaceApiSdk::AiAssignmentsAssignRequest](docs/AiAssignmentsAssignRequest.md)
 - [DocspaceApiSdk::AiAttachment](docs/AiAttachment.md)
 - [DocspaceApiSdk::AiAttachmentFormKeysInner](docs/AiAttachmentFormKeysInner.md)
 - [DocspaceApiSdk::AiAttachmentsLinkToMessageRequest](docs/AiAttachmentsLinkToMessageRequest.md)
 - [DocspaceApiSdk::AiAttachmentsSaveFileRequest](docs/AiAttachmentsSaveFileRequest.md)
 - [DocspaceApiSdk::AiAttachmentsSaveFileRequestInput](docs/AiAttachmentsSaveFileRequestInput.md)
 - [DocspaceApiSdk::AiAttachmentsSaveFilesManyRequest](docs/AiAttachmentsSaveFilesManyRequest.md)
 - [DocspaceApiSdk::AiBuiltinProviderType](docs/AiBuiltinProviderType.md)
 - [DocspaceApiSdk::AiBulkAssignmentResult](docs/AiBulkAssignmentResult.md)
 - [DocspaceApiSdk::AiBulkAssignmentResultErrorsInner](docs/AiBulkAssignmentResultErrorsInner.md)
 - [DocspaceApiSdk::AiChatEvent](docs/AiChatEvent.md)
 - [DocspaceApiSdk::AiChatModelPricing](docs/AiChatModelPricing.md)
 - [DocspaceApiSdk::AiChatPrice](docs/AiChatPrice.md)
 - [DocspaceApiSdk::AiChatSettingsDto](docs/AiChatSettingsDto.md)
 - [DocspaceApiSdk::AiCreateProfileInput](docs/AiCreateProfileInput.md)
 - [DocspaceApiSdk::AiCreatePromptInput](docs/AiCreatePromptInput.md)
 - [DocspaceApiSdk::AiDistributedTaskStatus](docs/AiDistributedTaskStatus.md)
 - [DocspaceApiSdk::AiEmbeddingModelPricing](docs/AiEmbeddingModelPricing.md)
 - [DocspaceApiSdk::AiEmbeddingPrice](docs/AiEmbeddingPrice.md)
 - [DocspaceApiSdk::AiEmbeddingProviderType](docs/AiEmbeddingProviderType.md)
 - [DocspaceApiSdk::AiEmployeeDto](docs/AiEmployeeDto.md)
 - [DocspaceApiSdk::AiErrorResponse](docs/AiErrorResponse.md)
 - [DocspaceApiSdk::AiExportTextToDocx200Response](docs/AiExportTextToDocx200Response.md)
 - [DocspaceApiSdk::AiExportTextToDocxRequest](docs/AiExportTextToDocxRequest.md)
 - [DocspaceApiSdk::AiExportTextToDocxRequestFolderId](docs/AiExportTextToDocxRequestFolderId.md)
 - [DocspaceApiSdk::AiFileEntryBaseDto](docs/AiFileEntryBaseDto.md)
 - [DocspaceApiSdk::AiFileEntryDtoInteger](docs/AiFileEntryDtoInteger.md)
 - [DocspaceApiSdk::AiFileEntryType](docs/AiFileEntryType.md)
 - [DocspaceApiSdk::AiFileOperationDto](docs/AiFileOperationDto.md)
 - [DocspaceApiSdk::AiFileOperationType](docs/AiFileOperationType.md)
 - [DocspaceApiSdk::AiFileOperationWrapper](docs/AiFileOperationWrapper.md)
 - [DocspaceApiSdk::AiFileShare](docs/AiFileShare.md)
 - [DocspaceApiSdk::AiFolderContentDtoInteger](docs/AiFolderContentDtoInteger.md)
 - [DocspaceApiSdk::AiFolderContentIntegerWrapper](docs/AiFolderContentIntegerWrapper.md)
 - [DocspaceApiSdk::AiFolderDtoInteger](docs/AiFolderDtoInteger.md)
 - [DocspaceApiSdk::AiFolderIntegerArrayWrapper](docs/AiFolderIntegerArrayWrapper.md)
 - [DocspaceApiSdk::AiFolderIntegerWrapper](docs/AiFolderIntegerWrapper.md)
 - [DocspaceApiSdk::AiFolderMutationResult](docs/AiFolderMutationResult.md)
 - [DocspaceApiSdk::AiFolderType](docs/AiFolderType.md)
 - [DocspaceApiSdk::AiImageModelPricing](docs/AiImageModelPricing.md)
 - [DocspaceApiSdk::AiImagePrice](docs/AiImagePrice.md)
 - [DocspaceApiSdk::AiImportError](docs/AiImportError.md)
 - [DocspaceApiSdk::AiImportMode](docs/AiImportMode.md)
 - [DocspaceApiSdk::AiImportResult](docs/AiImportResult.md)
 - [DocspaceApiSdk::AiImportResultImported](docs/AiImportResultImported.md)
 - [DocspaceApiSdk::AiLogo](docs/AiLogo.md)
 - [DocspaceApiSdk::AiLogoCover](docs/AiLogoCover.md)
 - [DocspaceApiSdk::AiModel](docs/AiModel.md)
 - [DocspaceApiSdk::AiNewItemsAgentNewItemsArrayWrapper](docs/AiNewItemsAgentNewItemsArrayWrapper.md)
 - [DocspaceApiSdk::AiNewItemsDtoAgentNewItemsDto](docs/AiNewItemsDtoAgentNewItemsDto.md)
 - [DocspaceApiSdk::AiOpenAIChatCompletionChunk](docs/AiOpenAIChatCompletionChunk.md)
 - [DocspaceApiSdk::AiOpenAIChoiceDelta](docs/AiOpenAIChoiceDelta.md)
 - [DocspaceApiSdk::AiOpenAIChunkChoice](docs/AiOpenAIChunkChoice.md)
 - [DocspaceApiSdk::AiOpenAIFinishReason](docs/AiOpenAIFinishReason.md)
 - [DocspaceApiSdk::AiOpenAIStreamChunk](docs/AiOpenAIStreamChunk.md)
 - [DocspaceApiSdk::AiOpenAIStreamError](docs/AiOpenAIStreamError.md)
 - [DocspaceApiSdk::AiOpenAIStreamErrorError](docs/AiOpenAIStreamErrorError.md)
 - [DocspaceApiSdk::AiOpenAIToolCallDelta](docs/AiOpenAIToolCallDelta.md)
 - [DocspaceApiSdk::AiOpenAIToolCallDeltaFunction](docs/AiOpenAIToolCallDeltaFunction.md)
 - [DocspaceApiSdk::AiOpenOrCreateResult](docs/AiOpenOrCreateResult.md)
 - [DocspaceApiSdk::AiPreferencesSetDeepModeRequest](docs/AiPreferencesSetDeepModeRequest.md)
 - [DocspaceApiSdk::AiPricesResponse](docs/AiPricesResponse.md)
 - [DocspaceApiSdk::AiPricesResponseWrapper](docs/AiPricesResponseWrapper.md)
 - [DocspaceApiSdk::AiProfile](docs/AiProfile.md)
 - [DocspaceApiSdk::AiProfileMutationResult](docs/AiProfileMutationResult.md)
 - [DocspaceApiSdk::AiProfilesGetById200Response](docs/AiProfilesGetById200Response.md)
 - [DocspaceApiSdk::AiProfilesListProviderModelsRequest](docs/AiProfilesListProviderModelsRequest.md)
 - [DocspaceApiSdk::AiProfilesTestConnection200Response](docs/AiProfilesTestConnection200Response.md)
 - [DocspaceApiSdk::AiProfilesTestConnection200ResponseAnyOf](docs/AiProfilesTestConnection200ResponseAnyOf.md)
 - [DocspaceApiSdk::AiPrompt](docs/AiPrompt.md)
 - [DocspaceApiSdk::AiPromptBundle](docs/AiPromptBundle.md)
 - [DocspaceApiSdk::AiPromptFolder](docs/AiPromptFolder.md)
 - [DocspaceApiSdk::AiPromptMutationResult](docs/AiPromptMutationResult.md)
 - [DocspaceApiSdk::AiPromptsImportBundleRequest](docs/AiPromptsImportBundleRequest.md)
 - [DocspaceApiSdk::AiPromptsImportBundleRequestOptions](docs/AiPromptsImportBundleRequestOptions.md)
 - [DocspaceApiSdk::AiPromptsMoveRequest](docs/AiPromptsMoveRequest.md)
 - [DocspaceApiSdk::AiPromptsRenameFolderRequest](docs/AiPromptsRenameFolderRequest.md)
 - [DocspaceApiSdk::AiPromptsUpdateRequest](docs/AiPromptsUpdateRequest.md)
 - [DocspaceApiSdk::AiPromptsUpdateRequestUpdates](docs/AiPromptsUpdateRequestUpdates.md)
 - [DocspaceApiSdk::AiProviderType](docs/AiProviderType.md)
 - [DocspaceApiSdk::AiResolvedAssignment](docs/AiResolvedAssignment.md)
 - [DocspaceApiSdk::AiRoomDataLifetimeDto](docs/AiRoomDataLifetimeDto.md)
 - [DocspaceApiSdk::AiRoomDataLifetimePeriod](docs/AiRoomDataLifetimePeriod.md)
 - [DocspaceApiSdk::AiRoomType](docs/AiRoomType.md)
 - [DocspaceApiSdk::AiSuccessResponse](docs/AiSuccessResponse.md)
 - [DocspaceApiSdk::AiTErrorData](docs/AiTErrorData.md)
 - [DocspaceApiSdk::AiTMCPItem](docs/AiTMCPItem.md)
 - [DocspaceApiSdk::AiTProvider](docs/AiTProvider.md)
 - [DocspaceApiSdk::AiThread](docs/AiThread.md)
 - [DocspaceApiSdk::AiThreadMessageLike](docs/AiThreadMessageLike.md)
 - [DocspaceApiSdk::AiThreadMessageLikeContent](docs/AiThreadMessageLikeContent.md)
 - [DocspaceApiSdk::AiThreadMessageLikeContentAnyOfInner](docs/AiThreadMessageLikeContentAnyOfInner.md)
 - [DocspaceApiSdk::AiThreadMessageLikeStatus](docs/AiThreadMessageLikeStatus.md)
 - [DocspaceApiSdk::AiThreadsAppendUserMessageRequest](docs/AiThreadsAppendUserMessageRequest.md)
 - [DocspaceApiSdk::AiThreadsCreateRequest](docs/AiThreadsCreateRequest.md)
 - [DocspaceApiSdk::AiThreadsOpenOrCreateRequest](docs/AiThreadsOpenOrCreateRequest.md)
 - [DocspaceApiSdk::AiThreadsOpenOrCreateRequestEntityMeta](docs/AiThreadsOpenOrCreateRequestEntityMeta.md)
 - [DocspaceApiSdk::AiThreadsRegenerateTitleRequest](docs/AiThreadsRegenerateTitleRequest.md)
 - [DocspaceApiSdk::AiThreadsRenameRequest](docs/AiThreadsRenameRequest.md)
 - [DocspaceApiSdk::AiThreadsTouchRequest](docs/AiThreadsTouchRequest.md)
 - [DocspaceApiSdk::AiThreadsUpdateMessageRequest](docs/AiThreadsUpdateMessageRequest.md)
 - [DocspaceApiSdk::AiToolsAddCustomServerRequest](docs/AiToolsAddCustomServerRequest.md)
 - [DocspaceApiSdk::AiToolsBulkResult](docs/AiToolsBulkResult.md)
 - [DocspaceApiSdk::AiToolsBulkResultErrorsInner](docs/AiToolsBulkResultErrorsInner.md)
 - [DocspaceApiSdk::AiToolsMutationResult](docs/AiToolsMutationResult.md)
 - [DocspaceApiSdk::AiToolsRemoveCustomServerRequest](docs/AiToolsRemoveCustomServerRequest.md)
 - [DocspaceApiSdk::AiToolsReplaceAllCustomServersRequest](docs/AiToolsReplaceAllCustomServersRequest.md)
 - [DocspaceApiSdk::AiToolsSetAllowAlwaysRequest](docs/AiToolsSetAllowAlwaysRequest.md)
 - [DocspaceApiSdk::AiToolsSetDisabledRequest](docs/AiToolsSetDisabledRequest.md)
 - [DocspaceApiSdk::AiToolsUpdateCustomServerRequest](docs/AiToolsUpdateCustomServerRequest.md)
 - [DocspaceApiSdk::AiVectorizationSettingsDto](docs/AiVectorizationSettingsDto.md)
 - [DocspaceApiSdk::AiVectorizationSettingsWrapper](docs/AiVectorizationSettingsWrapper.md)
 - [DocspaceApiSdk::AiWatermarkAdditions](docs/AiWatermarkAdditions.md)
 - [DocspaceApiSdk::AiWatermarkDto](docs/AiWatermarkDto.md)
 - [DocspaceApiSdk::AiWebSearchConfig](docs/AiWebSearchConfig.md)
 - [DocspaceApiSdk::AiWebSearchConfigureRequest](docs/AiWebSearchConfigureRequest.md)
 - [DocspaceApiSdk::AiWebSearchMutationResult](docs/AiWebSearchMutationResult.md)
 - [DocspaceApiSdk::AiWebSearchPricing](docs/AiWebSearchPricing.md)
 - [DocspaceApiSdk::AnonymousConfigDto](docs/AnonymousConfigDto.md)
 - [DocspaceApiSdk::ApiKeyResponseArrayWrapper](docs/ApiKeyResponseArrayWrapper.md)
 - [DocspaceApiSdk::ApiKeyResponseDto](docs/ApiKeyResponseDto.md)
 - [DocspaceApiSdk::ApiKeyResponseWrapper](docs/ApiKeyResponseWrapper.md)
 - [DocspaceApiSdk::AppArrayWrapper](docs/AppArrayWrapper.md)
 - [DocspaceApiSdk::AppDto](docs/AppDto.md)
 - [DocspaceApiSdk::AppDtoSettings](docs/AppDtoSettings.md)
 - [DocspaceApiSdk::AppWrapper](docs/AppWrapper.md)
 - [DocspaceApiSdk::ApplyFilterOption](docs/ApplyFilterOption.md)
 - [DocspaceApiSdk::ArchiveRoomRequest](docs/ArchiveRoomRequest.md)
 - [DocspaceApiSdk::Area](docs/Area.md)
 - [DocspaceApiSdk::ArrayArrayWrapper](docs/ArrayArrayWrapper.md)
 - [DocspaceApiSdk::AuditEventArrayWrapper](docs/AuditEventArrayWrapper.md)
 - [DocspaceApiSdk::AuditEventDto](docs/AuditEventDto.md)
 - [DocspaceApiSdk::AuditReportFormat](docs/AuditReportFormat.md)
 - [DocspaceApiSdk::AuthData](docs/AuthData.md)
 - [DocspaceApiSdk::AuthKey](docs/AuthKey.md)
 - [DocspaceApiSdk::AuthRequestsDto](docs/AuthRequestsDto.md)
 - [DocspaceApiSdk::AuthServiceRequestsArrayWrapper](docs/AuthServiceRequestsArrayWrapper.md)
 - [DocspaceApiSdk::AuthServiceRequestsDto](docs/AuthServiceRequestsDto.md)
 - [DocspaceApiSdk::AuthWithCodeRequestsDto](docs/AuthWithCodeRequestsDto.md)
 - [DocspaceApiSdk::AuthenticationTokenDto](docs/AuthenticationTokenDto.md)
 - [DocspaceApiSdk::AuthenticationTokenWrapper](docs/AuthenticationTokenWrapper.md)
 - [DocspaceApiSdk::AutoCleanUpData](docs/AutoCleanUpData.md)
 - [DocspaceApiSdk::AutoCleanUpDataWrapper](docs/AutoCleanUpDataWrapper.md)
 - [DocspaceApiSdk::AutoCleanupRequestDto](docs/AutoCleanupRequestDto.md)
 - [DocspaceApiSdk::BackupDto](docs/BackupDto.md)
 - [DocspaceApiSdk::BackupHistoryRecord](docs/BackupHistoryRecord.md)
 - [DocspaceApiSdk::BackupHistoryRecordArrayWrapper](docs/BackupHistoryRecordArrayWrapper.md)
 - [DocspaceApiSdk::BackupPeriod](docs/BackupPeriod.md)
 - [DocspaceApiSdk::BackupProgress](docs/BackupProgress.md)
 - [DocspaceApiSdk::BackupProgressEnum](docs/BackupProgressEnum.md)
 - [DocspaceApiSdk::BackupProgressWrapper](docs/BackupProgressWrapper.md)
 - [DocspaceApiSdk::BackupRestoreDto](docs/BackupRestoreDto.md)
 - [DocspaceApiSdk::BackupScheduleDto](docs/BackupScheduleDto.md)
 - [DocspaceApiSdk::BackupServiceStateDto](docs/BackupServiceStateDto.md)
 - [DocspaceApiSdk::BackupServiceStateWrapper](docs/BackupServiceStateWrapper.md)
 - [DocspaceApiSdk::BackupStorageType](docs/BackupStorageType.md)
 - [DocspaceApiSdk::BackupsCountResultDto](docs/BackupsCountResultDto.md)
 - [DocspaceApiSdk::BackupsCountResultWrapper](docs/BackupsCountResultWrapper.md)
 - [DocspaceApiSdk::Balance](docs/Balance.md)
 - [DocspaceApiSdk::BalanceWrapper](docs/BalanceWrapper.md)
 - [DocspaceApiSdk::BaseBatchRequestDto](docs/BaseBatchRequestDto.md)
 - [DocspaceApiSdk::BaseBatchRequestDtoAllOfFileIds](docs/BaseBatchRequestDtoAllOfFileIds.md)
 - [DocspaceApiSdk::BaseBatchRequestDtoAllOfFolderIds](docs/BaseBatchRequestDtoAllOfFolderIds.md)
 - [DocspaceApiSdk::BatchRequestDto](docs/BatchRequestDto.md)
 - [DocspaceApiSdk::BatchRequestDtoAllOfDestFolderId](docs/BatchRequestDtoAllOfDestFolderId.md)
 - [DocspaceApiSdk::BatchRequestDtoAllOfFileIds](docs/BatchRequestDtoAllOfFileIds.md)
 - [DocspaceApiSdk::BatchRequestDtoAllOfFolderIds](docs/BatchRequestDtoAllOfFolderIds.md)
 - [DocspaceApiSdk::BatchTagsRequestDto](docs/BatchTagsRequestDto.md)
 - [DocspaceApiSdk::BooleanWrapper](docs/BooleanWrapper.md)
 - [DocspaceApiSdk::CapabilitiesDto](docs/CapabilitiesDto.md)
 - [DocspaceApiSdk::CapabilitiesWrapper](docs/CapabilitiesWrapper.md)
 - [DocspaceApiSdk::CdnStorageSettings](docs/CdnStorageSettings.md)
 - [DocspaceApiSdk::CdnStorageSettingsWrapper](docs/CdnStorageSettingsWrapper.md)
 - [DocspaceApiSdk::ChangeClientActivationRequest](docs/ChangeClientActivationRequest.md)
 - [DocspaceApiSdk::ChangeEmailRequest](docs/ChangeEmailRequest.md)
 - [DocspaceApiSdk::ChangeHistory](docs/ChangeHistory.md)
 - [DocspaceApiSdk::ChangeOwnerRequestDto](docs/ChangeOwnerRequestDto.md)
 - [DocspaceApiSdk::ChangePasswordRequest](docs/ChangePasswordRequest.md)
 - [DocspaceApiSdk::ChangeWalletServiceStateRequestDto](docs/ChangeWalletServiceStateRequestDto.md)
 - [DocspaceApiSdk::ChatSettings](docs/ChatSettings.md)
 - [DocspaceApiSdk::ChatSettingsDto](docs/ChatSettingsDto.md)
 - [DocspaceApiSdk::CheckConversionRequestDtoInteger](docs/CheckConversionRequestDtoInteger.md)
 - [DocspaceApiSdk::CheckDestFolderDto](docs/CheckDestFolderDto.md)
 - [DocspaceApiSdk::CheckDestFolderResult](docs/CheckDestFolderResult.md)
 - [DocspaceApiSdk::CheckDestFolderWrapper](docs/CheckDestFolderWrapper.md)
 - [DocspaceApiSdk::CheckDocServiceUrlRequestDto](docs/CheckDocServiceUrlRequestDto.md)
 - [DocspaceApiSdk::CheckFillFormDraft](docs/CheckFillFormDraft.md)
 - [DocspaceApiSdk::CheckUploadRequest](docs/CheckUploadRequest.md)
 - [DocspaceApiSdk::ChunkedUploadSessionResponseInteger](docs/ChunkedUploadSessionResponseInteger.md)
 - [DocspaceApiSdk::ChunkedUploadSessionResponseIntegerWrapper](docs/ChunkedUploadSessionResponseIntegerWrapper.md)
 - [DocspaceApiSdk::ChunkedUploadSessionResponseWrapperInteger](docs/ChunkedUploadSessionResponseWrapperInteger.md)
 - [DocspaceApiSdk::ChunkedUploadSessionResponseWrapperIntegerWrapper](docs/ChunkedUploadSessionResponseWrapperIntegerWrapper.md)
 - [DocspaceApiSdk::ClientInfoResponse](docs/ClientInfoResponse.md)
 - [DocspaceApiSdk::ClientResponse](docs/ClientResponse.md)
 - [DocspaceApiSdk::ClientSecretResponse](docs/ClientSecretResponse.md)
 - [DocspaceApiSdk::CoEditingConfig](docs/CoEditingConfig.md)
 - [DocspaceApiSdk::CoEditingConfigMode](docs/CoEditingConfigMode.md)
 - [DocspaceApiSdk::CompanyWhiteLabelSettings](docs/CompanyWhiteLabelSettings.md)
 - [DocspaceApiSdk::CompanyWhiteLabelSettingsArrayWrapper](docs/CompanyWhiteLabelSettingsArrayWrapper.md)
 - [DocspaceApiSdk::CompanyWhiteLabelSettingsDto](docs/CompanyWhiteLabelSettingsDto.md)
 - [DocspaceApiSdk::CompanyWhiteLabelSettingsDtoWrapper](docs/CompanyWhiteLabelSettingsDtoWrapper.md)
 - [DocspaceApiSdk::CompanyWhiteLabelSettingsResponseWrapper](docs/CompanyWhiteLabelSettingsResponseWrapper.md)
 - [DocspaceApiSdk::CompanyWhiteLabelSettingsWrapper](docs/CompanyWhiteLabelSettingsWrapper.md)
 - [DocspaceApiSdk::ConfigurationDtoInteger](docs/ConfigurationDtoInteger.md)
 - [DocspaceApiSdk::ConfigurationIntegerWrapper](docs/ConfigurationIntegerWrapper.md)
 - [DocspaceApiSdk::ConfirmData](docs/ConfirmData.md)
 - [DocspaceApiSdk::ConfirmDto](docs/ConfirmDto.md)
 - [DocspaceApiSdk::ConfirmType](docs/ConfirmType.md)
 - [DocspaceApiSdk::ConfirmWrapper](docs/ConfirmWrapper.md)
 - [DocspaceApiSdk::ConnectionTestResult](docs/ConnectionTestResult.md)
 - [DocspaceApiSdk::ConnectionTestResultWrapper](docs/ConnectionTestResultWrapper.md)
 - [DocspaceApiSdk::Contact](docs/Contact.md)
 - [DocspaceApiSdk::ConversationResultArrayWrapper](docs/ConversationResultArrayWrapper.md)
 - [DocspaceApiSdk::ConversationResultDto](docs/ConversationResultDto.md)
 - [DocspaceApiSdk::CookieSettingsDto](docs/CookieSettingsDto.md)
 - [DocspaceApiSdk::CookieSettingsRequestsDto](docs/CookieSettingsRequestsDto.md)
 - [DocspaceApiSdk::CookieSettingsWrapper](docs/CookieSettingsWrapper.md)
 - [DocspaceApiSdk::CopyAsJsonElement](docs/CopyAsJsonElement.md)
 - [DocspaceApiSdk::CopyAsJsonElementDestFolderId](docs/CopyAsJsonElementDestFolderId.md)
 - [DocspaceApiSdk::CoverRequestDto](docs/CoverRequestDto.md)
 - [DocspaceApiSdk::CoversResultArrayWrapper](docs/CoversResultArrayWrapper.md)
 - [DocspaceApiSdk::CoversResultDto](docs/CoversResultDto.md)
 - [DocspaceApiSdk::CreateApiKeyRequestDto](docs/CreateApiKeyRequestDto.md)
 - [DocspaceApiSdk::CreateClientRequest](docs/CreateClientRequest.md)
 - [DocspaceApiSdk::CreateFileJsonElement](docs/CreateFileJsonElement.md)
 - [DocspaceApiSdk::CreateFileJsonElementTemplateId](docs/CreateFileJsonElementTemplateId.md)
 - [DocspaceApiSdk::CreateFolder](docs/CreateFolder.md)
 - [DocspaceApiSdk::CreateRoomFromTemplateDto](docs/CreateRoomFromTemplateDto.md)
 - [DocspaceApiSdk::CreateRoomRequestDto](docs/CreateRoomRequestDto.md)
 - [DocspaceApiSdk::CreateTagRequestDto](docs/CreateTagRequestDto.md)
 - [DocspaceApiSdk::CreateTextOrHtmlFile](docs/CreateTextOrHtmlFile.md)
 - [DocspaceApiSdk::CreateThirdPartyRoom](docs/CreateThirdPartyRoom.md)
 - [DocspaceApiSdk::CreateWebhooksConfigRequestsDto](docs/CreateWebhooksConfigRequestsDto.md)
 - [DocspaceApiSdk::Cron](docs/Cron.md)
 - [DocspaceApiSdk::CronParams](docs/CronParams.md)
 - [DocspaceApiSdk::CspDto](docs/CspDto.md)
 - [DocspaceApiSdk::CspRequestsDto](docs/CspRequestsDto.md)
 - [DocspaceApiSdk::CspWrapper](docs/CspWrapper.md)
 - [DocspaceApiSdk::Culture](docs/Culture.md)
 - [DocspaceApiSdk::CultureSpecificExternalResource](docs/CultureSpecificExternalResource.md)
 - [DocspaceApiSdk::CultureSpecificExternalResources](docs/CultureSpecificExternalResources.md)
 - [DocspaceApiSdk::CurrenciesArrayWrapper](docs/CurrenciesArrayWrapper.md)
 - [DocspaceApiSdk::CurrenciesDto](docs/CurrenciesDto.md)
 - [DocspaceApiSdk::CurrencyAmount](docs/CurrencyAmount.md)
 - [DocspaceApiSdk::CurrencyCode](docs/CurrencyCode.md)
 - [DocspaceApiSdk::CurrencyInfo](docs/CurrencyInfo.md)
 - [DocspaceApiSdk::CurrentLicenseInfo](docs/CurrentLicenseInfo.md)
 - [DocspaceApiSdk::CustomColorThemesSettingsColorItem](docs/CustomColorThemesSettingsColorItem.md)
 - [DocspaceApiSdk::CustomColorThemesSettingsDto](docs/CustomColorThemesSettingsDto.md)
 - [DocspaceApiSdk::CustomColorThemesSettingsItem](docs/CustomColorThemesSettingsItem.md)
 - [DocspaceApiSdk::CustomColorThemesSettingsRequestsDto](docs/CustomColorThemesSettingsRequestsDto.md)
 - [DocspaceApiSdk::CustomColorThemesSettingsWrapper](docs/CustomColorThemesSettingsWrapper.md)
 - [DocspaceApiSdk::CustomFilterParameters](docs/CustomFilterParameters.md)
 - [DocspaceApiSdk::CustomerConfigDto](docs/CustomerConfigDto.md)
 - [DocspaceApiSdk::CustomerInfoDto](docs/CustomerInfoDto.md)
 - [DocspaceApiSdk::CustomerInfoWrapper](docs/CustomerInfoWrapper.md)
 - [DocspaceApiSdk::CustomerMonthlyUsageArrayWrapper](docs/CustomerMonthlyUsageArrayWrapper.md)
 - [DocspaceApiSdk::CustomerMonthlyUsageDto](docs/CustomerMonthlyUsageDto.md)
 - [DocspaceApiSdk::CustomerMonthlyUsageReportRequestDto](docs/CustomerMonthlyUsageReportRequestDto.md)
 - [DocspaceApiSdk::CustomerOperationsReportRequestDto](docs/CustomerOperationsReportRequestDto.md)
 - [DocspaceApiSdk::CustomerServiceUsageDto](docs/CustomerServiceUsageDto.md)
 - [DocspaceApiSdk::CustomerServiceUsageReportDto](docs/CustomerServiceUsageReportDto.md)
 - [DocspaceApiSdk::CustomerServiceUsageReportRequestDto](docs/CustomerServiceUsageReportRequestDto.md)
 - [DocspaceApiSdk::CustomerServiceUsageReportWrapper](docs/CustomerServiceUsageReportWrapper.md)
 - [DocspaceApiSdk::CustomizationConfigDto](docs/CustomizationConfigDto.md)
 - [DocspaceApiSdk::DarkThemeSettings](docs/DarkThemeSettings.md)
 - [DocspaceApiSdk::DarkThemeSettingsRequestDto](docs/DarkThemeSettingsRequestDto.md)
 - [DocspaceApiSdk::DarkThemeSettingsType](docs/DarkThemeSettingsType.md)
 - [DocspaceApiSdk::DarkThemeSettingsWrapper](docs/DarkThemeSettingsWrapper.md)
 - [DocspaceApiSdk::DateToAutoCleanUp](docs/DateToAutoCleanUp.md)
 - [DocspaceApiSdk::DbTenant](docs/DbTenant.md)
 - [DocspaceApiSdk::DbTenantPartner](docs/DbTenantPartner.md)
 - [DocspaceApiSdk::DeepLinkConfigurationRequestsDto](docs/DeepLinkConfigurationRequestsDto.md)
 - [DocspaceApiSdk::DeepLinkDto](docs/DeepLinkDto.md)
 - [DocspaceApiSdk::DeepLinkHandlingMode](docs/DeepLinkHandlingMode.md)
 - [DocspaceApiSdk::DefaultProductRequestDto](docs/DefaultProductRequestDto.md)
 - [DocspaceApiSdk::DefaultTemplateItemDto](docs/DefaultTemplateItemDto.md)
 - [DocspaceApiSdk::DefaultTemplateSettingsDto](docs/DefaultTemplateSettingsDto.md)
 - [DocspaceApiSdk::DefaultTemplateSettingsRequestDto](docs/DefaultTemplateSettingsRequestDto.md)
 - [DocspaceApiSdk::DefaultTemplateSettingsRequestDtoSelectedFile](docs/DefaultTemplateSettingsRequestDtoSelectedFile.md)
 - [DocspaceApiSdk::DefaultTemplateSettingsResetRequestDto](docs/DefaultTemplateSettingsResetRequestDto.md)
 - [DocspaceApiSdk::DefaultTemplateSettingsWrapper](docs/DefaultTemplateSettingsWrapper.md)
 - [DocspaceApiSdk::Delete](docs/Delete.md)
 - [DocspaceApiSdk::DeleteBatchRequestDto](docs/DeleteBatchRequestDto.md)
 - [DocspaceApiSdk::DeleteBatchRequestDtoAllOfFileIds](docs/DeleteBatchRequestDtoAllOfFileIds.md)
 - [DocspaceApiSdk::DeleteBatchRequestDtoAllOfFolderIds](docs/DeleteBatchRequestDtoAllOfFolderIds.md)
 - [DocspaceApiSdk::DeleteFolder](docs/DeleteFolder.md)
 - [DocspaceApiSdk::DeleteRoomRequest](docs/DeleteRoomRequest.md)
 - [DocspaceApiSdk::DeleteVersionBatchRequestDto](docs/DeleteVersionBatchRequestDto.md)
 - [DocspaceApiSdk::DisplayRequestDto](docs/DisplayRequestDto.md)
 - [DocspaceApiSdk::DistributedTaskStatus](docs/DistributedTaskStatus.md)
 - [DocspaceApiSdk::DnsSettingsRequestsDto](docs/DnsSettingsRequestsDto.md)
 - [DocspaceApiSdk::DocServiceUrlDto](docs/DocServiceUrlDto.md)
 - [DocspaceApiSdk::DocServiceUrlWrapper](docs/DocServiceUrlWrapper.md)
 - [DocspaceApiSdk::DocsCloudConfig](docs/DocsCloudConfig.md)
 - [DocspaceApiSdk::DocsCloudConfigWrapper](docs/DocsCloudConfigWrapper.md)
 - [DocspaceApiSdk::DocsCloudDevPackRequestDto](docs/DocsCloudDevPackRequestDto.md)
 - [DocspaceApiSdk::DocsCloudIpFilterConfig](docs/DocsCloudIpFilterConfig.md)
 - [DocspaceApiSdk::DocsCloudIpFilterRule](docs/DocsCloudIpFilterRule.md)
 - [DocspaceApiSdk::DocsCloudLicenseInfo](docs/DocsCloudLicenseInfo.md)
 - [DocspaceApiSdk::DocsCloudPayment](docs/DocsCloudPayment.md)
 - [DocspaceApiSdk::DocsCloudQuota](docs/DocsCloudQuota.md)
 - [DocspaceApiSdk::DocsCloudQuotaUser](docs/DocsCloudQuotaUser.md)
 - [DocspaceApiSdk::DocsCloudQuotaWrapper](docs/DocsCloudQuotaWrapper.md)
 - [DocspaceApiSdk::DocsCloudSecurityConfig](docs/DocsCloudSecurityConfig.md)
 - [DocspaceApiSdk::DocsCloudServerConfig](docs/DocsCloudServerConfig.md)
 - [DocspaceApiSdk::DocsCloudServerInfo](docs/DocsCloudServerInfo.md)
 - [DocspaceApiSdk::DocsCloudStats](docs/DocsCloudStats.md)
 - [DocspaceApiSdk::DocsCloudTenant](docs/DocsCloudTenant.md)
 - [DocspaceApiSdk::DocsCloudTenantInfo](docs/DocsCloudTenantInfo.md)
 - [DocspaceApiSdk::DocsCloudTenantInfoWrapper](docs/DocsCloudTenantInfoWrapper.md)
 - [DocspaceApiSdk::DocsCloudTenantWrapper](docs/DocsCloudTenantWrapper.md)
 - [DocspaceApiSdk::DocsCloudUsage](docs/DocsCloudUsage.md)
 - [DocspaceApiSdk::DocsCloudUsageWrapper](docs/DocsCloudUsageWrapper.md)
 - [DocspaceApiSdk::DocsCloudUserStats](docs/DocsCloudUserStats.md)
 - [DocspaceApiSdk::DocsCloudUsersLimit](docs/DocsCloudUsersLimit.md)
 - [DocspaceApiSdk::DocsCloudWopiConfig](docs/DocsCloudWopiConfig.md)
 - [DocspaceApiSdk::DocumentBuilderTaskDto](docs/DocumentBuilderTaskDto.md)
 - [DocspaceApiSdk::DocumentBuilderTaskWrapper](docs/DocumentBuilderTaskWrapper.md)
 - [DocspaceApiSdk::DocumentConfigDto](docs/DocumentConfigDto.md)
 - [DocspaceApiSdk::DoubleNullableWrapper](docs/DoubleNullableWrapper.md)
 - [DocspaceApiSdk::DoubleWrapper](docs/DoubleWrapper.md)
 - [DocspaceApiSdk::DownloadRequestDto](docs/DownloadRequestDto.md)
 - [DocspaceApiSdk::DownloadRequestDtoAllOfFileIds](docs/DownloadRequestDtoAllOfFileIds.md)
 - [DocspaceApiSdk::DownloadRequestDtoAllOfFolderIds](docs/DownloadRequestDtoAllOfFolderIds.md)
 - [DocspaceApiSdk::DownloadRequestItemDto](docs/DownloadRequestItemDto.md)
 - [DocspaceApiSdk::DownloadRequestItemDtoKey](docs/DownloadRequestItemDtoKey.md)
 - [DocspaceApiSdk::DraftLocationInteger](docs/DraftLocationInteger.md)
 - [DocspaceApiSdk::DuplicateRequestDto](docs/DuplicateRequestDto.md)
 - [DocspaceApiSdk::DuplicateRequestDtoAllOfFileIds](docs/DuplicateRequestDtoAllOfFileIds.md)
 - [DocspaceApiSdk::DuplicateRequestDtoAllOfFolderIds](docs/DuplicateRequestDtoAllOfFolderIds.md)
 - [DocspaceApiSdk::EditHistoryArrayWrapper](docs/EditHistoryArrayWrapper.md)
 - [DocspaceApiSdk::EditHistoryAuthor](docs/EditHistoryAuthor.md)
 - [DocspaceApiSdk::EditHistoryChangesWrapper](docs/EditHistoryChangesWrapper.md)
 - [DocspaceApiSdk::EditHistoryDataDto](docs/EditHistoryDataDto.md)
 - [DocspaceApiSdk::EditHistoryDataWrapper](docs/EditHistoryDataWrapper.md)
 - [DocspaceApiSdk::EditHistoryDto](docs/EditHistoryDto.md)
 - [DocspaceApiSdk::EditHistoryUrl](docs/EditHistoryUrl.md)
 - [DocspaceApiSdk::EditorConfigurationDto](docs/EditorConfigurationDto.md)
 - [DocspaceApiSdk::EditorToolCallStateDto](docs/EditorToolCallStateDto.md)
 - [DocspaceApiSdk::EditorType](docs/EditorType.md)
 - [DocspaceApiSdk::EmailActivationSettings](docs/EmailActivationSettings.md)
 - [DocspaceApiSdk::EmailActivationSettingsWrapper](docs/EmailActivationSettingsWrapper.md)
 - [DocspaceApiSdk::EmailInvitationDto](docs/EmailInvitationDto.md)
 - [DocspaceApiSdk::EmailMemberRequestDto](docs/EmailMemberRequestDto.md)
 - [DocspaceApiSdk::EmailValidationKeyModel](docs/EmailValidationKeyModel.md)
 - [DocspaceApiSdk::EmbeddedConfig](docs/EmbeddedConfig.md)
 - [DocspaceApiSdk::EmployeeActivationStatus](docs/EmployeeActivationStatus.md)
 - [DocspaceApiSdk::EmployeeArrayWrapper](docs/EmployeeArrayWrapper.md)
 - [DocspaceApiSdk::EmployeeDto](docs/EmployeeDto.md)
 - [DocspaceApiSdk::EmployeeFullArrayWrapper](docs/EmployeeFullArrayWrapper.md)
 - [DocspaceApiSdk::EmployeeFullDto](docs/EmployeeFullDto.md)
 - [DocspaceApiSdk::EmployeeFullWrapper](docs/EmployeeFullWrapper.md)
 - [DocspaceApiSdk::EmployeeStatus](docs/EmployeeStatus.md)
 - [DocspaceApiSdk::EmployeeType](docs/EmployeeType.md)
 - [DocspaceApiSdk::EmployeeWrapper](docs/EmployeeWrapper.md)
 - [DocspaceApiSdk::EncryprtionStatus](docs/EncryprtionStatus.md)
 - [DocspaceApiSdk::EncryptionKeyArrayWrapper](docs/EncryptionKeyArrayWrapper.md)
 - [DocspaceApiSdk::EncryptionKeyDto](docs/EncryptionKeyDto.md)
 - [DocspaceApiSdk::EncryptionKeyRequestDto](docs/EncryptionKeyRequestDto.md)
 - [DocspaceApiSdk::EncryptionSettings](docs/EncryptionSettings.md)
 - [DocspaceApiSdk::EncryptionSettingsWrapper](docs/EncryptionSettingsWrapper.md)
 - [DocspaceApiSdk::EntryType](docs/EntryType.md)
 - [DocspaceApiSdk::ErrorApiResponse](docs/ErrorApiResponse.md)
 - [DocspaceApiSdk::ErrorApiResponseError](docs/ErrorApiResponseError.md)
 - [DocspaceApiSdk::ExchangeToken200Response](docs/ExchangeToken200Response.md)
 - [DocspaceApiSdk::ExternalDatabaseSettings](docs/ExternalDatabaseSettings.md)
 - [DocspaceApiSdk::ExternalDatabaseType](docs/ExternalDatabaseType.md)
 - [DocspaceApiSdk::ExternalDbSyncFormResultDto](docs/ExternalDbSyncFormResultDto.md)
 - [DocspaceApiSdk::ExternalDbSyncTaskDto](docs/ExternalDbSyncTaskDto.md)
 - [DocspaceApiSdk::ExternalDbSyncTaskWrapper](docs/ExternalDbSyncTaskWrapper.md)
 - [DocspaceApiSdk::ExternalShareDto](docs/ExternalShareDto.md)
 - [DocspaceApiSdk::ExternalShareRequestParam](docs/ExternalShareRequestParam.md)
 - [DocspaceApiSdk::ExternalShareWrapper](docs/ExternalShareWrapper.md)
 - [DocspaceApiSdk::ExternalSharingSettingsDto](docs/ExternalSharingSettingsDto.md)
 - [DocspaceApiSdk::ExternalSharingSettingsRequestDto](docs/ExternalSharingSettingsRequestDto.md)
 - [DocspaceApiSdk::ExternalSharingSettingsWrapper](docs/ExternalSharingSettingsWrapper.md)
 - [DocspaceApiSdk::FeatureUsedDto](docs/FeatureUsedDto.md)
 - [DocspaceApiSdk::FeedbackConfig](docs/FeedbackConfig.md)
 - [DocspaceApiSdk::FileConflictResolveType](docs/FileConflictResolveType.md)
 - [DocspaceApiSdk::FileDtoInteger](docs/FileDtoInteger.md)
 - [DocspaceApiSdk::FileDtoIntegerAllOfViewAccessibility](docs/FileDtoIntegerAllOfViewAccessibility.md)
 - [DocspaceApiSdk::FileEncryptionInfoDto](docs/FileEncryptionInfoDto.md)
 - [DocspaceApiSdk::FileEncryptionInfoWrapper](docs/FileEncryptionInfoWrapper.md)
 - [DocspaceApiSdk::FileEntryBaseArrayWrapper](docs/FileEntryBaseArrayWrapper.md)
 - [DocspaceApiSdk::FileEntryBaseDto](docs/FileEntryBaseDto.md)
 - [DocspaceApiSdk::FileEntryBaseWrapper](docs/FileEntryBaseWrapper.md)
 - [DocspaceApiSdk::FileEntryDtoInteger](docs/FileEntryDtoInteger.md)
 - [DocspaceApiSdk::FileEntryDtoIntegerAllOfAvailableShareRights](docs/FileEntryDtoIntegerAllOfAvailableShareRights.md)
 - [DocspaceApiSdk::FileEntryDtoIntegerAllOfSecurity](docs/FileEntryDtoIntegerAllOfSecurity.md)
 - [DocspaceApiSdk::FileEntryDtoIntegerAllOfShareSettings](docs/FileEntryDtoIntegerAllOfShareSettings.md)
 - [DocspaceApiSdk::FileEntryDtoString](docs/FileEntryDtoString.md)
 - [DocspaceApiSdk::FileEntryIntegerArrayWrapper](docs/FileEntryIntegerArrayWrapper.md)
 - [DocspaceApiSdk::FileEntryType](docs/FileEntryType.md)
 - [DocspaceApiSdk::FileIntegerArrayWrapper](docs/FileIntegerArrayWrapper.md)
 - [DocspaceApiSdk::FileIntegerWrapper](docs/FileIntegerWrapper.md)
 - [DocspaceApiSdk::FileKeys](docs/FileKeys.md)
 - [DocspaceApiSdk::FileLink](docs/FileLink.md)
 - [DocspaceApiSdk::FileLinkRequest](docs/FileLinkRequest.md)
 - [DocspaceApiSdk::FileLinkWrapper](docs/FileLinkWrapper.md)
 - [DocspaceApiSdk::FileOperationArrayWrapper](docs/FileOperationArrayWrapper.md)
 - [DocspaceApiSdk::FileOperationDto](docs/FileOperationDto.md)
 - [DocspaceApiSdk::FileOperationRequestBaseDto](docs/FileOperationRequestBaseDto.md)
 - [DocspaceApiSdk::FileOperationType](docs/FileOperationType.md)
 - [DocspaceApiSdk::FileOperationWrapper](docs/FileOperationWrapper.md)
 - [DocspaceApiSdk::FileReference](docs/FileReference.md)
 - [DocspaceApiSdk::FileReferenceData](docs/FileReferenceData.md)
 - [DocspaceApiSdk::FileReferenceWrapper](docs/FileReferenceWrapper.md)
 - [DocspaceApiSdk::FileShare](docs/FileShare.md)
 - [DocspaceApiSdk::FileShareArrayWrapper](docs/FileShareArrayWrapper.md)
 - [DocspaceApiSdk::FileShareDto](docs/FileShareDto.md)
 - [DocspaceApiSdk::FileShareLink](docs/FileShareLink.md)
 - [DocspaceApiSdk::FileShareParams](docs/FileShareParams.md)
 - [DocspaceApiSdk::FileShareResponseArrayWrapper](docs/FileShareResponseArrayWrapper.md)
 - [DocspaceApiSdk::FileShareWrapper](docs/FileShareWrapper.md)
 - [DocspaceApiSdk::FileStatus](docs/FileStatus.md)
 - [DocspaceApiSdk::FileType](docs/FileType.md)
 - [DocspaceApiSdk::FileUploadResultDto](docs/FileUploadResultDto.md)
 - [DocspaceApiSdk::FileUploadResultWrapper](docs/FileUploadResultWrapper.md)
 - [DocspaceApiSdk::FilesSettingsDto](docs/FilesSettingsDto.md)
 - [DocspaceApiSdk::FilesSettingsDtoInternalFormats](docs/FilesSettingsDtoInternalFormats.md)
 - [DocspaceApiSdk::FilesSettingsWrapper](docs/FilesSettingsWrapper.md)
 - [DocspaceApiSdk::FilesStatisticsFolder](docs/FilesStatisticsFolder.md)
 - [DocspaceApiSdk::FilesStatisticsResultDto](docs/FilesStatisticsResultDto.md)
 - [DocspaceApiSdk::FilesStatisticsResultWrapper](docs/FilesStatisticsResultWrapper.md)
 - [DocspaceApiSdk::FillingFormResultDtoInteger](docs/FillingFormResultDtoInteger.md)
 - [DocspaceApiSdk::FillingFormResultIntegerWrapper](docs/FillingFormResultIntegerWrapper.md)
 - [DocspaceApiSdk::FilterType](docs/FilterType.md)
 - [DocspaceApiSdk::FinishDto](docs/FinishDto.md)
 - [DocspaceApiSdk::FireBaseUser](docs/FireBaseUser.md)
 - [DocspaceApiSdk::FireBaseUserWrapper](docs/FireBaseUserWrapper.md)
 - [DocspaceApiSdk::FirebaseDto](docs/FirebaseDto.md)
 - [DocspaceApiSdk::FirebaseRequestsDto](docs/FirebaseRequestsDto.md)
 - [DocspaceApiSdk::FolderContentDtoInteger](docs/FolderContentDtoInteger.md)
 - [DocspaceApiSdk::FolderContentIntegerArrayWrapper](docs/FolderContentIntegerArrayWrapper.md)
 - [DocspaceApiSdk::FolderContentIntegerWrapper](docs/FolderContentIntegerWrapper.md)
 - [DocspaceApiSdk::FolderDtoInteger](docs/FolderDtoInteger.md)
 - [DocspaceApiSdk::FolderDtoString](docs/FolderDtoString.md)
 - [DocspaceApiSdk::FolderIntegerArrayWrapper](docs/FolderIntegerArrayWrapper.md)
 - [DocspaceApiSdk::FolderIntegerWrapper](docs/FolderIntegerWrapper.md)
 - [DocspaceApiSdk::FolderLinkRequest](docs/FolderLinkRequest.md)
 - [DocspaceApiSdk::FolderStringArrayWrapper](docs/FolderStringArrayWrapper.md)
 - [DocspaceApiSdk::FolderStringWrapper](docs/FolderStringWrapper.md)
 - [DocspaceApiSdk::FolderType](docs/FolderType.md)
 - [DocspaceApiSdk::FormFillingManageAction](docs/FormFillingManageAction.md)
 - [DocspaceApiSdk::FormFillingStatus](docs/FormFillingStatus.md)
 - [DocspaceApiSdk::FormGalleryDto](docs/FormGalleryDto.md)
 - [DocspaceApiSdk::FormMetadata](docs/FormMetadata.md)
 - [DocspaceApiSdk::FormResultsDto](docs/FormResultsDto.md)
 - [DocspaceApiSdk::FormRole](docs/FormRole.md)
 - [DocspaceApiSdk::FormRoleArrayWrapper](docs/FormRoleArrayWrapper.md)
 - [DocspaceApiSdk::FormRoleDto](docs/FormRoleDto.md)
 - [DocspaceApiSdk::FormSubmissionsDto](docs/FormSubmissionsDto.md)
 - [DocspaceApiSdk::FormSubmissionsWrapper](docs/FormSubmissionsWrapper.md)
 - [DocspaceApiSdk::FormsItemArrayWrapper](docs/FormsItemArrayWrapper.md)
 - [DocspaceApiSdk::FormsItemData](docs/FormsItemData.md)
 - [DocspaceApiSdk::FormsItemDto](docs/FormsItemDto.md)
 - [DocspaceApiSdk::GetPortalPrices200Response](docs/GetPortalPrices200Response.md)
 - [DocspaceApiSdk::GetPortalPrices200ResponseLinksInner](docs/GetPortalPrices200ResponseLinksInner.md)
 - [DocspaceApiSdk::GetReferenceDataDtoInteger](docs/GetReferenceDataDtoInteger.md)
 - [DocspaceApiSdk::GobackConfig](docs/GobackConfig.md)
 - [DocspaceApiSdk::GreetingSettingsRequestsDto](docs/GreetingSettingsRequestsDto.md)
 - [DocspaceApiSdk::GroupArrayWrapper](docs/GroupArrayWrapper.md)
 - [DocspaceApiSdk::GroupDto](docs/GroupDto.md)
 - [DocspaceApiSdk::GroupMemberSecurityRequestArrayWrapper](docs/GroupMemberSecurityRequestArrayWrapper.md)
 - [DocspaceApiSdk::GroupMemberSecurityRequestDto](docs/GroupMemberSecurityRequestDto.md)
 - [DocspaceApiSdk::GroupRequestDto](docs/GroupRequestDto.md)
 - [DocspaceApiSdk::GroupSummaryArrayWrapper](docs/GroupSummaryArrayWrapper.md)
 - [DocspaceApiSdk::GroupSummaryDto](docs/GroupSummaryDto.md)
 - [DocspaceApiSdk::GroupWrapper](docs/GroupWrapper.md)
 - [DocspaceApiSdk::HideConfirmConvertRequestDto](docs/HideConfirmConvertRequestDto.md)
 - [DocspaceApiSdk::HistoryAction](docs/HistoryAction.md)
 - [DocspaceApiSdk::HistoryArrayWrapper](docs/HistoryArrayWrapper.md)
 - [DocspaceApiSdk::HistoryData](docs/HistoryData.md)
 - [DocspaceApiSdk::HistoryDto](docs/HistoryDto.md)
 - [DocspaceApiSdk::ICompressWrapper](docs/ICompressWrapper.md)
 - [DocspaceApiSdk::IPRestriction](docs/IPRestriction.md)
 - [DocspaceApiSdk::IPRestrictionArrayWrapper](docs/IPRestrictionArrayWrapper.md)
 - [DocspaceApiSdk::IPRestrictionsSettings](docs/IPRestrictionsSettings.md)
 - [DocspaceApiSdk::IPRestrictionsSettingsWrapper](docs/IPRestrictionsSettingsWrapper.md)
 - [DocspaceApiSdk::IconRequest](docs/IconRequest.md)
 - [DocspaceApiSdk::ImportableApiEntity](docs/ImportableApiEntity.md)
 - [DocspaceApiSdk::InfoConfigDto](docs/InfoConfigDto.md)
 - [DocspaceApiSdk::Int32Wrapper](docs/Int32Wrapper.md)
 - [DocspaceApiSdk::Int64Wrapper](docs/Int64Wrapper.md)
 - [DocspaceApiSdk::InvitationLinkCreateRequestDto](docs/InvitationLinkCreateRequestDto.md)
 - [DocspaceApiSdk::InvitationLinkDeleteRequestDto](docs/InvitationLinkDeleteRequestDto.md)
 - [DocspaceApiSdk::InvitationLinkDto](docs/InvitationLinkDto.md)
 - [DocspaceApiSdk::InvitationLinkUpdateRequestDto](docs/InvitationLinkUpdateRequestDto.md)
 - [DocspaceApiSdk::InvitationLinkWrapper](docs/InvitationLinkWrapper.md)
 - [DocspaceApiSdk::InviteUsersRequestDto](docs/InviteUsersRequestDto.md)
 - [DocspaceApiSdk::IpRestrictionBase](docs/IpRestrictionBase.md)
 - [DocspaceApiSdk::IpRestrictionsDto](docs/IpRestrictionsDto.md)
 - [DocspaceApiSdk::IpRestrictionsWrapper](docs/IpRestrictionsWrapper.md)
 - [DocspaceApiSdk::IsDefaultWhiteLabelLogosArrayWrapper](docs/IsDefaultWhiteLabelLogosArrayWrapper.md)
 - [DocspaceApiSdk::IsDefaultWhiteLabelLogosDto](docs/IsDefaultWhiteLabelLogosDto.md)
 - [DocspaceApiSdk::IsDefaultWhiteLabelLogosWrapper](docs/IsDefaultWhiteLabelLogosWrapper.md)
 - [DocspaceApiSdk::ItemKeyValuePairBooleanString](docs/ItemKeyValuePairBooleanString.md)
 - [DocspaceApiSdk::ItemKeyValuePairBooleanStringWrapper](docs/ItemKeyValuePairBooleanStringWrapper.md)
 - [DocspaceApiSdk::ItemKeyValuePairObjectObject](docs/ItemKeyValuePairObjectObject.md)
 - [DocspaceApiSdk::ItemKeyValuePairStringBoolean](docs/ItemKeyValuePairStringBoolean.md)
 - [DocspaceApiSdk::ItemKeyValuePairStringLogoRequestsDto](docs/ItemKeyValuePairStringLogoRequestsDto.md)
 - [DocspaceApiSdk::ItemKeyValuePairStringString](docs/ItemKeyValuePairStringString.md)
 - [DocspaceApiSdk::LinkAccountRequestDto](docs/LinkAccountRequestDto.md)
 - [DocspaceApiSdk::LinkType](docs/LinkType.md)
 - [DocspaceApiSdk::Location](docs/Location.md)
 - [DocspaceApiSdk::LocationType](docs/LocationType.md)
 - [DocspaceApiSdk::LockFileParameters](docs/LockFileParameters.md)
 - [DocspaceApiSdk::LoginEventArrayWrapper](docs/LoginEventArrayWrapper.md)
 - [DocspaceApiSdk::LoginEventDto](docs/LoginEventDto.md)
 - [DocspaceApiSdk::LoginProvider](docs/LoginProvider.md)
 - [DocspaceApiSdk::LoginSettingsDto](docs/LoginSettingsDto.md)
 - [DocspaceApiSdk::LoginSettingsRequestDto](docs/LoginSettingsRequestDto.md)
 - [DocspaceApiSdk::LoginSettingsWrapper](docs/LoginSettingsWrapper.md)
 - [DocspaceApiSdk::Logo](docs/Logo.md)
 - [DocspaceApiSdk::LogoConfigDto](docs/LogoConfigDto.md)
 - [DocspaceApiSdk::LogoCover](docs/LogoCover.md)
 - [DocspaceApiSdk::LogoRequest](docs/LogoRequest.md)
 - [DocspaceApiSdk::LogoRequestsDto](docs/LogoRequestsDto.md)
 - [DocspaceApiSdk::MailDomainSettingsRequestsDto](docs/MailDomainSettingsRequestsDto.md)
 - [DocspaceApiSdk::ManageFormFillingDtoInteger](docs/ManageFormFillingDtoInteger.md)
 - [DocspaceApiSdk::MemberRequestDto](docs/MemberRequestDto.md)
 - [DocspaceApiSdk::MembersRequest](docs/MembersRequest.md)
 - [DocspaceApiSdk::MentionMessageWrapper](docs/MentionMessageWrapper.md)
 - [DocspaceApiSdk::MentionWrapper](docs/MentionWrapper.md)
 - [DocspaceApiSdk::MentionWrapperArrayWrapper](docs/MentionWrapperArrayWrapper.md)
 - [DocspaceApiSdk::MessageAction](docs/MessageAction.md)
 - [DocspaceApiSdk::MigratingApiFiles](docs/MigratingApiFiles.md)
 - [DocspaceApiSdk::MigratingApiGroup](docs/MigratingApiGroup.md)
 - [DocspaceApiSdk::MigratingApiUser](docs/MigratingApiUser.md)
 - [DocspaceApiSdk::MigrationApiInfo](docs/MigrationApiInfo.md)
 - [DocspaceApiSdk::MigrationStatusDto](docs/MigrationStatusDto.md)
 - [DocspaceApiSdk::MigrationStatusWrapper](docs/MigrationStatusWrapper.md)
 - [DocspaceApiSdk::MobilePhoneActivationStatus](docs/MobilePhoneActivationStatus.md)
 - [DocspaceApiSdk::MobileRequestsDto](docs/MobileRequestsDto.md)
 - [DocspaceApiSdk::ModelModule](docs/ModelModule.md)
 - [DocspaceApiSdk::ModuleWrapper](docs/ModuleWrapper.md)
 - [DocspaceApiSdk::MultiSizeLogoCover](docs/MultiSizeLogoCover.md)
 - [DocspaceApiSdk::NewItemsDtoFileEntryBaseDto](docs/NewItemsDtoFileEntryBaseDto.md)
 - [DocspaceApiSdk::NewItemsDtoRoomNewItemsDto](docs/NewItemsDtoRoomNewItemsDto.md)
 - [DocspaceApiSdk::NewItemsFileEntryBaseArrayWrapper](docs/NewItemsFileEntryBaseArrayWrapper.md)
 - [DocspaceApiSdk::NewItemsRoomNewItemsArrayWrapper](docs/NewItemsRoomNewItemsArrayWrapper.md)
 - [DocspaceApiSdk::NotificationChannelDto](docs/NotificationChannelDto.md)
 - [DocspaceApiSdk::NotificationChannelStatusDto](docs/NotificationChannelStatusDto.md)
 - [DocspaceApiSdk::NotificationChannelStatusWrapper](docs/NotificationChannelStatusWrapper.md)
 - [DocspaceApiSdk::NotificationSettingsDto](docs/NotificationSettingsDto.md)
 - [DocspaceApiSdk::NotificationSettingsRequestsDto](docs/NotificationSettingsRequestsDto.md)
 - [DocspaceApiSdk::NotificationSettingsWrapper](docs/NotificationSettingsWrapper.md)
 - [DocspaceApiSdk::NotificationType](docs/NotificationType.md)
 - [DocspaceApiSdk::OAuth20Token](docs/OAuth20Token.md)
 - [DocspaceApiSdk::ObjectArrayWrapper](docs/ObjectArrayWrapper.md)
 - [DocspaceApiSdk::ObjectWrapper](docs/ObjectWrapper.md)
 - [DocspaceApiSdk::OperationDto](docs/OperationDto.md)
 - [DocspaceApiSdk::OperationOrderType](docs/OperationOrderType.md)
 - [DocspaceApiSdk::OperationStatus](docs/OperationStatus.md)
 - [DocspaceApiSdk::OperationType](docs/OperationType.md)
 - [DocspaceApiSdk::Options](docs/Options.md)
 - [DocspaceApiSdk::OrderBy](docs/OrderBy.md)
 - [DocspaceApiSdk::OrderRequestDto](docs/OrderRequestDto.md)
 - [DocspaceApiSdk::OrdersItemRequestDtoInteger](docs/OrdersItemRequestDtoInteger.md)
 - [DocspaceApiSdk::OrdersRequestDtoInteger](docs/OrdersRequestDtoInteger.md)
 - [DocspaceApiSdk::OwnerChangeInstructionsDto](docs/OwnerChangeInstructionsDto.md)
 - [DocspaceApiSdk::OwnerChangeInstructionsWrapper](docs/OwnerChangeInstructionsWrapper.md)
 - [DocspaceApiSdk::OwnerIdSettingsRequestDto](docs/OwnerIdSettingsRequestDto.md)
 - [DocspaceApiSdk::PageableModificationResponse](docs/PageableModificationResponse.md)
 - [DocspaceApiSdk::PageableResponse](docs/PageableResponse.md)
 - [DocspaceApiSdk::PageableResponseClientInfoResponse](docs/PageableResponseClientInfoResponse.md)
 - [DocspaceApiSdk::Paragraph](docs/Paragraph.md)
 - [DocspaceApiSdk::PasswordHasher](docs/PasswordHasher.md)
 - [DocspaceApiSdk::PasswordSettingsDto](docs/PasswordSettingsDto.md)
 - [DocspaceApiSdk::PasswordSettingsRequestsDto](docs/PasswordSettingsRequestsDto.md)
 - [DocspaceApiSdk::PasswordSettingsWrapper](docs/PasswordSettingsWrapper.md)
 - [DocspaceApiSdk::PaymentCalculation](docs/PaymentCalculation.md)
 - [DocspaceApiSdk::PaymentCalculationWrapper](docs/PaymentCalculationWrapper.md)
 - [DocspaceApiSdk::PaymentMethodStatus](docs/PaymentMethodStatus.md)
 - [DocspaceApiSdk::PaymentSettingsDto](docs/PaymentSettingsDto.md)
 - [DocspaceApiSdk::PaymentSettingsWrapper](docs/PaymentSettingsWrapper.md)
 - [DocspaceApiSdk::PaymentUrlRequestDto](docs/PaymentUrlRequestDto.md)
 - [DocspaceApiSdk::Payments](docs/Payments.md)
 - [DocspaceApiSdk::PermissionsConfig](docs/PermissionsConfig.md)
 - [DocspaceApiSdk::PluginsConfig](docs/PluginsConfig.md)
 - [DocspaceApiSdk::PluginsDto](docs/PluginsDto.md)
 - [DocspaceApiSdk::PriceDto](docs/PriceDto.md)
 - [DocspaceApiSdk::ProblemDetail](docs/ProblemDetail.md)
 - [DocspaceApiSdk::ProductAdministratorDto](docs/ProductAdministratorDto.md)
 - [DocspaceApiSdk::ProductAdministratorWrapper](docs/ProductAdministratorWrapper.md)
 - [DocspaceApiSdk::ProductQuantityType](docs/ProductQuantityType.md)
 - [DocspaceApiSdk::ProductType](docs/ProductType.md)
 - [DocspaceApiSdk::ProviderArrayWrapper](docs/ProviderArrayWrapper.md)
 - [DocspaceApiSdk::ProviderDto](docs/ProviderDto.md)
 - [DocspaceApiSdk::ProviderFilter](docs/ProviderFilter.md)
 - [DocspaceApiSdk::QuantityRequestDto](docs/QuantityRequestDto.md)
 - [DocspaceApiSdk::Quota](docs/Quota.md)
 - [DocspaceApiSdk::QuotaArrayWrapper](docs/QuotaArrayWrapper.md)
 - [DocspaceApiSdk::QuotaDto](docs/QuotaDto.md)
 - [DocspaceApiSdk::QuotaFilter](docs/QuotaFilter.md)
 - [DocspaceApiSdk::QuotaScope](docs/QuotaScope.md)
 - [DocspaceApiSdk::QuotaSettingsRequestsDto](docs/QuotaSettingsRequestsDto.md)
 - [DocspaceApiSdk::QuotaSettingsRequestsDtoDefaultQuota](docs/QuotaSettingsRequestsDtoDefaultQuota.md)
 - [DocspaceApiSdk::QuotaState](docs/QuotaState.md)
 - [DocspaceApiSdk::QuotaWrapper](docs/QuotaWrapper.md)
 - [DocspaceApiSdk::RecaptchaType](docs/RecaptchaType.md)
 - [DocspaceApiSdk::RecentConfig](docs/RecentConfig.md)
 - [DocspaceApiSdk::RegStatus](docs/RegStatus.md)
 - [DocspaceApiSdk::ReportDto](docs/ReportDto.md)
 - [DocspaceApiSdk::ReportWrapper](docs/ReportWrapper.md)
 - [DocspaceApiSdk::RestrictedModelsResponse](docs/RestrictedModelsResponse.md)
 - [DocspaceApiSdk::RestrictedModelsResponseWrapper](docs/RestrictedModelsResponseWrapper.md)
 - [DocspaceApiSdk::ReviewConfig](docs/ReviewConfig.md)
 - [DocspaceApiSdk::RoomDataLifetimeDto](docs/RoomDataLifetimeDto.md)
 - [DocspaceApiSdk::RoomDataLifetimePeriod](docs/RoomDataLifetimePeriod.md)
 - [DocspaceApiSdk::RoomFromTemplateStatusDto](docs/RoomFromTemplateStatusDto.md)
 - [DocspaceApiSdk::RoomFromTemplateStatusWrapper](docs/RoomFromTemplateStatusWrapper.md)
 - [DocspaceApiSdk::RoomGroupArrayWrapper](docs/RoomGroupArrayWrapper.md)
 - [DocspaceApiSdk::RoomGroupDto](docs/RoomGroupDto.md)
 - [DocspaceApiSdk::RoomGroupRequestDto](docs/RoomGroupRequestDto.md)
 - [DocspaceApiSdk::RoomGroupWrapper](docs/RoomGroupWrapper.md)
 - [DocspaceApiSdk::RoomInvitation](docs/RoomInvitation.md)
 - [DocspaceApiSdk::RoomInvitationRequest](docs/RoomInvitationRequest.md)
 - [DocspaceApiSdk::RoomLinkRequest](docs/RoomLinkRequest.md)
 - [DocspaceApiSdk::RoomNewItemsDto](docs/RoomNewItemsDto.md)
 - [DocspaceApiSdk::RoomPrivacyFilter](docs/RoomPrivacyFilter.md)
 - [DocspaceApiSdk::RoomSecurityDto](docs/RoomSecurityDto.md)
 - [DocspaceApiSdk::RoomSecurityError](docs/RoomSecurityError.md)
 - [DocspaceApiSdk::RoomSecurityWrapper](docs/RoomSecurityWrapper.md)
 - [DocspaceApiSdk::RoomTemplateDto](docs/RoomTemplateDto.md)
 - [DocspaceApiSdk::RoomTemplateStatusDto](docs/RoomTemplateStatusDto.md)
 - [DocspaceApiSdk::RoomTemplateStatusWrapper](docs/RoomTemplateStatusWrapper.md)
 - [DocspaceApiSdk::RoomType](docs/RoomType.md)
 - [DocspaceApiSdk::RoomsNotificationSettingsDto](docs/RoomsNotificationSettingsDto.md)
 - [DocspaceApiSdk::RoomsNotificationSettingsWrapper](docs/RoomsNotificationSettingsWrapper.md)
 - [DocspaceApiSdk::RoomsNotificationsSettingsRequestDto](docs/RoomsNotificationsSettingsRequestDto.md)
 - [DocspaceApiSdk::Run](docs/Run.md)
 - [DocspaceApiSdk::STRINGArrayWrapper](docs/STRINGArrayWrapper.md)
 - [DocspaceApiSdk::SalesRequestsDto](docs/SalesRequestsDto.md)
 - [DocspaceApiSdk::SaveAsPdfInteger](docs/SaveAsPdfInteger.md)
 - [DocspaceApiSdk::SaveFormRoleMappingDtoInteger](docs/SaveFormRoleMappingDtoInteger.md)
 - [DocspaceApiSdk::ScheduleDto](docs/ScheduleDto.md)
 - [DocspaceApiSdk::ScheduleWrapper](docs/ScheduleWrapper.md)
 - [DocspaceApiSdk::ScopeResponse](docs/ScopeResponse.md)
 - [DocspaceApiSdk::SearchArea](docs/SearchArea.md)
 - [DocspaceApiSdk::SecurityArrayWrapper](docs/SecurityArrayWrapper.md)
 - [DocspaceApiSdk::SecurityDto](docs/SecurityDto.md)
 - [DocspaceApiSdk::SecurityInfoRequestDto](docs/SecurityInfoRequestDto.md)
 - [DocspaceApiSdk::SecurityInfoSimpleRequestDto](docs/SecurityInfoSimpleRequestDto.md)
 - [DocspaceApiSdk::SecurityRequestsDto](docs/SecurityRequestsDto.md)
 - [DocspaceApiSdk::SessionRequest](docs/SessionRequest.md)
 - [DocspaceApiSdk::SetAppEnabledBody](docs/SetAppEnabledBody.md)
 - [DocspaceApiSdk::SetAppSettingsBody](docs/SetAppSettingsBody.md)
 - [DocspaceApiSdk::SetAppSettingsBodySettings](docs/SetAppSettingsBodySettings.md)
 - [DocspaceApiSdk::SetManagerRequest](docs/SetManagerRequest.md)
 - [DocspaceApiSdk::SetPublicDto](docs/SetPublicDto.md)
 - [DocspaceApiSdk::SetRestrictedAiModelsRequestDto](docs/SetRestrictedAiModelsRequestDto.md)
 - [DocspaceApiSdk::SettingsDto](docs/SettingsDto.md)
 - [DocspaceApiSdk::SettingsRequestDto](docs/SettingsRequestDto.md)
 - [DocspaceApiSdk::SettingsWrapper](docs/SettingsWrapper.md)
 - [DocspaceApiSdk::ShareFilterType](docs/ShareFilterType.md)
 - [DocspaceApiSdk::SignupAccountRequestDto](docs/SignupAccountRequestDto.md)
 - [DocspaceApiSdk::Size](docs/Size.md)
 - [DocspaceApiSdk::SmtpOperationStatusRequestsDto](docs/SmtpOperationStatusRequestsDto.md)
 - [DocspaceApiSdk::SmtpOperationStatusRequestsWrapper](docs/SmtpOperationStatusRequestsWrapper.md)
 - [DocspaceApiSdk::SmtpSettingsDto](docs/SmtpSettingsDto.md)
 - [DocspaceApiSdk::SmtpSettingsWrapper](docs/SmtpSettingsWrapper.md)
 - [DocspaceApiSdk::SortOrder](docs/SortOrder.md)
 - [DocspaceApiSdk::SortedByType](docs/SortedByType.md)
 - [DocspaceApiSdk::SsoCertificate](docs/SsoCertificate.md)
 - [DocspaceApiSdk::SsoFieldMapping](docs/SsoFieldMapping.md)
 - [DocspaceApiSdk::SsoIdpCertificateAdvanced](docs/SsoIdpCertificateAdvanced.md)
 - [DocspaceApiSdk::SsoIdpSettings](docs/SsoIdpSettings.md)
 - [DocspaceApiSdk::SsoSettingsRequestsDto](docs/SsoSettingsRequestsDto.md)
 - [DocspaceApiSdk::SsoSettingsV2](docs/SsoSettingsV2.md)
 - [DocspaceApiSdk::SsoSettingsV2Wrapper](docs/SsoSettingsV2Wrapper.md)
 - [DocspaceApiSdk::SsoSpCertificateAdvanced](docs/SsoSpCertificateAdvanced.md)
 - [DocspaceApiSdk::StartEdit](docs/StartEdit.md)
 - [DocspaceApiSdk::StartFillingForm](docs/StartFillingForm.md)
 - [DocspaceApiSdk::StartFillingMode](docs/StartFillingMode.md)
 - [DocspaceApiSdk::StartReassignRequestDto](docs/StartReassignRequestDto.md)
 - [DocspaceApiSdk::StartUpdateUserTypeDto](docs/StartUpdateUserTypeDto.md)
 - [DocspaceApiSdk::Status](docs/Status.md)
 - [DocspaceApiSdk::StorageArrayWrapper](docs/StorageArrayWrapper.md)
 - [DocspaceApiSdk::StorageDto](docs/StorageDto.md)
 - [DocspaceApiSdk::StorageEncryptionRequestsDto](docs/StorageEncryptionRequestsDto.md)
 - [DocspaceApiSdk::StorageFilter](docs/StorageFilter.md)
 - [DocspaceApiSdk::StorageRequestsDto](docs/StorageRequestsDto.md)
 - [DocspaceApiSdk::StorageSettings](docs/StorageSettings.md)
 - [DocspaceApiSdk::StorageSettingsWrapper](docs/StorageSettingsWrapper.md)
 - [DocspaceApiSdk::StringWrapper](docs/StringWrapper.md)
 - [DocspaceApiSdk::StudioDefaultPageSettings](docs/StudioDefaultPageSettings.md)
 - [DocspaceApiSdk::StudioDefaultPageSettingsWrapper](docs/StudioDefaultPageSettingsWrapper.md)
 - [DocspaceApiSdk::SubAccount](docs/SubAccount.md)
 - [DocspaceApiSdk::SubjectType](docs/SubjectType.md)
 - [DocspaceApiSdk::SubmitForm](docs/SubmitForm.md)
 - [DocspaceApiSdk::SubscriptionBalanceInfo](docs/SubscriptionBalanceInfo.md)
 - [DocspaceApiSdk::SubscriptionBalanceInfoWrapper](docs/SubscriptionBalanceInfoWrapper.md)
 - [DocspaceApiSdk::Tariff](docs/Tariff.md)
 - [DocspaceApiSdk::TariffState](docs/TariffState.md)
 - [DocspaceApiSdk::TariffWrapper](docs/TariffWrapper.md)
 - [DocspaceApiSdk::TaskProgressResponseDto](docs/TaskProgressResponseDto.md)
 - [DocspaceApiSdk::TaskProgressResponseWrapper](docs/TaskProgressResponseWrapper.md)
 - [DocspaceApiSdk::TelegramStatusDto](docs/TelegramStatusDto.md)
 - [DocspaceApiSdk::TelegramStatusWrapper](docs/TelegramStatusWrapper.md)
 - [DocspaceApiSdk::TemplatesConfig](docs/TemplatesConfig.md)
 - [DocspaceApiSdk::TemplatesRequestDto](docs/TemplatesRequestDto.md)
 - [DocspaceApiSdk::TenantAiAccessSettings](docs/TenantAiAccessSettings.md)
 - [DocspaceApiSdk::TenantAiAccessSettingsDto](docs/TenantAiAccessSettingsDto.md)
 - [DocspaceApiSdk::TenantAiAccessSettingsWrapper](docs/TenantAiAccessSettingsWrapper.md)
 - [DocspaceApiSdk::TenantAiAgentQuotaSettings](docs/TenantAiAgentQuotaSettings.md)
 - [DocspaceApiSdk::TenantAiAgentQuotaSettingsWrapper](docs/TenantAiAgentQuotaSettingsWrapper.md)
 - [DocspaceApiSdk::TenantAuditSettings](docs/TenantAuditSettings.md)
 - [DocspaceApiSdk::TenantAuditSettingsResponseWrapper](docs/TenantAuditSettingsResponseWrapper.md)
 - [DocspaceApiSdk::TenantAuditSettingsWrapper](docs/TenantAuditSettingsWrapper.md)
 - [DocspaceApiSdk::TenantBannerSettings](docs/TenantBannerSettings.md)
 - [DocspaceApiSdk::TenantBannerSettingsDto](docs/TenantBannerSettingsDto.md)
 - [DocspaceApiSdk::TenantBannerSettingsWrapper](docs/TenantBannerSettingsWrapper.md)
 - [DocspaceApiSdk::TenantDeepLinkSettings](docs/TenantDeepLinkSettings.md)
 - [DocspaceApiSdk::TenantDeepLinkSettingsWrapper](docs/TenantDeepLinkSettingsWrapper.md)
 - [DocspaceApiSdk::TenantDevToolsAccessSettings](docs/TenantDevToolsAccessSettings.md)
 - [DocspaceApiSdk::TenantDevToolsAccessSettingsDto](docs/TenantDevToolsAccessSettingsDto.md)
 - [DocspaceApiSdk::TenantDevToolsAccessSettingsWrapper](docs/TenantDevToolsAccessSettingsWrapper.md)
 - [DocspaceApiSdk::TenantDomainValidator](docs/TenantDomainValidator.md)
 - [DocspaceApiSdk::TenantDto](docs/TenantDto.md)
 - [DocspaceApiSdk::TenantEntityQuotaSettings](docs/TenantEntityQuotaSettings.md)
 - [DocspaceApiSdk::TenantIndustry](docs/TenantIndustry.md)
 - [DocspaceApiSdk::TenantQuota](docs/TenantQuota.md)
 - [DocspaceApiSdk::TenantQuotaFeatureDto](docs/TenantQuotaFeatureDto.md)
 - [DocspaceApiSdk::TenantQuotaSettings](docs/TenantQuotaSettings.md)
 - [DocspaceApiSdk::TenantQuotaSettingsRequestsDto](docs/TenantQuotaSettingsRequestsDto.md)
 - [DocspaceApiSdk::TenantQuotaSettingsWrapper](docs/TenantQuotaSettingsWrapper.md)
 - [DocspaceApiSdk::TenantQuotaWrapper](docs/TenantQuotaWrapper.md)
 - [DocspaceApiSdk::TenantRoomQuotaSettings](docs/TenantRoomQuotaSettings.md)
 - [DocspaceApiSdk::TenantRoomQuotaSettingsWrapper](docs/TenantRoomQuotaSettingsWrapper.md)
 - [DocspaceApiSdk::TenantStatus](docs/TenantStatus.md)
 - [DocspaceApiSdk::TenantTrustedDomainsType](docs/TenantTrustedDomainsType.md)
 - [DocspaceApiSdk::TenantUserInvitationSettingsDto](docs/TenantUserInvitationSettingsDto.md)
 - [DocspaceApiSdk::TenantUserInvitationSettingsRequestDto](docs/TenantUserInvitationSettingsRequestDto.md)
 - [DocspaceApiSdk::TenantUserInvitationSettingsWrapper](docs/TenantUserInvitationSettingsWrapper.md)
 - [DocspaceApiSdk::TenantUserQuotaSettings](docs/TenantUserQuotaSettings.md)
 - [DocspaceApiSdk::TenantUserQuotaSettingsWrapper](docs/TenantUserQuotaSettingsWrapper.md)
 - [DocspaceApiSdk::TenantWalletService](docs/TenantWalletService.md)
 - [DocspaceApiSdk::TenantWalletServiceSettings](docs/TenantWalletServiceSettings.md)
 - [DocspaceApiSdk::TenantWalletServiceSettingsWrapper](docs/TenantWalletServiceSettingsWrapper.md)
 - [DocspaceApiSdk::TenantWalletSettings](docs/TenantWalletSettings.md)
 - [DocspaceApiSdk::TenantWalletSettingsResponseWrapper](docs/TenantWalletSettingsResponseWrapper.md)
 - [DocspaceApiSdk::TenantWalletSettingsWrapper](docs/TenantWalletSettingsWrapper.md)
 - [DocspaceApiSdk::TenantWrapper](docs/TenantWrapper.md)
 - [DocspaceApiSdk::TerminateRequestDto](docs/TerminateRequestDto.md)
 - [DocspaceApiSdk::TfaAppCodeArrayWrapper](docs/TfaAppCodeArrayWrapper.md)
 - [DocspaceApiSdk::TfaAppCodeDto](docs/TfaAppCodeDto.md)
 - [DocspaceApiSdk::TfaConfirmDataDto](docs/TfaConfirmDataDto.md)
 - [DocspaceApiSdk::TfaConfirmDataWrapper](docs/TfaConfirmDataWrapper.md)
 - [DocspaceApiSdk::TfaRequestsDto](docs/TfaRequestsDto.md)
 - [DocspaceApiSdk::TfaRequestsDtoType](docs/TfaRequestsDtoType.md)
 - [DocspaceApiSdk::TfaSettingsArrayWrapper](docs/TfaSettingsArrayWrapper.md)
 - [DocspaceApiSdk::TfaSettingsDto](docs/TfaSettingsDto.md)
 - [DocspaceApiSdk::TfaSetupCodeDto](docs/TfaSetupCodeDto.md)
 - [DocspaceApiSdk::TfaSetupCodeWrapper](docs/TfaSetupCodeWrapper.md)
 - [DocspaceApiSdk::TfaValidateRequestsDto](docs/TfaValidateRequestsDto.md)
 - [DocspaceApiSdk::ThirdPartyBackupRequestDto](docs/ThirdPartyBackupRequestDto.md)
 - [DocspaceApiSdk::ThirdPartyParams](docs/ThirdPartyParams.md)
 - [DocspaceApiSdk::ThirdPartyParamsArrayWrapper](docs/ThirdPartyParamsArrayWrapper.md)
 - [DocspaceApiSdk::ThirdPartyRequestDto](docs/ThirdPartyRequestDto.md)
 - [DocspaceApiSdk::Thumbnail](docs/Thumbnail.md)
 - [DocspaceApiSdk::ThumbnailsDataDto](docs/ThumbnailsDataDto.md)
 - [DocspaceApiSdk::ThumbnailsDataWrapper](docs/ThumbnailsDataWrapper.md)
 - [DocspaceApiSdk::ThumbnailsRequest](docs/ThumbnailsRequest.md)
 - [DocspaceApiSdk::TimezonesRequestsArrayWrapper](docs/TimezonesRequestsArrayWrapper.md)
 - [DocspaceApiSdk::TimezonesRequestsDto](docs/TimezonesRequestsDto.md)
 - [DocspaceApiSdk::TopUpDepositRequestDto](docs/TopUpDepositRequestDto.md)
 - [DocspaceApiSdk::TransactionInfo](docs/TransactionInfo.md)
 - [DocspaceApiSdk::TurnOnAdminMessageSettingsRequestDto](docs/TurnOnAdminMessageSettingsRequestDto.md)
 - [DocspaceApiSdk::UpcomingPaymentArrayWrapper](docs/UpcomingPaymentArrayWrapper.md)
 - [DocspaceApiSdk::UpcomingPaymentDto](docs/UpcomingPaymentDto.md)
 - [DocspaceApiSdk::UpdateApiKeyRequest](docs/UpdateApiKeyRequest.md)
 - [DocspaceApiSdk::UpdateClientRequest](docs/UpdateClientRequest.md)
 - [DocspaceApiSdk::UpdateComment](docs/UpdateComment.md)
 - [DocspaceApiSdk::UpdateFile](docs/UpdateFile.md)
 - [DocspaceApiSdk::UpdateGroupRequest](docs/UpdateGroupRequest.md)
 - [DocspaceApiSdk::UpdateMemberRequestDto](docs/UpdateMemberRequestDto.md)
 - [DocspaceApiSdk::UpdateMembersQuotaRequestDto](docs/UpdateMembersQuotaRequestDto.md)
 - [DocspaceApiSdk::UpdateMembersQuotaRequestDtoQuota](docs/UpdateMembersQuotaRequestDtoQuota.md)
 - [DocspaceApiSdk::UpdateMembersRequestDto](docs/UpdateMembersRequestDto.md)
 - [DocspaceApiSdk::UpdatePhotoMemberRequest](docs/UpdatePhotoMemberRequest.md)
 - [DocspaceApiSdk::UpdateRoomGroupRequest](docs/UpdateRoomGroupRequest.md)
 - [DocspaceApiSdk::UpdateRoomRequest](docs/UpdateRoomRequest.md)
 - [DocspaceApiSdk::UpdateRoomsQuotaRequestDtoInteger](docs/UpdateRoomsQuotaRequestDtoInteger.md)
 - [DocspaceApiSdk::UpdateRoomsRoomIdsRequestDtoInteger](docs/UpdateRoomsRoomIdsRequestDtoInteger.md)
 - [DocspaceApiSdk::UpdateTagRequestDto](docs/UpdateTagRequestDto.md)
 - [DocspaceApiSdk::UpdateWebhooksConfigRequestsDto](docs/UpdateWebhooksConfigRequestsDto.md)
 - [DocspaceApiSdk::UploadResultDto](docs/UploadResultDto.md)
 - [DocspaceApiSdk::UploadResultWrapper](docs/UploadResultWrapper.md)
 - [DocspaceApiSdk::UploadSessionResponseDtoInteger](docs/UploadSessionResponseDtoInteger.md)
 - [DocspaceApiSdk::UploadSessionResponseIntegerWrapper](docs/UploadSessionResponseIntegerWrapper.md)
 - [DocspaceApiSdk::UsageSpaceStatItemArrayWrapper](docs/UsageSpaceStatItemArrayWrapper.md)
 - [DocspaceApiSdk::UsageSpaceStatItemDto](docs/UsageSpaceStatItemDto.md)
 - [DocspaceApiSdk::UserConfig](docs/UserConfig.md)
 - [DocspaceApiSdk::UserExistsResponseDto](docs/UserExistsResponseDto.md)
 - [DocspaceApiSdk::UserExistsResponseWrapper](docs/UserExistsResponseWrapper.md)
 - [DocspaceApiSdk::UserInfo](docs/UserInfo.md)
 - [DocspaceApiSdk::UserInfoWrapper](docs/UserInfoWrapper.md)
 - [DocspaceApiSdk::UserInvitation](docs/UserInvitation.md)
 - [DocspaceApiSdk::UserInvitationRequestDto](docs/UserInvitationRequestDto.md)
 - [DocspaceApiSdk::ValidationResult](docs/ValidationResult.md)
 - [DocspaceApiSdk::VectorizationStatus](docs/VectorizationStatus.md)
 - [DocspaceApiSdk::WalletQuantityRequestDto](docs/WalletQuantityRequestDto.md)
 - [DocspaceApiSdk::WalletServiceArrayWrapper](docs/WalletServiceArrayWrapper.md)
 - [DocspaceApiSdk::WalletServiceDto](docs/WalletServiceDto.md)
 - [DocspaceApiSdk::WalletServiceWrapper](docs/WalletServiceWrapper.md)
 - [DocspaceApiSdk::WatermarkAdditions](docs/WatermarkAdditions.md)
 - [DocspaceApiSdk::WatermarkDto](docs/WatermarkDto.md)
 - [DocspaceApiSdk::WatermarkOnDraw](docs/WatermarkOnDraw.md)
 - [DocspaceApiSdk::WatermarkRequestDto](docs/WatermarkRequestDto.md)
 - [DocspaceApiSdk::WebItemSecurityRequestsDto](docs/WebItemSecurityRequestsDto.md)
 - [DocspaceApiSdk::WebItemsSecurityRequestsDto](docs/WebItemsSecurityRequestsDto.md)
 - [DocspaceApiSdk::WebPluginArrayWrapper](docs/WebPluginArrayWrapper.md)
 - [DocspaceApiSdk::WebPluginDto](docs/WebPluginDto.md)
 - [DocspaceApiSdk::WebPluginRequests](docs/WebPluginRequests.md)
 - [DocspaceApiSdk::WebPluginWrapper](docs/WebPluginWrapper.md)
 - [DocspaceApiSdk::WebhookGroupStatus](docs/WebhookGroupStatus.md)
 - [DocspaceApiSdk::WebhookRetryRequestsDto](docs/WebhookRetryRequestsDto.md)
 - [DocspaceApiSdk::WebhookTrigger](docs/WebhookTrigger.md)
 - [DocspaceApiSdk::WebhookTriggerArrayWrapper](docs/WebhookTriggerArrayWrapper.md)
 - [DocspaceApiSdk::WebhookTriggerDto](docs/WebhookTriggerDto.md)
 - [DocspaceApiSdk::WebhooksConfigDto](docs/WebhooksConfigDto.md)
 - [DocspaceApiSdk::WebhooksConfigWithStatusArrayWrapper](docs/WebhooksConfigWithStatusArrayWrapper.md)
 - [DocspaceApiSdk::WebhooksConfigWithStatusDto](docs/WebhooksConfigWithStatusDto.md)
 - [DocspaceApiSdk::WebhooksConfigWrapper](docs/WebhooksConfigWrapper.md)
 - [DocspaceApiSdk::WebhooksLogArrayWrapper](docs/WebhooksLogArrayWrapper.md)
 - [DocspaceApiSdk::WebhooksLogDto](docs/WebhooksLogDto.md)
 - [DocspaceApiSdk::WebhooksLogWrapper](docs/WebhooksLogWrapper.md)
 - [DocspaceApiSdk::WhiteLabelItemArrayWrapper](docs/WhiteLabelItemArrayWrapper.md)
 - [DocspaceApiSdk::WhiteLabelItemDto](docs/WhiteLabelItemDto.md)
 - [DocspaceApiSdk::WhiteLabelItemPathDto](docs/WhiteLabelItemPathDto.md)
 - [DocspaceApiSdk::WhiteLabelItemSizeDto](docs/WhiteLabelItemSizeDto.md)
 - [DocspaceApiSdk::WhiteLabelLogoType](docs/WhiteLabelLogoType.md)
 - [DocspaceApiSdk::WhiteLabelRequestsDto](docs/WhiteLabelRequestsDto.md)
 - [DocspaceApiSdk::WizardRequestsDto](docs/WizardRequestsDto.md)
 - [DocspaceApiSdk::WizardSettings](docs/WizardSettings.md)
 - [DocspaceApiSdk::WizardSettingsWrapper](docs/WizardSettingsWrapper.md)
 - [DocspaceApiSdk::XlsxReportResponseDto](docs/XlsxReportResponseDto.md)
 - [DocspaceApiSdk::XlsxReportResponseWrapper](docs/XlsxReportResponseWrapper.md)

</details>
