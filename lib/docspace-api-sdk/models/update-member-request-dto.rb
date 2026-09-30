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
  # The request parameters for updating the user information.
  class UpdateMemberRequestDto < ApiModelBase
    # The account the change applies to. It is read from this body by `POST api/2.0/people/email`, while  `PUT api/2.0/people/{userid}` takes the account from the route and ignores this field.
    attr_accessor :user_id

    # Set it to true to give the account the `Terminated` status and end every session it has, and to false to  bring it back. It is applied only when the caller edits somebody else, and omitting it keeps the current  status.
    attr_accessor :disable

    # The new email address, up to 255 characters. It is read only by `POST api/2.0/people/email`, which either  mails a confirmation letter or, for an administrator acting on somebody else, applies the address at once;  `PUT api/2.0/people/{userid}` ignores it.
    attr_accessor :email

    # Set it to true to turn the account into a guest and to false to turn it back into a member. Either direction  takes a seat and can answer 402, it is applied only when the caller edits somebody else, and a request to  make the portal owner, a DocSpace administrator or a module administrator a guest is ignored.
    attr_accessor :is_user

    # The new first name, up to 255 characters. It is applied only to the caller's own profile, is left alone on an  LDAP or SSO account, and a pair the portal does not accept as a name answers 400.
    attr_accessor :first_name

    # The new last name, up to 255 characters. It is applied only to the caller's own profile, is left alone on an  LDAP or SSO account, and a pair the portal does not accept as a name answers 400.
    attr_accessor :last_name

    # The groups the profile should belong to, by group ID, replacing the current ones. It is applied only to the  caller's own profile.
    attr_accessor :department

    # The new free-text location shown on the profile. It is applied only to the caller's own profile and is left  alone on an LDAP or SSO account.
    attr_accessor :location

    # The new free-text note kept with the profile. It is applied only to the caller's own profile.
    attr_accessor :comment

    # The additional ways to reach the person, replacing the current ones. Each entry is a free-text type such as  `email`, `phone`, `skype` or `telegram` and its value, an entry with an empty value is dropped, and the field  is applied only to the caller's own profile.
    attr_accessor :contacts

    # The address the portal downloads the new avatar from. It is applied only to the caller's own profile, has to  use HTTPS unless the request itself came over HTTP, and passing the address the profile already uses  downloads nothing.
    attr_accessor :files

    # Whether the account agrees to receive tips, updates and offers. It is applied only to the caller's own  profile, and omitting it on such a request stores false rather than keeping the current value.
    attr_accessor :spam

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'user_id' => :'userId',
        :'disable' => :'disable',
        :'email' => :'email',
        :'is_user' => :'isUser',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'department' => :'department',
        :'location' => :'location',
        :'comment' => :'comment',
        :'contacts' => :'contacts',
        :'files' => :'files',
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
        :'user_id' => :'String',
        :'disable' => :'Boolean',
        :'email' => :'String',
        :'is_user' => :'Boolean',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'department' => :'Array<String>',
        :'location' => :'String',
        :'comment' => :'String',
        :'contacts' => :'Array<Contact>',
        :'files' => :'String',
        :'spam' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'user_id',
        :'disable',
        :'email',
        :'is_user',
        :'first_name',
        :'last_name',
        :'department',
        :'location',
        :'comment',
        :'contacts',
        :'files',
        :'spam'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::UpdateMemberRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::UpdateMemberRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'disable')
        self.disable = attributes[:'disable']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
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
          user_id == o.user_id &&
          disable == o.disable &&
          email == o.email &&
          is_user == o.is_user &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          department == o.department &&
          location == o.location &&
          comment == o.comment &&
          contacts == o.contacts &&
          files == o.files &&
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
      [user_id, disable, email, is_user, first_name, last_name, department, location, comment, contacts, files, spam].hash
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
