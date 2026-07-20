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
  # The full list of user parameters.
  class EmployeeFullDto < ApiModelBase
    # The user ID.
    attr_accessor :id

    # The HTML-encoded user's display name formatted according to the default format for the current culture.
    attr_accessor :display_name

    # The user avatar.
    attr_accessor :avatar

    # The user original size avatar.
    attr_accessor :avatar_original

    # The user maximum size avatar.
    attr_accessor :avatar_max

    # The user medium size avatar.
    attr_accessor :avatar_medium

    # The user small size avatar.
    attr_accessor :avatar_small

    # The user profile URL.
    attr_accessor :profile_url

    # Specifies if the user has an avatar or not.
    attr_accessor :has_avatar

    # Specifies if the user is anonymous or not.
    attr_accessor :is_anonim

    # The user first name.
    attr_accessor :first_name

    # The user last name.
    attr_accessor :last_name

    # The user username.
    attr_accessor :user_name

    # The user email.
    attr_accessor :email

    # The list of user contacts.
    attr_accessor :contacts

    attr_accessor :status

    attr_accessor :activation_status

    attr_accessor :terminated

    # The user department.
    attr_accessor :department

    # The list of user groups.
    attr_accessor :groups

    # The user location.
    attr_accessor :location

    # The user notes.
    attr_accessor :notes

    # Specifies if the user is an administrator or not.
    attr_accessor :is_admin

    # Specifies if the user is a room administrator or not.
    attr_accessor :is_room_admin

    # Specifies if the LDAP settings are enabled for the user or not.
    attr_accessor :is_ldap

    # The list of the administrator modules.
    attr_accessor :list_admin_modules

    # Specifies if the user is a portal owner or not.
    attr_accessor :is_owner

    # Specifies if the user is a portal visitor or not.
    attr_accessor :is_visitor

    # Specifies if the user is a portal collaborator or not.
    attr_accessor :is_collaborator

    # The user culture code.
    attr_accessor :culture_name

    # The user mobile phone number.
    attr_accessor :mobile_phone

    attr_accessor :mobile_phone_activation_status

    # Specifies if the SSO settings are enabled for the user or not.
    attr_accessor :is_sso

    attr_accessor :theme

    # The user quota limit.
    attr_accessor :quota_limit

    # The portal used space of the user.
    attr_accessor :used_space

    # Specifies if the user has access rights.
    attr_accessor :shared

    # Specifies if the user has a custom quota or not.
    attr_accessor :is_custom_quota

    # The current login event ID.
    attr_accessor :login_event_id

    # The auth cookie lifetime in seconds.
    attr_accessor :auth_cookie_lifetime

    attr_accessor :created_by

    attr_accessor :registration_date

    # Specifies if the user has a personal folder or not.
    attr_accessor :has_personal_folder

    # Indicates whether the user has enabled two-factor authentication (TFA) using an authentication app.
    attr_accessor :tfa_app_enabled

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
        :'id' => :'id',
        :'display_name' => :'displayName',
        :'avatar' => :'avatar',
        :'avatar_original' => :'avatarOriginal',
        :'avatar_max' => :'avatarMax',
        :'avatar_medium' => :'avatarMedium',
        :'avatar_small' => :'avatarSmall',
        :'profile_url' => :'profileUrl',
        :'has_avatar' => :'hasAvatar',
        :'is_anonim' => :'isAnonim',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'user_name' => :'userName',
        :'email' => :'email',
        :'contacts' => :'contacts',
        :'status' => :'status',
        :'activation_status' => :'activationStatus',
        :'terminated' => :'terminated',
        :'department' => :'department',
        :'groups' => :'groups',
        :'location' => :'location',
        :'notes' => :'notes',
        :'is_admin' => :'isAdmin',
        :'is_room_admin' => :'isRoomAdmin',
        :'is_ldap' => :'isLDAP',
        :'list_admin_modules' => :'listAdminModules',
        :'is_owner' => :'isOwner',
        :'is_visitor' => :'isVisitor',
        :'is_collaborator' => :'isCollaborator',
        :'culture_name' => :'cultureName',
        :'mobile_phone' => :'mobilePhone',
        :'mobile_phone_activation_status' => :'mobilePhoneActivationStatus',
        :'is_sso' => :'isSSO',
        :'theme' => :'theme',
        :'quota_limit' => :'quotaLimit',
        :'used_space' => :'usedSpace',
        :'shared' => :'shared',
        :'is_custom_quota' => :'isCustomQuota',
        :'login_event_id' => :'loginEventId',
        :'auth_cookie_lifetime' => :'authCookieLifetime',
        :'created_by' => :'createdBy',
        :'registration_date' => :'registrationDate',
        :'has_personal_folder' => :'hasPersonalFolder',
        :'tfa_app_enabled' => :'tfaAppEnabled'
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
        :'id' => :'String',
        :'display_name' => :'String',
        :'avatar' => :'String',
        :'avatar_original' => :'String',
        :'avatar_max' => :'String',
        :'avatar_medium' => :'String',
        :'avatar_small' => :'String',
        :'profile_url' => :'String',
        :'has_avatar' => :'Boolean',
        :'is_anonim' => :'Boolean',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'user_name' => :'String',
        :'email' => :'String',
        :'contacts' => :'Array<Contact>',
        :'status' => :'EmployeeStatus',
        :'activation_status' => :'EmployeeActivationStatus',
        :'terminated' => :'ApiDateTime',
        :'department' => :'String',
        :'groups' => :'Array<GroupSummaryDto>',
        :'location' => :'String',
        :'notes' => :'String',
        :'is_admin' => :'Boolean',
        :'is_room_admin' => :'Boolean',
        :'is_ldap' => :'Boolean',
        :'list_admin_modules' => :'Array<String>',
        :'is_owner' => :'Boolean',
        :'is_visitor' => :'Boolean',
        :'is_collaborator' => :'Boolean',
        :'culture_name' => :'String',
        :'mobile_phone' => :'String',
        :'mobile_phone_activation_status' => :'MobilePhoneActivationStatus',
        :'is_sso' => :'Boolean',
        :'theme' => :'DarkThemeSettingsType',
        :'quota_limit' => :'Integer',
        :'used_space' => :'Float',
        :'shared' => :'Boolean',
        :'is_custom_quota' => :'Boolean',
        :'login_event_id' => :'Integer',
        :'auth_cookie_lifetime' => :'Float',
        :'created_by' => :'EmployeeDto',
        :'registration_date' => :'ApiDateTime',
        :'has_personal_folder' => :'Boolean',
        :'tfa_app_enabled' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'display_name',
        :'avatar',
        :'avatar_original',
        :'avatar_max',
        :'avatar_medium',
        :'avatar_small',
        :'profile_url',
        :'first_name',
        :'last_name',
        :'user_name',
        :'email',
        :'contacts',
        :'department',
        :'groups',
        :'location',
        :'notes',
        :'list_admin_modules',
        :'culture_name',
        :'mobile_phone',
        :'quota_limit',
        :'used_space',
        :'shared',
        :'is_custom_quota',
        :'login_event_id',
        :'auth_cookie_lifetime',
        :'has_personal_folder',
        :'tfa_app_enabled'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'EmployeeDto'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::EmployeeFullDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::EmployeeFullDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'avatar')
        self.avatar = attributes[:'avatar']
      end

      if attributes.key?(:'avatar_original')
        self.avatar_original = attributes[:'avatar_original']
      end

      if attributes.key?(:'avatar_max')
        self.avatar_max = attributes[:'avatar_max']
      end

      if attributes.key?(:'avatar_medium')
        self.avatar_medium = attributes[:'avatar_medium']
      end

      if attributes.key?(:'avatar_small')
        self.avatar_small = attributes[:'avatar_small']
      end

      if attributes.key?(:'profile_url')
        self.profile_url = attributes[:'profile_url']
      end

      if attributes.key?(:'has_avatar')
        self.has_avatar = attributes[:'has_avatar']
      end

      if attributes.key?(:'is_anonim')
        self.is_anonim = attributes[:'is_anonim']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'user_name')
        self.user_name = attributes[:'user_name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'contacts')
        if (value = attributes[:'contacts']).is_a?(Array)
          self.contacts = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'activation_status')
        self.activation_status = attributes[:'activation_status']
      end

      if attributes.key?(:'terminated')
        self.terminated = attributes[:'terminated']
      end

      if attributes.key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.key?(:'groups')
        if (value = attributes[:'groups']).is_a?(Array)
          self.groups = value
        end
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.key?(:'is_admin')
        self.is_admin = attributes[:'is_admin']
      end

      if attributes.key?(:'is_room_admin')
        self.is_room_admin = attributes[:'is_room_admin']
      end

      if attributes.key?(:'is_ldap')
        self.is_ldap = attributes[:'is_ldap']
      end

      if attributes.key?(:'list_admin_modules')
        if (value = attributes[:'list_admin_modules']).is_a?(Array)
          self.list_admin_modules = value
        end
      end

      if attributes.key?(:'is_owner')
        self.is_owner = attributes[:'is_owner']
      end

      if attributes.key?(:'is_visitor')
        self.is_visitor = attributes[:'is_visitor']
      end

      if attributes.key?(:'is_collaborator')
        self.is_collaborator = attributes[:'is_collaborator']
      end

      if attributes.key?(:'culture_name')
        self.culture_name = attributes[:'culture_name']
      end

      if attributes.key?(:'mobile_phone')
        self.mobile_phone = attributes[:'mobile_phone']
      end

      if attributes.key?(:'mobile_phone_activation_status')
        self.mobile_phone_activation_status = attributes[:'mobile_phone_activation_status']
      end

      if attributes.key?(:'is_sso')
        self.is_sso = attributes[:'is_sso']
      end

      if attributes.key?(:'theme')
        self.theme = attributes[:'theme']
      end

      if attributes.key?(:'quota_limit')
        self.quota_limit = attributes[:'quota_limit']
      end

      if attributes.key?(:'used_space')
        self.used_space = attributes[:'used_space']
      end

      if attributes.key?(:'shared')
        self.shared = attributes[:'shared']
      end

      if attributes.key?(:'is_custom_quota')
        self.is_custom_quota = attributes[:'is_custom_quota']
      end

      if attributes.key?(:'login_event_id')
        self.login_event_id = attributes[:'login_event_id']
      end

      if attributes.key?(:'auth_cookie_lifetime')
        self.auth_cookie_lifetime = attributes[:'auth_cookie_lifetime']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'registration_date')
        self.registration_date = attributes[:'registration_date']
      end

      if attributes.key?(:'has_personal_folder')
        self.has_personal_folder = attributes[:'has_personal_folder']
      end

      if attributes.key?(:'tfa_app_enabled')
        self.tfa_app_enabled = attributes[:'tfa_app_enabled']
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
          id == o.id &&
          display_name == o.display_name &&
          avatar == o.avatar &&
          avatar_original == o.avatar_original &&
          avatar_max == o.avatar_max &&
          avatar_medium == o.avatar_medium &&
          avatar_small == o.avatar_small &&
          profile_url == o.profile_url &&
          has_avatar == o.has_avatar &&
          is_anonim == o.is_anonim &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          user_name == o.user_name &&
          email == o.email &&
          contacts == o.contacts &&
          status == o.status &&
          activation_status == o.activation_status &&
          terminated == o.terminated &&
          department == o.department &&
          groups == o.groups &&
          location == o.location &&
          notes == o.notes &&
          is_admin == o.is_admin &&
          is_room_admin == o.is_room_admin &&
          is_ldap == o.is_ldap &&
          list_admin_modules == o.list_admin_modules &&
          is_owner == o.is_owner &&
          is_visitor == o.is_visitor &&
          is_collaborator == o.is_collaborator &&
          culture_name == o.culture_name &&
          mobile_phone == o.mobile_phone &&
          mobile_phone_activation_status == o.mobile_phone_activation_status &&
          is_sso == o.is_sso &&
          theme == o.theme &&
          quota_limit == o.quota_limit &&
          used_space == o.used_space &&
          shared == o.shared &&
          is_custom_quota == o.is_custom_quota &&
          login_event_id == o.login_event_id &&
          auth_cookie_lifetime == o.auth_cookie_lifetime &&
          created_by == o.created_by &&
          registration_date == o.registration_date &&
          has_personal_folder == o.has_personal_folder &&
          tfa_app_enabled == o.tfa_app_enabled
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, display_name, avatar, avatar_original, avatar_max, avatar_medium, avatar_small, profile_url, has_avatar, is_anonim, first_name, last_name, user_name, email, contacts, status, activation_status, terminated, department, groups, location, notes, is_admin, is_room_admin, is_ldap, list_admin_modules, is_owner, is_visitor, is_collaborator, culture_name, mobile_phone, mobile_phone_activation_status, is_sso, theme, quota_limit, used_space, shared, is_custom_quota, login_event_id, auth_cookie_lifetime, created_by, registration_date, has_personal_folder, tfa_app_enabled].hash
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
