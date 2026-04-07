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
    class RebrandingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete the additional white label settings
    # Deletes the additional white label settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-additional-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @return [AdditionalWhiteLabelSettingsWrapper]
    def delete_additional_white_label_settings(opts = {})
      data, _status_code, _headers = delete_additional_white_label_settings_with_http_info(opts)
      data
    end

    # Delete the additional white label settings
    # Deletes the additional white label settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-additional-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AdditionalWhiteLabelSettingsWrapper, Integer, Hash)>] AdditionalWhiteLabelSettingsWrapper data, response status code and response headers
    def delete_additional_white_label_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.delete_additional_white_label_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/rebranding/additional'

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
      return_type = opts[:debug_return_type] || 'AdditionalWhiteLabelSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::RebrandingApi.delete_additional_white_label_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#delete_additional_white_label_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the company white label settings
    # Deletes the company white label settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-company-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @return [CompanyWhiteLabelSettingsWrapper]
    def delete_company_white_label_settings(opts = {})
      data, _status_code, _headers = delete_company_white_label_settings_with_http_info(opts)
      data
    end

    # Delete the company white label settings
    # Deletes the company white label settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-company-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyWhiteLabelSettingsWrapper, Integer, Hash)>] CompanyWhiteLabelSettingsWrapper data, response status code and response headers
    def delete_company_white_label_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.delete_company_white_label_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/rebranding/company'

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
      return_type = opts[:debug_return_type] || 'CompanyWhiteLabelSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::RebrandingApi.delete_company_white_label_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#delete_company_white_label_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the additional white label settings
    # Returns the additional white label settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-additional-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @return [AdditionalWhiteLabelSettingsWrapper]
    def get_additional_white_label_settings(opts = {})
      data, _status_code, _headers = get_additional_white_label_settings_with_http_info(opts)
      data
    end

    # Get the additional white label settings
    # Returns the additional white label settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-additional-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(AdditionalWhiteLabelSettingsWrapper, Integer, Hash)>] AdditionalWhiteLabelSettingsWrapper data, response status code and response headers
    def get_additional_white_label_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.get_additional_white_label_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/rebranding/additional'

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
      return_type = opts[:debug_return_type] || 'AdditionalWhiteLabelSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::RebrandingApi.get_additional_white_label_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#get_additional_white_label_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the company white label settings
    # Returns the company white label settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-company-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @return [CompanyWhiteLabelSettingsWrapper]
    def get_company_white_label_settings(opts = {})
      data, _status_code, _headers = get_company_white_label_settings_with_http_info(opts)
      data
    end

    # Get the company white label settings
    # Returns the company white label settings.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-company-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyWhiteLabelSettingsWrapper, Integer, Hash)>] CompanyWhiteLabelSettingsWrapper data, response status code and response headers
    def get_company_white_label_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.get_company_white_label_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/rebranding/company'

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
      return_type = opts[:debug_return_type] || 'CompanyWhiteLabelSettingsWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::RebrandingApi.get_company_white_label_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#get_company_white_label_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the white label availability
    # Checks if the white label is enabled or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enable-whitelabel/
    # @param [Hash] opts the optional parameters
    # @return [BooleanWrapper]
    def get_enable_whitelabel(opts = {})
      data, _status_code, _headers = get_enable_whitelabel_with_http_info(opts)
      data
    end

    # Check the white label availability
    # Checks if the white label is enabled or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-enable-whitelabel/
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def get_enable_whitelabel_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.get_enable_whitelabel ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/enablewhitelabel'

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
        :operation => :"Settings::RebrandingApi.get_enable_whitelabel",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#get_enable_whitelabel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the default white label logo text
    # Specifies if the white label logo text is default or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-white-label-logo-text/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [IsDefaultWhiteLabelLogosWrapper]
    def get_is_default_white_label_logo_text(opts = {})
      data, _status_code, _headers = get_is_default_white_label_logo_text_with_http_info(opts)
      data
    end

    # Check the default white label logo text
    # Specifies if the white label logo text is default or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-white-label-logo-text/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [Array<(IsDefaultWhiteLabelLogosWrapper, Integer, Hash)>] IsDefaultWhiteLabelLogosWrapper data, response status code and response headers
    def get_is_default_white_label_logo_text_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.get_is_default_white_label_logo_text ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/whitelabel/logotext/isdefault'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'IsDark'] = opts[:'is_dark'] if !opts[:'is_dark'].nil?
      query_params[:'IsDefault'] = opts[:'is_default'] if !opts[:'is_default'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IsDefaultWhiteLabelLogosWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::RebrandingApi.get_is_default_white_label_logo_text",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#get_is_default_white_label_logo_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the default white label logos
    # Specifies if the white label logos are default or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-white-label-logos/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [IsDefaultWhiteLabelLogosArrayWrapper]
    def get_is_default_white_label_logos(opts = {})
      data, _status_code, _headers = get_is_default_white_label_logos_with_http_info(opts)
      data
    end

    # Check the default white label logos
    # Specifies if the white label logos are default or not.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-default-white-label-logos/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [Array<(IsDefaultWhiteLabelLogosArrayWrapper, Integer, Hash)>] IsDefaultWhiteLabelLogosArrayWrapper data, response status code and response headers
    def get_is_default_white_label_logos_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.get_is_default_white_label_logos ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/whitelabel/logos/isdefault'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'IsDark'] = opts[:'is_dark'] if !opts[:'is_dark'].nil?
      query_params[:'IsDefault'] = opts[:'is_default'] if !opts[:'is_default'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'IsDefaultWhiteLabelLogosArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::RebrandingApi.get_is_default_white_label_logos",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#get_is_default_white_label_logos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the licensor data
    # Returns the licensor data.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-licensor-data/
    # @param [Hash] opts the optional parameters
    # @return [CompanyWhiteLabelSettingsArrayWrapper]
    def get_licensor_data(opts = {})
      data, _status_code, _headers = get_licensor_data_with_http_info(opts)
      data
    end

    # Get the licensor data
    # Returns the licensor data.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-licensor-data/
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyWhiteLabelSettingsArrayWrapper, Integer, Hash)>] CompanyWhiteLabelSettingsArrayWrapper data, response status code and response headers
    def get_licensor_data_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.get_licensor_data ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/companywhitelabel'

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
      return_type = opts[:debug_return_type] || 'CompanyWhiteLabelSettingsArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::RebrandingApi.get_licensor_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#get_licensor_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the white label logo text
    # Returns the white label logo text.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-white-label-logo-text/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [StringWrapper]
    def get_white_label_logo_text(opts = {})
      data, _status_code, _headers = get_white_label_logo_text_with_http_info(opts)
      data
    end

    # Get the white label logo text
    # Returns the white label logo text.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-white-label-logo-text/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [Array<(StringWrapper, Integer, Hash)>] StringWrapper data, response status code and response headers
    def get_white_label_logo_text_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.get_white_label_logo_text ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/whitelabel/logotext'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'IsDark'] = opts[:'is_dark'] if !opts[:'is_dark'].nil?
      query_params[:'IsDefault'] = opts[:'is_default'] if !opts[:'is_default'].nil?

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
        :operation => :"Settings::RebrandingApi.get_white_label_logo_text",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#get_white_label_logo_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the white label logos
    # Returns the white label logos.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-white-label-logos/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [WhiteLabelItemArrayWrapper]
    def get_white_label_logos(opts = {})
      data, _status_code, _headers = get_white_label_logos_with_http_info(opts)
      data
    end

    # Get the white label logos
    # Returns the white label logos.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-white-label-logos/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [Array<(WhiteLabelItemArrayWrapper, Integer, Hash)>] WhiteLabelItemArrayWrapper data, response status code and response headers
    def get_white_label_logos_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.get_white_label_logos ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/whitelabel/logos'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'IsDark'] = opts[:'is_dark'] if !opts[:'is_dark'].nil?
      query_params[:'IsDefault'] = opts[:'is_default'] if !opts[:'is_default'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WhiteLabelItemArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"Settings::RebrandingApi.get_white_label_logos",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#get_white_label_logos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Restore the white label logo text
    # Restores the white label logo text.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-white-label-logo-text/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [BooleanWrapper]
    def restore_white_label_logo_text(opts = {})
      data, _status_code, _headers = restore_white_label_logo_text_with_http_info(opts)
      data
    end

    # Restore the white label logo text
    # Restores the white label logo text.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-white-label-logo-text/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def restore_white_label_logo_text_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.restore_white_label_logo_text ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/whitelabel/logotext/restore'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'IsDark'] = opts[:'is_dark'] if !opts[:'is_dark'].nil?
      query_params[:'IsDefault'] = opts[:'is_default'] if !opts[:'is_default'].nil?

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
        :operation => :"Settings::RebrandingApi.restore_white_label_logo_text",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#restore_white_label_logo_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Restore the white label logos
    # Restores the white label logos.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-white-label-logos/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [BooleanWrapper]
    def restore_white_label_logos(opts = {})
      data, _status_code, _headers = restore_white_label_logos_with_http_info(opts)
      data
    end

    # Restore the white label logos
    # Restores the white label logos.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-white-label-logos/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def restore_white_label_logos_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.restore_white_label_logos ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/whitelabel/logos/restore'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'IsDark'] = opts[:'is_dark'] if !opts[:'is_dark'].nil?
      query_params[:'IsDefault'] = opts[:'is_default'] if !opts[:'is_default'].nil?

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
        :operation => :"Settings::RebrandingApi.restore_white_label_logos",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#restore_white_label_logos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the additional white label settings
    # Saves the additional white label settings specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-additional-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [AdditionalWhiteLabelSettingsWrapper] :additional_white_label_settings_wrapper 
    # @return [BooleanWrapper]
    def save_additional_white_label_settings(opts = {})
      data, _status_code, _headers = save_additional_white_label_settings_with_http_info(opts)
      data
    end

    # Save the additional white label settings
    # Saves the additional white label settings specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-additional-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [AdditionalWhiteLabelSettingsWrapper] :additional_white_label_settings_wrapper 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def save_additional_white_label_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.save_additional_white_label_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/rebranding/additional'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'additional_white_label_settings_wrapper'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::RebrandingApi.save_additional_white_label_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#save_additional_white_label_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the company white label settings
    # Saves the company white label settings specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-company-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [CompanyWhiteLabelSettingsWrapper] :company_white_label_settings_wrapper 
    # @return [BooleanWrapper]
    def save_company_white_label_settings(opts = {})
      data, _status_code, _headers = save_company_white_label_settings_with_http_info(opts)
      data
    end

    # Save the company white label settings
    # Saves the company white label settings specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-company-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [CompanyWhiteLabelSettingsWrapper] :company_white_label_settings_wrapper 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def save_company_white_label_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.save_company_white_label_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/rebranding/company'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'company_white_label_settings_wrapper'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::RebrandingApi.save_company_white_label_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#save_company_white_label_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the white label logo text settings
    # Saves the white label logo text specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-logo-text/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @option opts [WhiteLabelRequestsDto] :white_label_requests_dto 
    # @return [BooleanWrapper]
    def save_white_label_logo_text(opts = {})
      data, _status_code, _headers = save_white_label_logo_text_with_http_info(opts)
      data
    end

    # Save the white label logo text settings
    # Saves the white label logo text specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-logo-text/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @option opts [WhiteLabelRequestsDto] :white_label_requests_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def save_white_label_logo_text_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.save_white_label_logo_text ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/whitelabel/logotext/save'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'IsDark'] = opts[:'is_dark'] if !opts[:'is_dark'].nil?
      query_params[:'IsDefault'] = opts[:'is_default'] if !opts[:'is_default'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'white_label_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::RebrandingApi.save_white_label_logo_text",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#save_white_label_logo_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the white label logos
    # Saves the white label logos specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @option opts [WhiteLabelRequestsDto] :white_label_requests_dto 
    # @return [BooleanWrapper]
    def save_white_label_settings(opts = {})
      data, _status_code, _headers = save_white_label_settings_with_http_info(opts)
      data
    end

    # Save the white label logos
    # Saves the white label logos specified in the request.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-settings/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @option opts [WhiteLabelRequestsDto] :white_label_requests_dto 
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def save_white_label_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.save_white_label_settings ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/whitelabel/logos/save'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'IsDark'] = opts[:'is_dark'] if !opts[:'is_dark'].nil?
      query_params[:'IsDefault'] = opts[:'is_default'] if !opts[:'is_default'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'white_label_requests_dto'])

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Settings::RebrandingApi.save_white_label_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#save_white_label_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Save the white label logos from files
    # Saves the white label logos from files.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-settings-from-files/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [BooleanWrapper]
    def save_white_label_settings_from_files(opts = {})
      data, _status_code, _headers = save_white_label_settings_from_files_with_http_info(opts)
      data
    end

    # Save the white label logos from files
    # Saves the white label logos from files.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/save-white-label-settings-from-files/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_dark Specifies if the white label logo is for the dark theme or not.
    # @option opts [Boolean] :is_default Specifies if the logo is for a default tenant or not.
    # @return [Array<(BooleanWrapper, Integer, Hash)>] BooleanWrapper data, response status code and response headers
    def save_white_label_settings_from_files_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Settings::RebrandingApi.save_white_label_settings_from_files ...'
      end
      # resource path
      local_var_path = '/api/2.0/settings/whitelabel/logos/savefromfiles'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'IsDark'] = opts[:'is_dark'] if !opts[:'is_dark'].nil?
      query_params[:'IsDefault'] = opts[:'is_default'] if !opts[:'is_default'].nil?

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
        :operation => :"Settings::RebrandingApi.save_white_label_settings_from_files",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Settings::RebrandingApi#save_white_label_settings_from_files\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end
