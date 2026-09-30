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
  # One two-factor authentication method the portal offers, with the portal-wide state of that method.
  class TfaSettingsDto < ApiModelBase
    # Which method this entry describes: `sms` for a code sent by text message, `app` for a code from an  authenticator application. It is the value `PUT api/2.0/settings/tfaapp` takes as its `type`, and no other  value ever appears here.
    attr_accessor :id

    # The label for the method in the portal language, meant for a button or a radio option. It is not stable  enough to branch on - match `id` for that.
    attr_accessor :title

    # Whether this method is the portal's current policy. At most one entry can have it set, and none has it  while the portal challenges nobody. It says nothing about the caller's own account, which may be exempt  through `trustedIps` or forced through `mandatoryUsers`.
    attr_accessor :enabled

    # Whether the method could be switched on at all. For `sms` it is `false` until the installation has a  working SMS provider, so a method can be offered here and still be impossible to enable; for `app` it is  always `true`.
    attr_accessor :available

    # The addresses that skip the challenge, each either a single address, a `from-to` pair or a CIDR range. It  is empty when no address is exempt, which means every account is challenged.
    attr_accessor :trusted_ips

    # The accounts that are challenged even from a trusted address, by user ID. Empty means the exemption in  `trustedIps` holds for everyone.
    attr_accessor :mandatory_users

    # The groups whose members are challenged even from a trusted address, by group ID, with the same reading of  an empty list as `mandatoryUsers`.
    attr_accessor :mandatory_groups

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'title' => :'title',
        :'enabled' => :'enabled',
        :'available' => :'available',
        :'trusted_ips' => :'trustedIps',
        :'mandatory_users' => :'mandatoryUsers',
        :'mandatory_groups' => :'mandatoryGroups'
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
        :'title' => :'String',
        :'enabled' => :'Boolean',
        :'available' => :'Boolean',
        :'trusted_ips' => :'Array<String>',
        :'mandatory_users' => :'Array<String>',
        :'mandatory_groups' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'title',
        :'trusted_ips',
        :'mandatory_users',
        :'mandatory_groups'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::TfaSettingsDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::TfaSettingsDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      else
        self.title = nil
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      else
        self.enabled = nil
      end

      if attributes.key?(:'available')
        self.available = attributes[:'available']
      else
        self.available = nil
      end

      if attributes.key?(:'trusted_ips')
        if (value = attributes[:'trusted_ips']).is_a?(Array)
          self.trusted_ips = value
        end
      end

      if attributes.key?(:'mandatory_users')
        if (value = attributes[:'mandatory_users']).is_a?(Array)
          self.mandatory_users = value
        end
      end

      if attributes.key?(:'mandatory_groups')
        if (value = attributes[:'mandatory_groups']).is_a?(Array)
          self.mandatory_groups = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @enabled.nil?
        invalid_properties.push('invalid value for "enabled", enabled cannot be nil.')
      end

      if @available.nil?
        invalid_properties.push('invalid value for "available", available cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @enabled.nil?
      return false if @available.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] enabled Value to be assigned
    def enabled=(enabled)
      if enabled.nil?
        fail ArgumentError, 'enabled cannot be nil'
      end

      @enabled = enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] available Value to be assigned
    def available=(available)
      if available.nil?
        fail ArgumentError, 'available cannot be nil'
      end

      @available = available
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          title == o.title &&
          enabled == o.enabled &&
          available == o.available &&
          trusted_ips == o.trusted_ips &&
          mandatory_users == o.mandatory_users &&
          mandatory_groups == o.mandatory_groups
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, enabled, available, trusted_ips, mandatory_users, mandatory_groups].hash
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
