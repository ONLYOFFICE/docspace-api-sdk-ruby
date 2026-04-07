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
  # The settings information.
  class SettingsDto < ApiModelBase
    # The time zone.
    attr_accessor :timezone

    # The list of the trusted domains.
    attr_accessor :trusted_domains

    attr_accessor :trusted_domains_type

    # The language.
    attr_accessor :culture

    # The UTC offset in the TimeSpan format.
    attr_accessor :utc_offset

    # The UTC offset in hours.
    attr_accessor :utc_hours_offset

    # The greeting settings.
    attr_accessor :greeting_settings

    # The owner ID.
    attr_accessor :owner_id

    # The team template ID.
    attr_accessor :name_schema_id

    # Specifies if a user can join the portal or not.
    attr_accessor :enabled_join

    # Specifies if a user can send a message to the administrator when accessing the DocSpace portal or not.
    attr_accessor :enable_adm_mess

    # Specifies if a user can connect third-party providers to the portal or not.
    attr_accessor :thirdparty_enable

    # Specifies if this portal is a DocSpace portal or not.
    attr_accessor :doc_space

    # Indicates whether the system is running in standalone mode.
    attr_accessor :standalone

    # Specifies if this portal is the AMI instance or not.
    attr_accessor :is_ami

    # The base domain.
    attr_accessor :base_domain

    # The wizard token.
    attr_accessor :wizard_token

    attr_accessor :password_hash

    attr_accessor :firebase

    # The portal version.
    attr_accessor :version

    attr_accessor :recaptcha_type

    # The ReCAPTCHA public key.
    attr_accessor :recaptcha_public_key

    # Specifies if the debug information will be sent or not.
    attr_accessor :debug_info

    # The socket URL.
    attr_accessor :socket_url

    attr_accessor :tenant_status

    # The tenant alias.
    attr_accessor :tenant_alias

    # Specifies whether to display the About portal section.
    attr_accessor :display_about

    attr_accessor :domain_validator

    # The Zendesk key.
    attr_accessor :zendesk_key

    # The tag manager ID.
    attr_accessor :tag_manager_id

    # Specifies whether the cookie settings are enabled.
    attr_accessor :cookie_settings_enabled

    # Specifies whether the access to the space management is limited or not.
    attr_accessor :limited_access_space

    # Specifies whether the access to the Developer Tools is limited for users or not.
    attr_accessor :limited_access_dev_tools_for_users

    # Specifies whether to display the promotional banners.
    attr_accessor :display_banners

    # Specifies whether AI functionality (chat, agents, vectorization) is enabled for the current tenant.  When `false`, all AI features are disabled and the AI Agents folder is hidden.
    attr_accessor :ai_enabled

    # The user name validation regex.
    attr_accessor :user_name_regex

    # The maximum number of invitations to the portal.
    attr_accessor :invitation_limit

    attr_accessor :plugins

    attr_accessor :deep_link

    attr_accessor :form_gallery

    # The maximum image upload size.
    attr_accessor :max_image_upload_size

    # The white label logo text.
    attr_accessor :logo_text

    attr_accessor :external_resources

    attr_accessor :default_folder_type

    # Specifies if an external database is connected for storing form results.
    attr_accessor :external_db_enabled

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'timezone' => :'timezone',
        :'trusted_domains' => :'trustedDomains',
        :'trusted_domains_type' => :'trustedDomainsType',
        :'culture' => :'culture',
        :'utc_offset' => :'utcOffset',
        :'utc_hours_offset' => :'utcHoursOffset',
        :'greeting_settings' => :'greetingSettings',
        :'owner_id' => :'ownerId',
        :'name_schema_id' => :'nameSchemaId',
        :'enabled_join' => :'enabledJoin',
        :'enable_adm_mess' => :'enableAdmMess',
        :'thirdparty_enable' => :'thirdpartyEnable',
        :'doc_space' => :'docSpace',
        :'standalone' => :'standalone',
        :'is_ami' => :'isAmi',
        :'base_domain' => :'baseDomain',
        :'wizard_token' => :'wizardToken',
        :'password_hash' => :'passwordHash',
        :'firebase' => :'firebase',
        :'version' => :'version',
        :'recaptcha_type' => :'recaptchaType',
        :'recaptcha_public_key' => :'recaptchaPublicKey',
        :'debug_info' => :'debugInfo',
        :'socket_url' => :'socketUrl',
        :'tenant_status' => :'tenantStatus',
        :'tenant_alias' => :'tenantAlias',
        :'display_about' => :'displayAbout',
        :'domain_validator' => :'domainValidator',
        :'zendesk_key' => :'zendeskKey',
        :'tag_manager_id' => :'tagManagerId',
        :'cookie_settings_enabled' => :'cookieSettingsEnabled',
        :'limited_access_space' => :'limitedAccessSpace',
        :'limited_access_dev_tools_for_users' => :'limitedAccessDevToolsForUsers',
        :'display_banners' => :'displayBanners',
        :'ai_enabled' => :'aiEnabled',
        :'user_name_regex' => :'userNameRegex',
        :'invitation_limit' => :'invitationLimit',
        :'plugins' => :'plugins',
        :'deep_link' => :'deepLink',
        :'form_gallery' => :'formGallery',
        :'max_image_upload_size' => :'maxImageUploadSize',
        :'logo_text' => :'logoText',
        :'external_resources' => :'externalResources',
        :'default_folder_type' => :'defaultFolderType',
        :'external_db_enabled' => :'externalDbEnabled'
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
        :'timezone' => :'String',
        :'trusted_domains' => :'Array<String>',
        :'trusted_domains_type' => :'TenantTrustedDomainsType',
        :'culture' => :'String',
        :'utc_offset' => :'String',
        :'utc_hours_offset' => :'Float',
        :'greeting_settings' => :'String',
        :'owner_id' => :'String',
        :'name_schema_id' => :'String',
        :'enabled_join' => :'Boolean',
        :'enable_adm_mess' => :'Boolean',
        :'thirdparty_enable' => :'Boolean',
        :'doc_space' => :'Boolean',
        :'standalone' => :'Boolean',
        :'is_ami' => :'Boolean',
        :'base_domain' => :'String',
        :'wizard_token' => :'String',
        :'password_hash' => :'PasswordHasher',
        :'firebase' => :'FirebaseDto',
        :'version' => :'String',
        :'recaptcha_type' => :'RecaptchaType',
        :'recaptcha_public_key' => :'String',
        :'debug_info' => :'Boolean',
        :'socket_url' => :'String',
        :'tenant_status' => :'TenantStatus',
        :'tenant_alias' => :'String',
        :'display_about' => :'Boolean',
        :'domain_validator' => :'TenantDomainValidator',
        :'zendesk_key' => :'String',
        :'tag_manager_id' => :'String',
        :'cookie_settings_enabled' => :'Boolean',
        :'limited_access_space' => :'Boolean',
        :'limited_access_dev_tools_for_users' => :'Boolean',
        :'display_banners' => :'Boolean',
        :'ai_enabled' => :'Boolean',
        :'user_name_regex' => :'String',
        :'invitation_limit' => :'Integer',
        :'plugins' => :'PluginsDto',
        :'deep_link' => :'DeepLinkDto',
        :'form_gallery' => :'FormGalleryDto',
        :'max_image_upload_size' => :'Integer',
        :'logo_text' => :'String',
        :'external_resources' => :'CultureSpecificExternalResources',
        :'default_folder_type' => :'FolderType',
        :'external_db_enabled' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'timezone',
        :'trusted_domains',
        :'culture',
        :'greeting_settings',
        :'name_schema_id',
        :'enabled_join',
        :'enable_adm_mess',
        :'thirdparty_enable',
        :'base_domain',
        :'wizard_token',
        :'version',
        :'recaptcha_public_key',
        :'socket_url',
        :'tenant_alias',
        :'zendesk_key',
        :'tag_manager_id',
        :'user_name_regex',
        :'invitation_limit',
        :'logo_text',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::SettingsDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::SettingsDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'trusted_domains')
        if (value = attributes[:'trusted_domains']).is_a?(Array)
          self.trusted_domains = value
        end
      end

      if attributes.key?(:'trusted_domains_type')
        self.trusted_domains_type = attributes[:'trusted_domains_type']
      end

      if attributes.key?(:'culture')
        self.culture = attributes[:'culture']
      else
        self.culture = nil
      end

      if attributes.key?(:'utc_offset')
        self.utc_offset = attributes[:'utc_offset']
      end

      if attributes.key?(:'utc_hours_offset')
        self.utc_hours_offset = attributes[:'utc_hours_offset']
      end

      if attributes.key?(:'greeting_settings')
        self.greeting_settings = attributes[:'greeting_settings']
      end

      if attributes.key?(:'owner_id')
        self.owner_id = attributes[:'owner_id']
      end

      if attributes.key?(:'name_schema_id')
        self.name_schema_id = attributes[:'name_schema_id']
      end

      if attributes.key?(:'enabled_join')
        self.enabled_join = attributes[:'enabled_join']
      end

      if attributes.key?(:'enable_adm_mess')
        self.enable_adm_mess = attributes[:'enable_adm_mess']
      end

      if attributes.key?(:'thirdparty_enable')
        self.thirdparty_enable = attributes[:'thirdparty_enable']
      end

      if attributes.key?(:'doc_space')
        self.doc_space = attributes[:'doc_space']
      end

      if attributes.key?(:'standalone')
        self.standalone = attributes[:'standalone']
      end

      if attributes.key?(:'is_ami')
        self.is_ami = attributes[:'is_ami']
      end

      if attributes.key?(:'base_domain')
        self.base_domain = attributes[:'base_domain']
      else
        self.base_domain = nil
      end

      if attributes.key?(:'wizard_token')
        self.wizard_token = attributes[:'wizard_token']
      end

      if attributes.key?(:'password_hash')
        self.password_hash = attributes[:'password_hash']
      end

      if attributes.key?(:'firebase')
        self.firebase = attributes[:'firebase']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'recaptcha_type')
        self.recaptcha_type = attributes[:'recaptcha_type']
      end

      if attributes.key?(:'recaptcha_public_key')
        self.recaptcha_public_key = attributes[:'recaptcha_public_key']
      end

      if attributes.key?(:'debug_info')
        self.debug_info = attributes[:'debug_info']
      end

      if attributes.key?(:'socket_url')
        self.socket_url = attributes[:'socket_url']
      end

      if attributes.key?(:'tenant_status')
        self.tenant_status = attributes[:'tenant_status']
      end

      if attributes.key?(:'tenant_alias')
        self.tenant_alias = attributes[:'tenant_alias']
      end

      if attributes.key?(:'display_about')
        self.display_about = attributes[:'display_about']
      end

      if attributes.key?(:'domain_validator')
        self.domain_validator = attributes[:'domain_validator']
      end

      if attributes.key?(:'zendesk_key')
        self.zendesk_key = attributes[:'zendesk_key']
      end

      if attributes.key?(:'tag_manager_id')
        self.tag_manager_id = attributes[:'tag_manager_id']
      end

      if attributes.key?(:'cookie_settings_enabled')
        self.cookie_settings_enabled = attributes[:'cookie_settings_enabled']
      else
        self.cookie_settings_enabled = nil
      end

      if attributes.key?(:'limited_access_space')
        self.limited_access_space = attributes[:'limited_access_space']
      end

      if attributes.key?(:'limited_access_dev_tools_for_users')
        self.limited_access_dev_tools_for_users = attributes[:'limited_access_dev_tools_for_users']
      end

      if attributes.key?(:'display_banners')
        self.display_banners = attributes[:'display_banners']
      end

      if attributes.key?(:'ai_enabled')
        self.ai_enabled = attributes[:'ai_enabled']
      end

      if attributes.key?(:'user_name_regex')
        self.user_name_regex = attributes[:'user_name_regex']
      end

      if attributes.key?(:'invitation_limit')
        self.invitation_limit = attributes[:'invitation_limit']
      end

      if attributes.key?(:'plugins')
        self.plugins = attributes[:'plugins']
      end

      if attributes.key?(:'deep_link')
        self.deep_link = attributes[:'deep_link']
      else
        self.deep_link = nil
      end

      if attributes.key?(:'form_gallery')
        self.form_gallery = attributes[:'form_gallery']
      end

      if attributes.key?(:'max_image_upload_size')
        self.max_image_upload_size = attributes[:'max_image_upload_size']
      end

      if attributes.key?(:'logo_text')
        self.logo_text = attributes[:'logo_text']
      end

      if attributes.key?(:'external_resources')
        self.external_resources = attributes[:'external_resources']
      end

      if attributes.key?(:'default_folder_type')
        self.default_folder_type = attributes[:'default_folder_type']
      end

      if attributes.key?(:'external_db_enabled')
        self.external_db_enabled = attributes[:'external_db_enabled']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @cookie_settings_enabled.nil?
        invalid_properties.push('invalid value for "cookie_settings_enabled", cookie_settings_enabled cannot be nil.')
      end

      if @deep_link.nil?
        invalid_properties.push('invalid value for "deep_link", deep_link cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @cookie_settings_enabled.nil?
      return false if @deep_link.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] cookie_settings_enabled Value to be assigned
    def cookie_settings_enabled=(cookie_settings_enabled)
      if cookie_settings_enabled.nil?
        fail ArgumentError, 'cookie_settings_enabled cannot be nil'
      end

      @cookie_settings_enabled = cookie_settings_enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] deep_link Value to be assigned
    def deep_link=(deep_link)
      if deep_link.nil?
        fail ArgumentError, 'deep_link cannot be nil'
      end

      @deep_link = deep_link
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          timezone == o.timezone &&
          trusted_domains == o.trusted_domains &&
          trusted_domains_type == o.trusted_domains_type &&
          culture == o.culture &&
          utc_offset == o.utc_offset &&
          utc_hours_offset == o.utc_hours_offset &&
          greeting_settings == o.greeting_settings &&
          owner_id == o.owner_id &&
          name_schema_id == o.name_schema_id &&
          enabled_join == o.enabled_join &&
          enable_adm_mess == o.enable_adm_mess &&
          thirdparty_enable == o.thirdparty_enable &&
          doc_space == o.doc_space &&
          standalone == o.standalone &&
          is_ami == o.is_ami &&
          base_domain == o.base_domain &&
          wizard_token == o.wizard_token &&
          password_hash == o.password_hash &&
          firebase == o.firebase &&
          version == o.version &&
          recaptcha_type == o.recaptcha_type &&
          recaptcha_public_key == o.recaptcha_public_key &&
          debug_info == o.debug_info &&
          socket_url == o.socket_url &&
          tenant_status == o.tenant_status &&
          tenant_alias == o.tenant_alias &&
          display_about == o.display_about &&
          domain_validator == o.domain_validator &&
          zendesk_key == o.zendesk_key &&
          tag_manager_id == o.tag_manager_id &&
          cookie_settings_enabled == o.cookie_settings_enabled &&
          limited_access_space == o.limited_access_space &&
          limited_access_dev_tools_for_users == o.limited_access_dev_tools_for_users &&
          display_banners == o.display_banners &&
          ai_enabled == o.ai_enabled &&
          user_name_regex == o.user_name_regex &&
          invitation_limit == o.invitation_limit &&
          plugins == o.plugins &&
          deep_link == o.deep_link &&
          form_gallery == o.form_gallery &&
          max_image_upload_size == o.max_image_upload_size &&
          logo_text == o.logo_text &&
          external_resources == o.external_resources &&
          default_folder_type == o.default_folder_type &&
          external_db_enabled == o.external_db_enabled
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [timezone, trusted_domains, trusted_domains_type, culture, utc_offset, utc_hours_offset, greeting_settings, owner_id, name_schema_id, enabled_join, enable_adm_mess, thirdparty_enable, doc_space, standalone, is_ami, base_domain, wizard_token, password_hash, firebase, version, recaptcha_type, recaptcha_public_key, debug_info, socket_url, tenant_status, tenant_alias, display_about, domain_validator, zendesk_key, tag_manager_id, cookie_settings_enabled, limited_access_space, limited_access_dev_tools_for_users, display_banners, ai_enabled, user_name_regex, invitation_limit, plugins, deep_link, form_gallery, max_image_upload_size, logo_text, external_resources, default_folder_type, external_db_enabled].hash
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
