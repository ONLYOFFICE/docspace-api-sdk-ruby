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
  # The SMTP settings parameters.
  class SmtpSettingsDto < ApiModelBase
    # The SMTP host.
    attr_accessor :host

    # The SMTP port.
    attr_accessor :port

    # The sender address.
    attr_accessor :sender_address

    # The sender display name.
    attr_accessor :sender_display_name

    # The credentials username.
    attr_accessor :credentials_user_name

    # The credentials user password.
    attr_accessor :credentials_user_password

    # Specifies whether the SSL is enabled or not.
    attr_accessor :enable_ssl

    # Specifies whether the authentication is enabled or not.
    attr_accessor :enable_auth

    # Specifies whether to use NTLM or not.
    attr_accessor :use_ntlm

    # Specifies if the current settings are default or not.
    attr_accessor :is_default_settings

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'host' => :'host',
        :'port' => :'port',
        :'sender_address' => :'senderAddress',
        :'sender_display_name' => :'senderDisplayName',
        :'credentials_user_name' => :'credentialsUserName',
        :'credentials_user_password' => :'credentialsUserPassword',
        :'enable_ssl' => :'enableSSL',
        :'enable_auth' => :'enableAuth',
        :'use_ntlm' => :'useNtlm',
        :'is_default_settings' => :'isDefaultSettings'
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
        :'host' => :'String',
        :'port' => :'Integer',
        :'sender_address' => :'String',
        :'sender_display_name' => :'String',
        :'credentials_user_name' => :'String',
        :'credentials_user_password' => :'String',
        :'enable_ssl' => :'Boolean',
        :'enable_auth' => :'Boolean',
        :'use_ntlm' => :'Boolean',
        :'is_default_settings' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'host',
        :'port',
        :'sender_address',
        :'sender_display_name',
        :'credentials_user_name',
        :'credentials_user_password',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::SmtpSettingsDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::SmtpSettingsDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.key?(:'sender_address')
        self.sender_address = attributes[:'sender_address']
      end

      if attributes.key?(:'sender_display_name')
        self.sender_display_name = attributes[:'sender_display_name']
      end

      if attributes.key?(:'credentials_user_name')
        self.credentials_user_name = attributes[:'credentials_user_name']
      end

      if attributes.key?(:'credentials_user_password')
        self.credentials_user_password = attributes[:'credentials_user_password']
      end

      if attributes.key?(:'enable_ssl')
        self.enable_ssl = attributes[:'enable_ssl']
      end

      if attributes.key?(:'enable_auth')
        self.enable_auth = attributes[:'enable_auth']
      end

      if attributes.key?(:'use_ntlm')
        self.use_ntlm = attributes[:'use_ntlm']
      end

      if attributes.key?(:'is_default_settings')
        self.is_default_settings = attributes[:'is_default_settings']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@host.nil? && @host.to_s.length > 255
        invalid_properties.push('invalid value for "host", the character length must be smaller than or equal to 255.')
      end

      if !@host.nil? && @host.to_s.length < 0
        invalid_properties.push('invalid value for "host", the character length must be greater than or equal to 0.')
      end

      if !@port.nil? && @port > 65535
        invalid_properties.push('invalid value for "port", must be smaller than or equal to 65535.')
      end

      if !@port.nil? && @port < 1
        invalid_properties.push('invalid value for "port", must be greater than or equal to 1.')
      end

      if !@sender_address.nil? && @sender_address.to_s.length > 255
        invalid_properties.push('invalid value for "sender_address", the character length must be smaller than or equal to 255.')
      end

      if !@sender_address.nil? && @sender_address.to_s.length < 0
        invalid_properties.push('invalid value for "sender_address", the character length must be greater than or equal to 0.')
      end

      if !@sender_display_name.nil? && @sender_display_name.to_s.length > 255
        invalid_properties.push('invalid value for "sender_display_name", the character length must be smaller than or equal to 255.')
      end

      if !@sender_display_name.nil? && @sender_display_name.to_s.length < 0
        invalid_properties.push('invalid value for "sender_display_name", the character length must be greater than or equal to 0.')
      end

      if !@credentials_user_name.nil? && @credentials_user_name.to_s.length > 255
        invalid_properties.push('invalid value for "credentials_user_name", the character length must be smaller than or equal to 255.')
      end

      if !@credentials_user_name.nil? && @credentials_user_name.to_s.length < 0
        invalid_properties.push('invalid value for "credentials_user_name", the character length must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@host.nil? && @host.to_s.length > 255
      return false if !@host.nil? && @host.to_s.length < 0
      return false if !@port.nil? && @port > 65535
      return false if !@port.nil? && @port < 1
      return false if !@sender_address.nil? && @sender_address.to_s.length > 255
      return false if !@sender_address.nil? && @sender_address.to_s.length < 0
      return false if !@sender_display_name.nil? && @sender_display_name.to_s.length > 255
      return false if !@sender_display_name.nil? && @sender_display_name.to_s.length < 0
      return false if !@credentials_user_name.nil? && @credentials_user_name.to_s.length > 255
      return false if !@credentials_user_name.nil? && @credentials_user_name.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] host Value to be assigned
    def host=(host)
      if !host.nil? && host.to_s.length > 255
        fail ArgumentError, 'invalid value for "host", the character length must be smaller than or equal to 255.'
      end

      if !host.nil? && host.to_s.length < 0
        fail ArgumentError, 'invalid value for "host", the character length must be greater than or equal to 0.'
      end

      @host = host
    end

    # Custom attribute writer method with validation
    # @param [Object] port Value to be assigned
    def port=(port)
      if !port.nil? && port > 65535
        fail ArgumentError, 'invalid value for "port", must be smaller than or equal to 65535.'
      end

      if !port.nil? && port < 1
        fail ArgumentError, 'invalid value for "port", must be greater than or equal to 1.'
      end

      @port = port
    end

    # Custom attribute writer method with validation
    # @param [Object] sender_address Value to be assigned
    def sender_address=(sender_address)
      if !sender_address.nil? && sender_address.to_s.length > 255
        fail ArgumentError, 'invalid value for "sender_address", the character length must be smaller than or equal to 255.'
      end

      if !sender_address.nil? && sender_address.to_s.length < 0
        fail ArgumentError, 'invalid value for "sender_address", the character length must be greater than or equal to 0.'
      end

      @sender_address = sender_address
    end

    # Custom attribute writer method with validation
    # @param [Object] sender_display_name Value to be assigned
    def sender_display_name=(sender_display_name)
      if !sender_display_name.nil? && sender_display_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "sender_display_name", the character length must be smaller than or equal to 255.'
      end

      if !sender_display_name.nil? && sender_display_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "sender_display_name", the character length must be greater than or equal to 0.'
      end

      @sender_display_name = sender_display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] credentials_user_name Value to be assigned
    def credentials_user_name=(credentials_user_name)
      if !credentials_user_name.nil? && credentials_user_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "credentials_user_name", the character length must be smaller than or equal to 255.'
      end

      if !credentials_user_name.nil? && credentials_user_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "credentials_user_name", the character length must be greater than or equal to 0.'
      end

      @credentials_user_name = credentials_user_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          host == o.host &&
          port == o.port &&
          sender_address == o.sender_address &&
          sender_display_name == o.sender_display_name &&
          credentials_user_name == o.credentials_user_name &&
          credentials_user_password == o.credentials_user_password &&
          enable_ssl == o.enable_ssl &&
          enable_auth == o.enable_auth &&
          use_ntlm == o.use_ntlm &&
          is_default_settings == o.is_default_settings
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [host, port, sender_address, sender_display_name, credentials_user_name, credentials_user_password, enable_ssl, enable_auth, use_ntlm, is_default_settings].hash
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
