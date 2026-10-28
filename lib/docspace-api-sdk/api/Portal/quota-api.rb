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
  module Portal
    class QuotaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the portal quota
    # Returns the quota this portal runs on - the allowance its tariff grants: how many users and paid users it may  have, how many rooms, the largest total and single-file size, the price of the quota and the feature flags  that go with it. The caller needs the portal-settings right and gets 403 without it; the call is read-only and  idempotent. Sizes are in bytes, and `maxTotalSize` comes back as `0` when the calling account's own role is  user, rather than as the real allowance. This is what the portal is allowed, not what it consumes: the  consumption is reported by `GET api/2.0/portal/usedspace` in gigabytes and by `GET api/2.0/portal/userscount`.  The quotas the portal could move to are listed by `GET api/2.0/portal/payment/quotas`, and  `GET api/2.0/portal/quota/right` picks the smallest of them that would still fit. A free or trial quota  carries no price, and the billing state that goes with the quota - paid, in grace period or not paid - is read  from `GET api/2.0/portal/tariff`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-quota/
    # @param [Hash] opts the optional parameters
    # @return [TenantQuotaWrapper]
    def get_portal_quota(opts = {})
      data, _status_code, _headers = get_portal_quota_with_http_info(opts)
      data
    end

    # Get the portal quota
    # Returns the quota this portal runs on - the allowance its tariff grants: how many users and paid users it may  have, how many rooms, the largest total and single-file size, the price of the quota and the feature flags  that go with it. The caller needs the portal-settings right and gets 403 without it; the call is read-only and  idempotent. Sizes are in bytes, and `maxTotalSize` comes back as `0` when the calling account's own role is  user, rather than as the real allowance. This is what the portal is allowed, not what it consumes: the  consumption is reported by `GET api/2.0/portal/usedspace` in gigabytes and by `GET api/2.0/portal/userscount`.  The quotas the portal could move to are listed by `GET api/2.0/portal/payment/quotas`, and  `GET api/2.0/portal/quota/right` picks the smallest of them that would still fit. A free or trial quota  carries no price, and the billing state that goes with the quota - paid, in grace period or not paid - is read  from `GET api/2.0/portal/tariff`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-quota/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantQuotaWrapper, Integer, Hash)>] TenantQuotaWrapper data, response status code and response headers
    def get_portal_quota_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::QuotaApi.get_portal_quota ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/quota'

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
      return_type = opts[:debug_return_type] || 'TenantQuotaWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::QuotaApi.get_portal_quota",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::QuotaApi#get_portal_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the portal tariff
    # Returns the tariff this portal runs on: its state, the end of the current period and the quotas - the plan and  its add-ons - it is made of. Nothing has to be called first, the call is read-only and idempotent, and it  keeps answering while the portal's payment has lapsed, which is what a client needs in order to show a payment  warning. How much of it is filled depends on the caller: every user gets `state`, which is `Trial`, `Paid`,  `Delay` for the grace period after the due date, or `NotPaid`; a room or DocSpace administrator also gets  `dueDate` and `delayDueDate`; and a caller with the portal-settings right additionally gets `id`,  `customerId`, `licenseDate`, the `openSource`, `enterprise` and `developer` flags and `quotas`, each entry  naming the quota, its quantity, its own due date and the quota it switches to next period. Dates are in the  portal time zone. Pass `refresh=true` to re-read the tariff from the billing system instead of the portal  cache - it is slower, so use it after a payment, not on every page. What the next period will cost is listed  by `GET api/2.0/portal/tariff/upcoming`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-tariff/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Whether the tariff is re-read from the billing system instead of the portal cache. The remote read is slower,  so ask for it right after a payment and leave it off for ordinary page loads.
    # @return [TariffWrapper]
    def get_portal_tariff(opts = {})
      data, _status_code, _headers = get_portal_tariff_with_http_info(opts)
      data
    end

    # Get the portal tariff
    # Returns the tariff this portal runs on: its state, the end of the current period and the quotas - the plan and  its add-ons - it is made of. Nothing has to be called first, the call is read-only and idempotent, and it  keeps answering while the portal's payment has lapsed, which is what a client needs in order to show a payment  warning. How much of it is filled depends on the caller: every user gets `state`, which is `Trial`, `Paid`,  `Delay` for the grace period after the due date, or `NotPaid`; a room or DocSpace administrator also gets  `dueDate` and `delayDueDate`; and a caller with the portal-settings right additionally gets `id`,  `customerId`, `licenseDate`, the `openSource`, `enterprise` and `developer` flags and `quotas`, each entry  naming the quota, its quantity, its own due date and the quota it switches to next period. Dates are in the  portal time zone. Pass `refresh=true` to re-read the tariff from the billing system instead of the portal  cache - it is slower, so use it after a payment, not on every page. What the next period will cost is listed  by `GET api/2.0/portal/tariff/upcoming`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-tariff/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Whether the tariff is re-read from the billing system instead of the portal cache. The remote read is slower,  so ask for it right after a payment and leave it off for ordinary page loads.
    # @return [Array<(TariffWrapper, Integer, Hash)>] TariffWrapper data, response status code and response headers
    def get_portal_tariff_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::QuotaApi.get_portal_tariff ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/tariff'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'refresh'] = opts[:'refresh'] if !opts[:'refresh'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TariffWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::QuotaApi.get_portal_tariff",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::QuotaApi#get_portal_tariff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the portal used space
    # Returns how much space the content of this portal occupies, in gigabytes rounded to two decimals, so a client  can show the storage bar next to the allowance. The caller needs the portal-settings right and is refused  without it; the call is read-only and idempotent. The number is added up from the storage counters the portal  keeps per owner, which means content that belongs to no account - system data - is not part of it, and it is a  plain number, not an object. The counters are maintained as files are written and removed, so the value is  current but may lag a large operation that is still running. The allowance to compare it with is  `maxTotalSize` from `GET api/2.0/portal/quota`, in bytes rather than gigabytes, and the smallest quota that  would still fit the portal is suggested by `GET api/2.0/portal/quota/right`. This operation says nothing about  which room or user the space belongs to - the per-user figures come from the People API.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-used-space/
    # @param [Hash] opts the optional parameters
    # @return [DoubleWrapper]
    def get_portal_used_space(opts = {})
      data, _status_code, _headers = get_portal_used_space_with_http_info(opts)
      data
    end

    # Get the portal used space
    # Returns how much space the content of this portal occupies, in gigabytes rounded to two decimals, so a client  can show the storage bar next to the allowance. The caller needs the portal-settings right and is refused  without it; the call is read-only and idempotent. The number is added up from the storage counters the portal  keeps per owner, which means content that belongs to no account - system data - is not part of it, and it is a  plain number, not an object. The counters are maintained as files are written and removed, so the value is  current but may lag a large operation that is still running. The allowance to compare it with is  `maxTotalSize` from `GET api/2.0/portal/quota`, in bytes rather than gigabytes, and the smallest quota that  would still fit the portal is suggested by `GET api/2.0/portal/quota/right`. This operation says nothing about  which room or user the space belongs to - the per-user figures come from the People API.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-used-space/
    # @param [Hash] opts the optional parameters
    # @return [Array<(DoubleWrapper, Integer, Hash)>] DoubleWrapper data, response status code and response headers
    def get_portal_used_space_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::QuotaApi.get_portal_used_space ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/usedspace'

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
      return_type = opts[:debug_return_type] || 'DoubleWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::QuotaApi.get_portal_used_space",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::QuotaApi#get_portal_used_space\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the recommended quota
    # Recommends the cheapest quota this portal could run on and still fit: the lowest-priced quota that is not  billed yearly, whose user allowance is above the number of active accounts and whose storage allowance is  above the space already used. The caller needs the portal-settings right and gets 403 without it. The call is  read-only, idempotent and buys nothing - it only picks one quota out of those the portal may switch to,  comparing them with the figures that `GET api/2.0/portal/userscount` and `GET api/2.0/portal/usedspace`  report. The answer is a single quota in the same shape as `GET api/2.0/portal/quota`, with sizes in bytes;  when no quota is large enough the answer is an empty body with 200 and not an error, so handle the empty  result as nothing to recommend. Yearly quotas are left out by design, so the recommendation is always a  monthly one - the full list to choose from comes from `GET api/2.0/portal/payment/quotas`, and the purchase  itself is started with `PUT api/2.0/portal/payment/url`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-right-quota/
    # @param [Hash] opts the optional parameters
    # @return [TenantQuotaWrapper]
    def get_right_quota(opts = {})
      data, _status_code, _headers = get_right_quota_with_http_info(opts)
      data
    end

    # Get the recommended quota
    # Recommends the cheapest quota this portal could run on and still fit: the lowest-priced quota that is not  billed yearly, whose user allowance is above the number of active accounts and whose storage allowance is  above the space already used. The caller needs the portal-settings right and gets 403 without it. The call is  read-only, idempotent and buys nothing - it only picks one quota out of those the portal may switch to,  comparing them with the figures that `GET api/2.0/portal/userscount` and `GET api/2.0/portal/usedspace`  report. The answer is a single quota in the same shape as `GET api/2.0/portal/quota`, with sizes in bytes;  when no quota is large enough the answer is an empty body with 200 and not an error, so handle the empty  result as nothing to recommend. Yearly quotas are left out by design, so the recommendation is always a  monthly one - the full list to choose from comes from `GET api/2.0/portal/payment/quotas`, and the purchase  itself is started with `PUT api/2.0/portal/payment/url`.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-right-quota/
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantQuotaWrapper, Integer, Hash)>] TenantQuotaWrapper data, response status code and response headers
    def get_right_quota_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::QuotaApi.get_right_quota ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/quota/right'

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
      return_type = opts[:debug_return_type] || 'TenantQuotaWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::QuotaApi.get_right_quota",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::QuotaApi#get_right_quota\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get upcoming payments
    # Lists what this portal will be charged next for the quotas of its current tariff - one entry per quota that is  going to be billed, with the amount, the currency and the due date. The caller needs the portal-settings right  and gets 403 without it; the call is read-only and idempotent and keeps answering while the portal's payment  has lapsed. Only quotas that are really charged appear: an overdue quota is skipped, and so is a quota that  has no price of its own, such as a trial or a free plan - which is why the list can come back empty on a  portal that does have a tariff. When a switch to another quota is scheduled for the next period, the entry  describes that next quota and its quantity, so `id` and `name` may differ from what  `GET api/2.0/portal/tariff` reports for today. `amount` is the unit price multiplied by `quantity`, in the  currency named by `currency` as an ISO 4217 code, `dueDate` is in the portal time zone, and `wallet` marks a  service paid from the portal wallet instead of the subscription.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-upcoming-payments/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Whether the tariff is re-read from the billing system instead of the portal cache. The remote read is slower,  so ask for it right after a payment and leave it off for ordinary page loads.
    # @return [UpcomingPaymentArrayWrapper]
    def get_upcoming_payments(opts = {})
      data, _status_code, _headers = get_upcoming_payments_with_http_info(opts)
      data
    end

    # Get upcoming payments
    # Lists what this portal will be charged next for the quotas of its current tariff - one entry per quota that is  going to be billed, with the amount, the currency and the due date. The caller needs the portal-settings right  and gets 403 without it; the call is read-only and idempotent and keeps answering while the portal's payment  has lapsed. Only quotas that are really charged appear: an overdue quota is skipped, and so is a quota that  has no price of its own, such as a trial or a free plan - which is why the list can come back empty on a  portal that does have a tariff. When a switch to another quota is scheduled for the next period, the entry  describes that next quota and its quantity, so `id` and `name` may differ from what  `GET api/2.0/portal/tariff` reports for today. `amount` is the unit price multiplied by `quantity`, in the  currency named by `currency` as an ISO 4217 code, `dueDate` is in the portal time zone, and `wallet` marks a  service paid from the portal wallet instead of the subscription.
    # See also: https://api.onlyoffice.com/docspace/api-backend/usage-api/get-upcoming-payments/
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :refresh Whether the tariff is re-read from the billing system instead of the portal cache. The remote read is slower,  so ask for it right after a payment and leave it off for ordinary page loads.
    # @return [Array<(UpcomingPaymentArrayWrapper, Integer, Hash)>] UpcomingPaymentArrayWrapper data, response status code and response headers
    def get_upcoming_payments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Portal::QuotaApi.get_upcoming_payments ...'
      end
      # resource path
      local_var_path = '/api/2.0/portal/tariff/upcoming'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'refresh'] = opts[:'refresh'] if !opts[:'refresh'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'UpcomingPaymentArrayWrapper'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic', 'OAuth2', 'ApiKeyBearer', 'asc_auth_key', 'Bearer', 'OpenId']

      new_options = opts.merge(
        :operation => :"Portal::QuotaApi.get_upcoming_payments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Portal::QuotaApi#get_upcoming_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    end
  end
end
