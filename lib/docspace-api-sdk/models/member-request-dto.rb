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
  # The user request parameters.
  class MemberRequestDto < ApiModelBase
    # The user password.
    attr_accessor :password

    # The user password hash.
    attr_accessor :password_hash

    # The user email address.
    attr_accessor :email

    # The user type.
    attr_accessor :type

    # Specifies if this is a guest or a user.
    attr_accessor :is_user

    # The user first name.
    attr_accessor :first_name

    # The user last name.
    attr_accessor :last_name

    # The list of the user departments IDs.
    attr_accessor :department

    # The user location.
    attr_accessor :location

    # The user comment.
    attr_accessor :comment

    # The list of the user contacts.
    attr_accessor :contacts

    # The avatar photo URL.
    attr_accessor :files

    # Specifies if the user is added via the invitation link or not.
    attr_accessor :from_invite_link

    # The user key.
    attr_accessor :key

    # The user culture code.
    attr_accessor :culture_name

    # The user target ID.
    attr_accessor :target

    # Specifies if tips, updates and offers are allowed to be sent to the user or not.
    attr_accessor :spam

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
        :'password' => :'password',
        :'password_hash' => :'passwordHash',
        :'email' => :'email',
        :'type' => :'type',
        :'is_user' => :'isUser',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'department' => :'department',
        :'location' => :'location',
        :'comment' => :'comment',
        :'contacts' => :'contacts',
        :'files' => :'files',
        :'from_invite_link' => :'fromInviteLink',
        :'key' => :'key',
        :'culture_name' => :'cultureName',
        :'target' => :'target',
        :'spam' => :'spam'
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
        :'password' => :'String',
        :'password_hash' => :'String',
        :'email' => :'String',
        :'type' => :'EmployeeType',
        :'is_user' => :'Boolean',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'department' => :'Array<String>',
        :'location' => :'String',
        :'comment' => :'String',
        :'contacts' => :'Array<Contact>',
        :'files' => :'String',
        :'from_invite_link' => :'Boolean',
        :'key' => :'String',
        :'culture_name' => :'String',
        :'target' => :'String',
        :'spam' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'password',
        :'password_hash',
        :'email',
        :'is_user',
        :'first_name',
        :'last_name',
        :'department',
        :'location',
        :'comment',
        :'contacts',
        :'files',
        :'key',
        :'culture_name',
        :'spam'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::MemberRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::MemberRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'password_hash')
        self.password_hash = attributes[:'password_hash']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'is_user')
        self.is_user = attributes[:'is_user']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'department')
        if (value = attributes[:'department']).is_a?(Array)
          self.department = value
        end
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'contacts')
        if (value = attributes[:'contacts']).is_a?(Array)
          self.contacts = value
        end
      end

      if attributes.key?(:'files')
        self.files = attributes[:'files']
      end

      if attributes.key?(:'from_invite_link')
        self.from_invite_link = attributes[:'from_invite_link']
      end

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.key?(:'culture_name')
        self.culture_name = attributes[:'culture_name']
      end

      if attributes.key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.key?(:'spam')
        self.spam = attributes[:'spam']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@email.nil? && @email.to_s.length > 255
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 255.')
      end

      if !@email.nil? && @email.to_s.length < 0
        invalid_properties.push('invalid value for "email", the character length must be greater than or equal to 0.')
      end

      if !@first_name.nil? && @first_name.to_s.length > 255
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 255.')
      end

      if !@first_name.nil? && @first_name.to_s.length < 0
        invalid_properties.push('invalid value for "first_name", the character length must be greater than or equal to 0.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 255
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 255.')
      end

      if !@last_name.nil? && @last_name.to_s.length < 0
        invalid_properties.push('invalid value for "last_name", the character length must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@email.nil? && @email.to_s.length > 255
      return false if !@email.nil? && @email.to_s.length < 0
      return false if !@first_name.nil? && @first_name.to_s.length > 255
      return false if !@first_name.nil? && @first_name.to_s.length < 0
      return false if !@last_name.nil? && @last_name.to_s.length > 255
      return false if !@last_name.nil? && @last_name.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length > 255
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 255.'
      end

      if !email.nil? && email.to_s.length < 0
        fail ArgumentError, 'invalid value for "email", the character length must be greater than or equal to 0.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && first_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 255.'
      end

      if !first_name.nil? && first_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "first_name", the character length must be greater than or equal to 0.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && last_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 255.'
      end

      if !last_name.nil? && last_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "last_name", the character length must be greater than or equal to 0.'
      end

      @last_name = last_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          password == o.password &&
          password_hash == o.password_hash &&
          email == o.email &&
          type == o.type &&
          is_user == o.is_user &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          department == o.department &&
          location == o.location &&
          comment == o.comment &&
          contacts == o.contacts &&
          files == o.files &&
          from_invite_link == o.from_invite_link &&
          key == o.key &&
          culture_name == o.culture_name &&
          target == o.target &&
          spam == o.spam
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [password, password_hash, email, type, is_user, first_name, last_name, department, location, comment, contacts, files, from_invite_link, key, culture_name, target, spam].hash
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
