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
  # The general configuration of the current portal, as the client shell needs it before and after sign-in.
  class SettingsDto < ApiModelBase
    # The portal time zone as an IANA identifier, which is the zone every date this API returns in portal time  is expressed in. Filled in for a signed-in caller only.
    attr_accessor :timezone

    # The mail domains a new member may register or be invited from without confirming the address. It is filled  in for a signed-in caller, and for an anonymous one only while `enabledJoin` is `true`; it is empty  whenever `trustedDomainsType` is not `Custom`.
    attr_accessor :trusted_domains

    # How the mail domains above are applied: no domain trusted, every domain trusted, or only the listed ones.  Filled in under the same conditions as `trustedDomains`.
    attr_accessor :trusted_domains_type

    # The default language of the portal as a culture name, which is what unauthenticated pages are rendered in.  A signed-in member may have a language of their own, and that one is not reported here.
    attr_accessor :culture

    # The portal's offset from UTC as a time span, positive east of UTC. Filled in for a signed-in caller only,  and taken at the moment of the call, so it already reflects daylight saving time.
    attr_accessor :utc_offset

    # The same offset in hours, fractional for a zone that is not on a whole hour. It is there so a client does  not have to parse `utcOffset`.
    attr_accessor :utc_hours_offset

    # The portal title shown on the login page and in letters. It falls back to the product name in the portal  language while the portal has been given no title of its own.
    attr_accessor :greeting_settings

    # The portal owner, the one account that cannot be removed or demoted. Filled in for a signed-in caller  only, and the empty GUID for an anonymous one.
    attr_accessor :owner_id

    # The naming scheme the portal uses for its own vocabulary - what a member, a group or a room is called in  the interface. `GET api/2.0/settings/customschemas/{id}` spells that vocabulary out. Filled in for a  signed-in caller only.
    attr_accessor :name_schema_id

    # Whether someone who is not invited may still register, which is the case when the portal trusts every mail  domain or a list of them. It is computed for an anonymous caller only and left out entirely for a  signed-in one, so a missing value is not a `false`.
    attr_accessor :enabled_join

    # Whether the login page may offer the form for writing to the portal administrators. It is also `true`  while the portal's payment has lapsed, whatever the setting says, so it can be set on a portal where an  administrator switched the form off.
    attr_accessor :enable_adm_mess

    # Whether the login page may offer sign-in through an external identity provider. It is computed for an  anonymous caller only; `GET api/2.0/capabilities` reports the same thing with the list of providers.
    attr_accessor :thirdparty_enable

    # Always `true` in this product. It exists so a client that also talks to older ONLYOFFICE portals can tell  them apart, and is not a feature switch.
    attr_accessor :doc_space

    # Whether this is a server installation someone administers themselves rather than a portal in the cloud.  Several fields below and a number of operations behave differently in the two, so a client that has to  branch on the deployment reads it here.
    attr_accessor :standalone

    # Whether the installation runs from an Amazon machine image, which is a server installation that can read  its own instance metadata. It is `false` on every cloud portal.
    attr_accessor :is_ami

    # The domain new portals of this installation are created under, which is what a portal name is checked  against and appended to. It is empty on an installation that serves a single portal on a fixed address.
    attr_accessor :base_domain

    # The token that authorizes the first-run setup wizard. It is handed out to anonymous callers only, and only  while the wizard has not been completed; once it has, the field stays empty for good.
    attr_accessor :wizard_token

    # The parameters for hashing a password in the client before it is sent - the salt, the iteration count and  the hash size. It is filled in for an anonymous caller and, for a signed-in one, only when  `withPassword=true` is asked for. Hash with exactly these parameters and send the result as  `passwordHash`, since the portal cannot reproduce the hash from a different set.
    attr_accessor :password_hash

    # The Firebase project a mobile or web client sends push registrations to. Filled in for a signed-in caller  only, and its own fields are empty strings on an installation that configures no Firebase project.
    attr_accessor :firebase

    # The product version of the portal, empty when the installation does not publish one. It is the version of  the server, not of this API, whose own version is fixed at 2.0.
    attr_accessor :version

    # Which CAPTCHA the login form has to render, decided by the installation's configuration. Computed for an  anonymous caller only.
    attr_accessor :recaptcha_type

    # The site key for the CAPTCHA named by `recaptchaType`, safe to embed in a page. It is empty when the  installation configures no CAPTCHA, in which case the login form asks for none.
    attr_accessor :recaptcha_public_key

    # Whether the client may collect and send diagnostic information. Filled in for a signed-in caller only, and  `false` unless the installation switched it on.
    attr_accessor :debug_info

    # The address of the socket service that pushes live updates to a client. It is filled in for a signed-in  caller and for an anonymous one who arrives with an external sharing link, and is empty when the  installation runs no socket service - a client then has to poll.
    attr_accessor :socket_url

    # The lifecycle state of the portal. Anything other than active means most operations are refused for the  moment, because the portal is being transferred, restored, encrypted or removed.
    attr_accessor :tenant_status

    # The portal's own name within the installation, which together with `baseDomain` forms the address it is  reached at. `PUT api/2.0/portal/portalrename` changes it.
    attr_accessor :tenant_alias

    # Whether the interface may show the About page. A cloud portal always may; a server installation may unless  its plan includes branding and the vendor details hide the page.
    attr_accessor :display_about

    # The rules a portal name is checked against - its length limits and the pattern it has to match - so a  client can validate a rename before sending it. Filled in for a signed-in caller only.
    attr_accessor :domain_validator

    # The key that lets the client open the vendor's support chat, empty when the installation configures none.  Filled in for a signed-in caller only.
    attr_accessor :zendesk_key

    # The Google Tag Manager container the client should load, empty when the installation configures none.  Filled in for a signed-in caller only.
    attr_accessor :tag_manager_id

    # Whether the portal limits how long an authentication session stays valid. The limit itself is read with  `GET api/2.0/settings/cookiesettings`; while this is `false` a session is honoured for a year.
    attr_accessor :cookie_settings_enabled

    # Whether the space-management section is restricted to the portal owner. Filled in for a signed-in caller  only.
    attr_accessor :limited_access_space

    # Whether the Developer Tools section is hidden from members who are not administrators. Filled in for a  signed-in caller only.
    attr_accessor :limited_access_dev_tools_for_users

    # Whether the interface may show the vendor's promotional banners. A cloud portal always reports `true`; on  a server installation it follows the banner setting. Filled in for a signed-in caller only.
    attr_accessor :display_banners

    # Whether the AI features - chat, agents and vectorisation - may be used on this portal. While it is  `false` the AI Agents folder is hidden and the AI operations are refused. Filled in for a signed-in caller  only.
    attr_accessor :ai_enabled

    # Whether the portal wallet has already dropped below its low-balance threshold, so a client can warn about  AI operations being cut off. It is reported to DocSpace administrators only and left empty for everyone  else, which is not the same as a healthy balance.
    attr_accessor :wallet_low_balance

    # The pattern a member's first and last name has to match, so a client can validate a name before sending  it. It is a .NET regular expression and is applied to each name part separately.
    attr_accessor :user_name_regex

    # How many invitations the portal may still send in the current window. Filled in for a signed-in caller  only, and set to the maximum value of a 32-bit integer on an installation that limits nothing.
    attr_accessor :invitation_limit

    # What the installation allows to be done with web plugins. Filled in for a signed-in caller only, with all  three flags `false` unless the installation switched plugins on.
    attr_accessor :plugins

    # What a mobile client needs to hand a document link over to the installed application instead of opening it  in the browser. Its fields are empty strings when the installation configures no application.
    attr_accessor :deep_link

    # Where the ready-made form templates are served from and which extension they carry. Filled in for a  signed-in caller only.
    attr_accessor :form_gallery

    # The largest image the portal accepts as a logo or an avatar, in bytes. Filled in for a signed-in caller  only, and a larger upload is refused rather than resized.
    attr_accessor :max_image_upload_size

    # The wordmark to print next to the portal logo. It falls back to the built-in one while the portal has  stored no text of its own, so it is never empty.
    attr_accessor :logo_text

    # The addresses of the vendor's help, support, forum and video resources, already picked for the portal  language. An entry is missing when the installation configures no address for it or the resource is  switched off, which `GET api/2.0/settings/rebranding/additional` reports flag by flag.
    attr_accessor :external_resources

    # The section the client should open after sign-in, which is the caller's own preference rather than a  portal-wide one. Filled in for a signed-in caller only.
    attr_accessor :default_folder_type

    # Whether the installation has an external database wired up for form results, without which the operations  that write form results there are refused. Filled in for a signed-in caller only.
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
        :'wallet_low_balance' => :'walletLowBalance',
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
        :'wallet_low_balance' => :'Boolean',
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
        :'wallet_low_balance',
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

      if attributes.key?(:'wallet_low_balance')
        self.wallet_low_balance = attributes[:'wallet_low_balance']
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
          wallet_low_balance == o.wallet_low_balance &&
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
      [timezone, trusted_domains, trusted_domains_type, culture, utc_offset, utc_hours_offset, greeting_settings, owner_id, name_schema_id, enabled_join, enable_adm_mess, thirdparty_enable, doc_space, standalone, is_ami, base_domain, wizard_token, password_hash, firebase, version, recaptcha_type, recaptcha_public_key, debug_info, socket_url, tenant_status, tenant_alias, display_about, domain_validator, zendesk_key, tag_manager_id, cookie_settings_enabled, limited_access_space, limited_access_dev_tools_for_users, display_banners, ai_enabled, wallet_low_balance, user_name_regex, invitation_limit, plugins, deep_link, form_gallery, max_image_upload_size, logo_text, external_resources, default_folder_type, external_db_enabled].hash
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
