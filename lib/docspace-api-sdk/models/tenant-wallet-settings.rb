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
  # The tenant wallet settings.
  class TenantWalletSettings < ApiModelBase
    # Specifies whether automatic top-up for the tenant wallet is enabled.
    attr_accessor :enabled

    # The minimum wallet balance at which automatic top-up will be triggered. Must be between 5 and 1000.
    attr_accessor :min_balance

    # The maximum wallet balance at which automatic top-up will be triggered. Must be between 6 and 5000.
    attr_accessor :up_to_balance

    # The three-character ISO 4217 currency symbol.
    attr_accessor :currency

    # The wallet balance below which a low-balance notification is sent. Set internally, not user-configurable.
    attr_accessor :low_balance_threshold

    # Specifies whether a low-balance notification has already been sent for the current dip below ASC.Core.Tenants.TenantWalletSettings.LowBalanceThreshold.
    attr_accessor :low_balance_notified

    # The date and time when the tenant wallet settings were last modified.
    attr_accessor :last_modified

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'enabled' => :'enabled',
        :'min_balance' => :'minBalance',
        :'up_to_balance' => :'upToBalance',
        :'currency' => :'currency',
        :'low_balance_threshold' => :'lowBalanceThreshold',
        :'low_balance_notified' => :'lowBalanceNotified',
        :'last_modified' => :'lastModified'
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
        :'enabled' => :'Boolean',
        :'min_balance' => :'Integer',
        :'up_to_balance' => :'Integer',
        :'currency' => :'String',
        :'low_balance_threshold' => :'Integer',
        :'low_balance_notified' => :'Boolean',
        :'last_modified' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'currency',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::TenantWalletSettings` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::TenantWalletSettings`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'min_balance')
        self.min_balance = attributes[:'min_balance']
      end

      if attributes.key?(:'up_to_balance')
        self.up_to_balance = attributes[:'up_to_balance']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'low_balance_threshold')
        self.low_balance_threshold = attributes[:'low_balance_threshold']
      end

      if attributes.key?(:'low_balance_notified')
        self.low_balance_notified = attributes[:'low_balance_notified']
      end

      if attributes.key?(:'last_modified')
        self.last_modified = attributes[:'last_modified']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@min_balance.nil? && @min_balance > 1000
        invalid_properties.push('invalid value for "min_balance", must be smaller than or equal to 1000.')
      end

      if !@min_balance.nil? && @min_balance < 5
        invalid_properties.push('invalid value for "min_balance", must be greater than or equal to 5.')
      end

      if !@up_to_balance.nil? && @up_to_balance > 5000
        invalid_properties.push('invalid value for "up_to_balance", must be smaller than or equal to 5000.')
      end

      if !@up_to_balance.nil? && @up_to_balance < 6
        invalid_properties.push('invalid value for "up_to_balance", must be greater than or equal to 6.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@min_balance.nil? && @min_balance > 1000
      return false if !@min_balance.nil? && @min_balance < 5
      return false if !@up_to_balance.nil? && @up_to_balance > 5000
      return false if !@up_to_balance.nil? && @up_to_balance < 6
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] min_balance Value to be assigned
    def min_balance=(min_balance)
      if min_balance.nil?
        fail ArgumentError, 'min_balance cannot be nil'
      end

      if min_balance > 1000
        fail ArgumentError, 'invalid value for "min_balance", must be smaller than or equal to 1000.'
      end

      if min_balance < 5
        fail ArgumentError, 'invalid value for "min_balance", must be greater than or equal to 5.'
      end

      @min_balance = min_balance
    end

    # Custom attribute writer method with validation
    # @param [Object] up_to_balance Value to be assigned
    def up_to_balance=(up_to_balance)
      if up_to_balance.nil?
        fail ArgumentError, 'up_to_balance cannot be nil'
      end

      if up_to_balance > 5000
        fail ArgumentError, 'invalid value for "up_to_balance", must be smaller than or equal to 5000.'
      end

      if up_to_balance < 6
        fail ArgumentError, 'invalid value for "up_to_balance", must be greater than or equal to 6.'
      end

      @up_to_balance = up_to_balance
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          enabled == o.enabled &&
          min_balance == o.min_balance &&
          up_to_balance == o.up_to_balance &&
          currency == o.currency &&
          low_balance_threshold == o.low_balance_threshold &&
          low_balance_notified == o.low_balance_notified &&
          last_modified == o.last_modified
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [enabled, min_balance, up_to_balance, currency, low_balance_threshold, low_balance_notified, last_modified].hash
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
