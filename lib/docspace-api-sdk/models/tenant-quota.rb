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


require 'date'
require 'time'

module DocspaceApiSdk
  # The current tenant quota.
  class TenantQuota < ApiModelBase
    # The tenant ID.
    attr_accessor :tenant_id

    # The tenant name.
    attr_accessor :name

    # The tenant price.
    attr_accessor :price

    # The tenant price currency symbol.
    attr_accessor :price_currency_symbol

    # The tenant price three-character ISO 4217 currency symbol.
    attr_accessor :price_iso_currency_symbol

    # The tenant product ID.
    attr_accessor :product_id

    # The service name.
    attr_accessor :service_name

    # The service group.
    attr_accessor :service_group

    # Specifies if the tenant quota is visible or not.
    attr_accessor :visible

    # Specifies if the tenant quota applies to the wallet or not
    attr_accessor :wallet

    # Specifies if the tenant quota is primary or additional.
    attr_accessor :additional

    # The quota due date.
    attr_accessor :due_date

    # The tenant quota features.
    attr_accessor :features

    # The tenant maximum file size.
    attr_accessor :max_file_size

    # The tenant maximum total size.
    attr_accessor :max_total_size

    # The number of portal users.
    attr_accessor :count_user

    # The number of portal room administrators.
    attr_accessor :count_room_admin

    # The number of room users.
    attr_accessor :users_in_room

    # The number of rooms.
    attr_accessor :count_room

    # Specifies if the tenant quota is nonprofit or not.
    attr_accessor :non_profit

    # Specifies if the tenant quota is trial or not.
    attr_accessor :trial

    # Specifies if the tenant quota is free or not.
    attr_accessor :free

    # Specifies if the tenant quota is updated or not.
    attr_accessor :update

    # Specifies if the audit trail is available or not.
    attr_accessor :audit

    # Specifies if ONLYOFFICE Docs is included in the tenant quota or not.
    attr_accessor :docs_edition

    # Specifies if the LDAP settings are available or not.
    attr_accessor :ldap

    # Specifies if the SSO settings are available or not.
    attr_accessor :sso

    # Specifies if the statistics settings are available or not.
    attr_accessor :statistic

    # Specifies if the branding settings are available or not.
    attr_accessor :branding

    # Specifies if the customization settings are available or not.
    attr_accessor :customization

    # Specifies if the license has the lifetime settings or not.
    attr_accessor :lifetime

    # Specifies if the Automation API is available or not.
    attr_accessor :automation_api

    # Specifies if the custom domain URL is available or not.
    attr_accessor :custom

    # Specifies if the restore is enabled or not.
    attr_accessor :restore

    # Specifies if Oauth is available or not.
    attr_accessor :oauth

    # Specifies if the content search is available or not.
    attr_accessor :content_search

    # Specifies if the third-party accounts linking is available or not.
    attr_accessor :third_party

    # Specifies if the tenant quota is yearly subscription or not.
    attr_accessor :year

    # The number of free backups within a month.
    attr_accessor :count_free_backup

    # Specifies if the backup enabled as a wallet service or not.
    attr_accessor :backup

    # The number of AI agents.
    attr_accessor :count_ai_agent

    # Specifies if the AI tools enabled as a wallet service or not.
    attr_accessor :ai_tools

    # Specifies if the AI search enabled as a wallet service or not.
    attr_accessor :ai_search

    # The number of DocsCloud users.
    attr_accessor :docs_cloud

    # Specifies if the DocsCloudDevPack enabled or not.
    attr_accessor :docs_cloud_dev_pack

    # Specifies if the DocsCloudTrial enabled or not.
    attr_accessor :docs_cloud_trial

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tenant_id' => :'tenantId',
        :'name' => :'name',
        :'price' => :'price',
        :'price_currency_symbol' => :'priceCurrencySymbol',
        :'price_iso_currency_symbol' => :'priceISOCurrencySymbol',
        :'product_id' => :'productId',
        :'service_name' => :'serviceName',
        :'service_group' => :'serviceGroup',
        :'visible' => :'visible',
        :'wallet' => :'wallet',
        :'additional' => :'additional',
        :'due_date' => :'dueDate',
        :'features' => :'features',
        :'max_file_size' => :'maxFileSize',
        :'max_total_size' => :'maxTotalSize',
        :'count_user' => :'countUser',
        :'count_room_admin' => :'countRoomAdmin',
        :'users_in_room' => :'usersInRoom',
        :'count_room' => :'countRoom',
        :'non_profit' => :'nonProfit',
        :'trial' => :'trial',
        :'free' => :'free',
        :'update' => :'update',
        :'audit' => :'audit',
        :'docs_edition' => :'docsEdition',
        :'ldap' => :'ldap',
        :'sso' => :'sso',
        :'statistic' => :'statistic',
        :'branding' => :'branding',
        :'customization' => :'customization',
        :'lifetime' => :'lifetime',
        :'automation_api' => :'automationApi',
        :'custom' => :'custom',
        :'restore' => :'restore',
        :'oauth' => :'oauth',
        :'content_search' => :'contentSearch',
        :'third_party' => :'thirdParty',
        :'year' => :'year',
        :'count_free_backup' => :'countFreeBackup',
        :'backup' => :'backup',
        :'count_ai_agent' => :'countAIAgent',
        :'ai_tools' => :'aiTools',
        :'ai_search' => :'aiSearch',
        :'docs_cloud' => :'docsCloud',
        :'docs_cloud_dev_pack' => :'docsCloudDevPack',
        :'docs_cloud_trial' => :'docsCloudTrial'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'tenant_id' => :'Integer',
        :'name' => :'String',
        :'price' => :'Float',
        :'price_currency_symbol' => :'String',
        :'price_iso_currency_symbol' => :'String',
        :'product_id' => :'String',
        :'service_name' => :'String',
        :'service_group' => :'String',
        :'visible' => :'Boolean',
        :'wallet' => :'Boolean',
        :'additional' => :'Boolean',
        :'due_date' => :'Time',
        :'features' => :'String',
        :'max_file_size' => :'Integer',
        :'max_total_size' => :'Integer',
        :'count_user' => :'Integer',
        :'count_room_admin' => :'Integer',
        :'users_in_room' => :'Integer',
        :'count_room' => :'Integer',
        :'non_profit' => :'Boolean',
        :'trial' => :'Boolean',
        :'free' => :'Boolean',
        :'update' => :'Boolean',
        :'audit' => :'Boolean',
        :'docs_edition' => :'Boolean',
        :'ldap' => :'Boolean',
        :'sso' => :'Boolean',
        :'statistic' => :'Boolean',
        :'branding' => :'Boolean',
        :'customization' => :'Boolean',
        :'lifetime' => :'Boolean',
        :'automation_api' => :'Boolean',
        :'custom' => :'Boolean',
        :'restore' => :'Boolean',
        :'oauth' => :'Boolean',
        :'content_search' => :'Boolean',
        :'third_party' => :'Boolean',
        :'year' => :'Boolean',
        :'count_free_backup' => :'Integer',
        :'backup' => :'Boolean',
        :'count_ai_agent' => :'Integer',
        :'ai_tools' => :'Boolean',
        :'ai_search' => :'Boolean',
        :'docs_cloud' => :'Integer',
        :'docs_cloud_dev_pack' => :'Boolean',
        :'docs_cloud_trial' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'price_currency_symbol',
        :'price_iso_currency_symbol',
        :'product_id',
        :'service_name',
        :'service_group',
        :'due_date',
        :'features',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::TenantQuota` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::TenantQuota`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'price_currency_symbol')
        self.price_currency_symbol = attributes[:'price_currency_symbol']
      end

      if attributes.key?(:'price_iso_currency_symbol')
        self.price_iso_currency_symbol = attributes[:'price_iso_currency_symbol']
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'service_name')
        self.service_name = attributes[:'service_name']
      end

      if attributes.key?(:'service_group')
        self.service_group = attributes[:'service_group']
      end

      if attributes.key?(:'visible')
        self.visible = attributes[:'visible']
      end

      if attributes.key?(:'wallet')
        self.wallet = attributes[:'wallet']
      end

      if attributes.key?(:'additional')
        self.additional = attributes[:'additional']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'features')
        self.features = attributes[:'features']
      end

      if attributes.key?(:'max_file_size')
        self.max_file_size = attributes[:'max_file_size']
      end

      if attributes.key?(:'max_total_size')
        self.max_total_size = attributes[:'max_total_size']
      end

      if attributes.key?(:'count_user')
        self.count_user = attributes[:'count_user']
      end

      if attributes.key?(:'count_room_admin')
        self.count_room_admin = attributes[:'count_room_admin']
      end

      if attributes.key?(:'users_in_room')
        self.users_in_room = attributes[:'users_in_room']
      end

      if attributes.key?(:'count_room')
        self.count_room = attributes[:'count_room']
      end

      if attributes.key?(:'non_profit')
        self.non_profit = attributes[:'non_profit']
      end

      if attributes.key?(:'trial')
        self.trial = attributes[:'trial']
      end

      if attributes.key?(:'free')
        self.free = attributes[:'free']
      end

      if attributes.key?(:'update')
        self.update = attributes[:'update']
      end

      if attributes.key?(:'audit')
        self.audit = attributes[:'audit']
      end

      if attributes.key?(:'docs_edition')
        self.docs_edition = attributes[:'docs_edition']
      end

      if attributes.key?(:'ldap')
        self.ldap = attributes[:'ldap']
      end

      if attributes.key?(:'sso')
        self.sso = attributes[:'sso']
      end

      if attributes.key?(:'statistic')
        self.statistic = attributes[:'statistic']
      end

      if attributes.key?(:'branding')
        self.branding = attributes[:'branding']
      end

      if attributes.key?(:'customization')
        self.customization = attributes[:'customization']
      end

      if attributes.key?(:'lifetime')
        self.lifetime = attributes[:'lifetime']
      end

      if attributes.key?(:'automation_api')
        self.automation_api = attributes[:'automation_api']
      end

      if attributes.key?(:'custom')
        self.custom = attributes[:'custom']
      end

      if attributes.key?(:'restore')
        self.restore = attributes[:'restore']
      end

      if attributes.key?(:'oauth')
        self.oauth = attributes[:'oauth']
      end

      if attributes.key?(:'content_search')
        self.content_search = attributes[:'content_search']
      end

      if attributes.key?(:'third_party')
        self.third_party = attributes[:'third_party']
      end

      if attributes.key?(:'year')
        self.year = attributes[:'year']
      end

      if attributes.key?(:'count_free_backup')
        self.count_free_backup = attributes[:'count_free_backup']
      end

      if attributes.key?(:'backup')
        self.backup = attributes[:'backup']
      end

      if attributes.key?(:'count_ai_agent')
        self.count_ai_agent = attributes[:'count_ai_agent']
      end

      if attributes.key?(:'ai_tools')
        self.ai_tools = attributes[:'ai_tools']
      end

      if attributes.key?(:'ai_search')
        self.ai_search = attributes[:'ai_search']
      end

      if attributes.key?(:'docs_cloud')
        self.docs_cloud = attributes[:'docs_cloud']
      end

      if attributes.key?(:'docs_cloud_dev_pack')
        self.docs_cloud_dev_pack = attributes[:'docs_cloud_dev_pack']
      end

      if attributes.key?(:'docs_cloud_trial')
        self.docs_cloud_trial = attributes[:'docs_cloud_trial']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tenant_id == o.tenant_id &&
          name == o.name &&
          price == o.price &&
          price_currency_symbol == o.price_currency_symbol &&
          price_iso_currency_symbol == o.price_iso_currency_symbol &&
          product_id == o.product_id &&
          service_name == o.service_name &&
          service_group == o.service_group &&
          visible == o.visible &&
          wallet == o.wallet &&
          additional == o.additional &&
          due_date == o.due_date &&
          features == o.features &&
          max_file_size == o.max_file_size &&
          max_total_size == o.max_total_size &&
          count_user == o.count_user &&
          count_room_admin == o.count_room_admin &&
          users_in_room == o.users_in_room &&
          count_room == o.count_room &&
          non_profit == o.non_profit &&
          trial == o.trial &&
          free == o.free &&
          update == o.update &&
          audit == o.audit &&
          docs_edition == o.docs_edition &&
          ldap == o.ldap &&
          sso == o.sso &&
          statistic == o.statistic &&
          branding == o.branding &&
          customization == o.customization &&
          lifetime == o.lifetime &&
          automation_api == o.automation_api &&
          custom == o.custom &&
          restore == o.restore &&
          oauth == o.oauth &&
          content_search == o.content_search &&
          third_party == o.third_party &&
          year == o.year &&
          count_free_backup == o.count_free_backup &&
          backup == o.backup &&
          count_ai_agent == o.count_ai_agent &&
          ai_tools == o.ai_tools &&
          ai_search == o.ai_search &&
          docs_cloud == o.docs_cloud &&
          docs_cloud_dev_pack == o.docs_cloud_dev_pack &&
          docs_cloud_trial == o.docs_cloud_trial
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tenant_id, name, price, price_currency_symbol, price_iso_currency_symbol, product_id, service_name, service_group, visible, wallet, additional, due_date, features, max_file_size, max_total_size, count_user, count_room_admin, users_in_room, count_room, non_profit, trial, free, update, audit, docs_edition, ldap, sso, statistic, branding, customization, lifetime, automation_api, custom, restore, oauth, content_search, third_party, year, count_free_backup, backup, count_ai_agent, ai_tools, ai_search, docs_cloud, docs_cloud_dev_pack, docs_cloud_trial].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

  end

end
