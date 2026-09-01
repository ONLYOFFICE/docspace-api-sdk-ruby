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
  # The user information.
  class UserInfo < ApiModelBase
    # The user ID.
    attr_accessor :id

    # The user's first name.
    attr_accessor :first_name

    # The user's last name.
    attr_accessor :last_name

    # The user username.
    attr_accessor :user_name

    # The user birthday.
    attr_accessor :birth_date

    # The user sex (male or female).
    attr_accessor :sex

    # The user status.
    attr_accessor :status

    # The user activation status.
    attr_accessor :activation_status

    # The date and time when the user account was terminated.
    attr_accessor :terminated_date

    # The user title.
    attr_accessor :title

    # The user registration date.
    attr_accessor :work_from_date

    # The user email address.
    attr_accessor :email

    # The list of user contacts in the string format.
    attr_accessor :contacts

    # The list of user contacts.
    attr_accessor :contacts_list

    # The user location.
    attr_accessor :location

    # The user notes.
    attr_accessor :notes

    # Specifies if the user account was removed or not.
    attr_accessor :removed

    # The date and time when the user account was last modified.
    attr_accessor :last_modified

    # The tenant ID.
    attr_accessor :tenant_id

    # Specifies if the user is active or not.
    attr_accessor :is_active

    # The user culture code.
    attr_accessor :culture_name

    # The user mobile phone.
    attr_accessor :mobile_phone

    # The user mobile phone activation status.
    attr_accessor :mobile_phone_activation_status

    # The LDAP user identifier.
    attr_accessor :sid

    # The LDAP user quota attribute.
    attr_accessor :ldap_qouta

    # The SSO SAML user identifier.
    attr_accessor :sso_name_id

    # The SSO SAML user session identifier.
    attr_accessor :sso_session_id

    # The date and time when the user account was created.
    attr_accessor :create_date

    # The ID of the user who created the current user account.
    attr_accessor :created_by

    # Specifies if tips, updates and offers are allowed to be sent to the user or not.
    attr_accessor :spam

    # Indicates whether the activation status of the employee or recipient is unchecked or inactive.  Depending on the context, this property evaluates the activation or eligibility status accordingly.
    attr_accessor :check_activation

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
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'user_name' => :'userName',
        :'birth_date' => :'birthDate',
        :'sex' => :'sex',
        :'status' => :'status',
        :'activation_status' => :'activationStatus',
        :'terminated_date' => :'terminatedDate',
        :'title' => :'title',
        :'work_from_date' => :'workFromDate',
        :'email' => :'email',
        :'contacts' => :'contacts',
        :'contacts_list' => :'contactsList',
        :'location' => :'location',
        :'notes' => :'notes',
        :'removed' => :'removed',
        :'last_modified' => :'lastModified',
        :'tenant_id' => :'tenantId',
        :'is_active' => :'isActive',
        :'culture_name' => :'cultureName',
        :'mobile_phone' => :'mobilePhone',
        :'mobile_phone_activation_status' => :'mobilePhoneActivationStatus',
        :'sid' => :'sid',
        :'ldap_qouta' => :'ldapQouta',
        :'sso_name_id' => :'ssoNameId',
        :'sso_session_id' => :'ssoSessionId',
        :'create_date' => :'createDate',
        :'created_by' => :'createdBy',
        :'spam' => :'spam',
        :'check_activation' => :'checkActivation'
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
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'user_name' => :'String',
        :'birth_date' => :'Time',
        :'sex' => :'Boolean',
        :'status' => :'EmployeeStatus',
        :'activation_status' => :'EmployeeActivationStatus',
        :'terminated_date' => :'Time',
        :'title' => :'String',
        :'work_from_date' => :'Time',
        :'email' => :'String',
        :'contacts' => :'String',
        :'contacts_list' => :'Array<String>',
        :'location' => :'String',
        :'notes' => :'String',
        :'removed' => :'Boolean',
        :'last_modified' => :'Time',
        :'tenant_id' => :'Integer',
        :'is_active' => :'Boolean',
        :'culture_name' => :'String',
        :'mobile_phone' => :'String',
        :'mobile_phone_activation_status' => :'MobilePhoneActivationStatus',
        :'sid' => :'String',
        :'ldap_qouta' => :'Integer',
        :'sso_name_id' => :'String',
        :'sso_session_id' => :'String',
        :'create_date' => :'Time',
        :'created_by' => :'String',
        :'spam' => :'Boolean',
        :'check_activation' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'first_name',
        :'last_name',
        :'user_name',
        :'birth_date',
        :'sex',
        :'terminated_date',
        :'title',
        :'work_from_date',
        :'email',
        :'contacts',
        :'contacts_list',
        :'location',
        :'notes',
        :'culture_name',
        :'mobile_phone',
        :'sid',
        :'sso_name_id',
        :'sso_session_id',
        :'created_by',
        :'spam',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::UserInfo` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::UserInfo`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
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

      if attributes.key?(:'birth_date')
        self.birth_date = attributes[:'birth_date']
      end

      if attributes.key?(:'sex')
        self.sex = attributes[:'sex']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'activation_status')
        self.activation_status = attributes[:'activation_status']
      end

      if attributes.key?(:'terminated_date')
        self.terminated_date = attributes[:'terminated_date']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'work_from_date')
        self.work_from_date = attributes[:'work_from_date']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'contacts')
        self.contacts = attributes[:'contacts']
      end

      if attributes.key?(:'contacts_list')
        if (value = attributes[:'contacts_list']).is_a?(Array)
          self.contacts_list = value
        end
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.key?(:'removed')
        self.removed = attributes[:'removed']
      end

      if attributes.key?(:'last_modified')
        self.last_modified = attributes[:'last_modified']
      end

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
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

      if attributes.key?(:'sid')
        self.sid = attributes[:'sid']
      end

      if attributes.key?(:'ldap_qouta')
        self.ldap_qouta = attributes[:'ldap_qouta']
      end

      if attributes.key?(:'sso_name_id')
        self.sso_name_id = attributes[:'sso_name_id']
      end

      if attributes.key?(:'sso_session_id')
        self.sso_session_id = attributes[:'sso_session_id']
      end

      if attributes.key?(:'create_date')
        self.create_date = attributes[:'create_date']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'spam')
        self.spam = attributes[:'spam']
      end

      if attributes.key?(:'check_activation')
        self.check_activation = attributes[:'check_activation']
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
          first_name == o.first_name &&
          last_name == o.last_name &&
          user_name == o.user_name &&
          birth_date == o.birth_date &&
          sex == o.sex &&
          status == o.status &&
          activation_status == o.activation_status &&
          terminated_date == o.terminated_date &&
          title == o.title &&
          work_from_date == o.work_from_date &&
          email == o.email &&
          contacts == o.contacts &&
          contacts_list == o.contacts_list &&
          location == o.location &&
          notes == o.notes &&
          removed == o.removed &&
          last_modified == o.last_modified &&
          tenant_id == o.tenant_id &&
          is_active == o.is_active &&
          culture_name == o.culture_name &&
          mobile_phone == o.mobile_phone &&
          mobile_phone_activation_status == o.mobile_phone_activation_status &&
          sid == o.sid &&
          ldap_qouta == o.ldap_qouta &&
          sso_name_id == o.sso_name_id &&
          sso_session_id == o.sso_session_id &&
          create_date == o.create_date &&
          created_by == o.created_by &&
          spam == o.spam &&
          check_activation == o.check_activation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, first_name, last_name, user_name, birth_date, sex, status, activation_status, terminated_date, title, work_from_date, email, contacts, contacts_list, location, notes, removed, last_modified, tenant_id, is_active, culture_name, mobile_phone, mobile_phone_activation_status, sid, ldap_qouta, sso_name_id, sso_session_id, create_date, created_by, spam, check_activation].hash
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
