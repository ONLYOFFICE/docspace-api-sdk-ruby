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
  # The parameters required for the user two-factor authentication requests.
  class AuthWithCodeRequestsDto < ApiModelBase
    # The username or email used for authentication.
    attr_accessor :user_name

    # The password in plain text for user authentication.
    attr_accessor :password

    # The hashed password for secure verification.
    attr_accessor :password_hash

    # The type of authentication provider (e.g., internal, Google, Azure).
    attr_accessor :provider

    # The access token used for authentication with external providers.
    attr_accessor :access_token

    # The serialized user profile data, if applicable.
    attr_accessor :serialized_profile

    # The authorization code used for obtaining OAuth tokens.
    attr_accessor :code_o_auth

    # Specifies whether the authentication is session-based.
    attr_accessor :session

    # The additional confirmation data required for authentication.
    attr_accessor :confirm_data

    # The type of CAPTCHA validation used.
    attr_accessor :recaptcha_type

    # The user's response to the CAPTCHA challenge.
    attr_accessor :recaptcha_response

    # The culture code for localization during authentication.
    attr_accessor :culture

    # The code for two-factor authentication.
    attr_accessor :code

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
        :'user_name' => :'userName',
        :'password' => :'password',
        :'password_hash' => :'passwordHash',
        :'provider' => :'provider',
        :'access_token' => :'accessToken',
        :'serialized_profile' => :'serializedProfile',
        :'code_o_auth' => :'codeOAuth',
        :'session' => :'session',
        :'confirm_data' => :'confirmData',
        :'recaptcha_type' => :'recaptchaType',
        :'recaptcha_response' => :'recaptchaResponse',
        :'culture' => :'culture',
        :'code' => :'code'
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
        :'user_name' => :'String',
        :'password' => :'String',
        :'password_hash' => :'String',
        :'provider' => :'String',
        :'access_token' => :'String',
        :'serialized_profile' => :'String',
        :'code_o_auth' => :'String',
        :'session' => :'Boolean',
        :'confirm_data' => :'ConfirmData',
        :'recaptcha_type' => :'RecaptchaType',
        :'recaptcha_response' => :'String',
        :'culture' => :'String',
        :'code' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'code'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'AuthRequestsDto'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AuthWithCodeRequestsDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AuthWithCodeRequestsDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'user_name')
        self.user_name = attributes[:'user_name']
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'password_hash')
        self.password_hash = attributes[:'password_hash']
      end

      if attributes.key?(:'provider')
        self.provider = attributes[:'provider']
      end

      if attributes.key?(:'access_token')
        self.access_token = attributes[:'access_token']
      end

      if attributes.key?(:'serialized_profile')
        self.serialized_profile = attributes[:'serialized_profile']
      end

      if attributes.key?(:'code_o_auth')
        self.code_o_auth = attributes[:'code_o_auth']
      end

      if attributes.key?(:'session')
        self.session = attributes[:'session']
      end

      if attributes.key?(:'confirm_data')
        self.confirm_data = attributes[:'confirm_data']
      end

      if attributes.key?(:'recaptcha_type')
        self.recaptcha_type = attributes[:'recaptcha_type']
      end

      if attributes.key?(:'recaptcha_response')
        self.recaptcha_response = attributes[:'recaptcha_response']
      end

      if attributes.key?(:'culture')
        self.culture = attributes[:'culture']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
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
          user_name == o.user_name &&
          password == o.password &&
          password_hash == o.password_hash &&
          provider == o.provider &&
          access_token == o.access_token &&
          serialized_profile == o.serialized_profile &&
          code_o_auth == o.code_o_auth &&
          session == o.session &&
          confirm_data == o.confirm_data &&
          recaptcha_type == o.recaptcha_type &&
          recaptcha_response == o.recaptcha_response &&
          culture == o.culture &&
          code == o.code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [user_name, password, password_hash, provider, access_token, serialized_profile, code_o_auth, session, confirm_data, recaptcha_type, recaptcha_response, culture, code].hash
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
