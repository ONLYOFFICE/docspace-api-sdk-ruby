# (c) Copyright Ascensio System SIA 2026
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require 'cgi'

module DocspaceApiSdk
  module Settings
    class TelegramApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check the Telegram connection
    # Reports whether the current user's account is linked to the portal's Telegram bot, and under which Telegram  username. The bot keys must be configured for the portal beforehand with `POST api/2.0/settings/authservice`;  until a bot is configured, linking cannot be completed and the status never reaches the linked state. Any  authenticated user may call it, and only for their own account: there is no way to read another member's  Telegram status. This is a read-only, idempotent call. The returned `status` is published as a number, where  `0` means the account is not linked, `1` means it is linked, and `2` means a registration link has been issued  and the portal is still waiting for the user to open it in Telegram. The `username` field is filled in only in  state `1` and comes back empty in the other two. Start or resume linking with  `GET api/2.0/settings/telegram/link`, and drop an established link with  `DELETE api/2.0/settings/telegram/link`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-telegram/
    # @param [Hash] opts the optional parameters
    # @return [TelegramStatusWrapper]
    def check_telegram(opts = {})
      data, _status_code, _headers = check_telegram_with_http_info(opts)
      data
    end

    # Check the Telegram connection
    # Reports whether the current user's account is linked to the portal's Telegram bot, and under which Telegram  username. The bot keys must be configured for the portal beforehand with `POST api/2.0/settings/authservice`;  until a bot is configured, linking cannot be completed and the status never reaches the linked state. Any  authenticated user may call it, and only for their own account: there is no way to read another member's  Telegram status. This is a read-only, idempotent call. The returned `status` is published as a number, where  `0` means the account is not linked, `1` means it is linked, and `2` means a registration link has been issued  and the portal is still waiting for the user to open it in Telegram. The `username` field is filled in only in  state `1` and comes back empty in the other two. Start or resume linking with  `GET api/2.0/settings/telegram/link`, and drop an established link with  `DELETE api/2.0/settings/telegram/link`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-telegram/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TelegramStatusWrapper, Integer, Hash)>] TelegramStatusWrapper data, response status code and response headers
    def check_telegram_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::TelegramApi.check_telegram ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/telegram/check'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TelegramStatusWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::TelegramApi.check_telegram",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::TelegramApi#check_telegram\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the Telegram link
    # Returns the personal `t.me` deep link that connects the current user's account to the portal's Telegram bot,  so that notifications can be delivered to that user in Telegram. The bot keys must be configured for the  portal beforehand with `POST api/2.0/settings/authservice`; without a configured bot name the response comes  back empty. Any authenticated user may call it, and the link always belongs to the caller's own account. The  call mutates state: unless the user still has an outstanding registration token it issues a fresh one, so  calling it twice in a row hands back the same link instead of invalidating the first. That token is  short-lived (20 minutes with the default configuration), and once it has expired the operation has to be  called again for a new link. Linking itself is completed in Telegram, not here, so poll  `GET api/2.0/settings/telegram/check` until its `status` becomes `1`. Remove an established link with  `DELETE api/2.0/settings/telegram/link`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/link-telegram/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def link_telegram(opts = {})
      data, _status_code, _headers = link_telegram_with_http_info(opts)
      data
    end

    # Get the Telegram link
    # Returns the personal `t.me` deep link that connects the current user's account to the portal's Telegram bot,  so that notifications can be delivered to that user in Telegram. The bot keys must be configured for the  portal beforehand with `POST api/2.0/settings/authservice`; without a configured bot name the response comes  back empty. Any authenticated user may call it, and the link always belongs to the caller's own account. The  call mutates state: unless the user still has an outstanding registration token it issues a fresh one, so  calling it twice in a row hands back the same link instead of invalidating the first. That token is  short-lived (20 minutes with the default configuration), and once it has expired the operation has to be  called again for a new link. Linking itself is completed in Telegram, not here, so poll  `GET api/2.0/settings/telegram/check` until its `status` becomes `1`. Remove an established link with  `DELETE api/2.0/settings/telegram/link`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/link-telegram/
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def link_telegram_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::TelegramApi.link_telegram ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/telegram/link'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StringWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::TelegramApi.link_telegram",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::TelegramApi#link_telegram\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unlink Telegram
    # Removes the link between the current user's account and the portal's Telegram bot, so that this user stops  receiving notifications in Telegram. Any authenticated user may call it, and only for their own account: one  member cannot unlink another. Nothing has to be linked beforehand, and the call is destructive but idempotent,  returning `true` both when a link was removed and when there was none to remove, so a retry after a timeout is  safe. Only the portal-side link is dropped: the chat itself stays in the user's Telegram, and the portal's bot  configuration is untouched, so the other members keep their own links. Re-linking is not automatic, request a  new link with `GET api/2.0/settings/telegram/link` and confirm the result with  `GET api/2.0/settings/telegram/check`. Delivery over the other notification channels is unaffected; the  channels enabled for the portal are listed by `GET api/2.0/settings/notification/channels`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-telegram/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def unlink_telegram(opts = {})
      data, _status_code, _headers = unlink_telegram_with_http_info(opts)
      data
    end

    # Unlink Telegram
    # Removes the link between the current user's account and the portal's Telegram bot, so that this user stops  receiving notifications in Telegram. Any authenticated user may call it, and only for their own account: one  member cannot unlink another. Nothing has to be linked beforehand, and the call is destructive but idempotent,  returning `true` both when a link was removed and when there was none to remove, so a retry after a timeout is  safe. Only the portal-side link is dropped: the chat itself stays in the user's Telegram, and the portal's bot  configuration is untouched, so the other members keep their own links. Re-linking is not automatic, request a  new link with `GET api/2.0/settings/telegram/link` and confirm the result with  `GET api/2.0/settings/telegram/check`. Delivery over the other notification channels is unaffected; the  channels enabled for the portal are listed by `GET api/2.0/settings/notification/channels`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-telegram/
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def unlink_telegram_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::TelegramApi.unlink_telegram ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/telegram/link'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::TelegramApi.unlink_telegram",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::TelegramApi#unlink_telegram\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end
