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
    # Checks if the current user is connected to the Telegram Bot or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/check-telegram/
    # @param [Hash] opts the optional parameters
    # @return [TelegramStatusWrapper]
    def check_telegram(opts = {})
      data, _status_code, _headers = check_telegram_with_http_info(opts)
      data
    end

    # Check the Telegram connection
    # Checks if the current user is connected to the Telegram Bot or not.
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
    # Returns a link that will connect the Telegram Bot to your account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/link-telegram/
    # @param [Hash] opts the optional parameters
    # @return [StringWrapper]
    def link_telegram(opts = {})
      data, _status_code, _headers = link_telegram_with_http_info(opts)
      data
    end

    # Get the Telegram link
    # Returns a link that will connect the Telegram Bot to your account.
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
    # Unlinks the Telegram Bot from your account.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-telegram/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def unlink_telegram(opts = {})
      data, _status_code, _headers = unlink_telegram_with_http_info(opts)
      data
    end

    # Unlink Telegram
    # Unlinks the Telegram Bot from your account.
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
