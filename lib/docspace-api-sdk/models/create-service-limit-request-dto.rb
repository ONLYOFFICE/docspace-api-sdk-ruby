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
  # The spending limit to create on the AI services: for the portal as a whole, for every user, or for one user.
  class CreateServiceLimitRequestDto < ApiModelBase
    # Whom the limit applies to.
    attr_accessor :scope

    # The ID of the portal user a personal limit is set for, as returned in `id` by the people operations.
    attr_accessor :user_id

    # The most money the AI services may cost per period, in their currency, which cannot be chosen. Zero blocks the  AI services completely.
    attr_accessor :amount_value

    # The largest quantity the AI services may consume per period, in their common unit. Zero blocks the AI services  completely.
    attr_accessor :quantity_value

    # The window the thresholds apply to, in UTC. A day, week or month is calendar-aligned rather than rolling - a  daily limit resets at midnight UTC, a weekly one on Monday - while a lifetime limit counts from its creation and  never resets.
    attr_accessor :period

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
        :'scope' => :'scope',
        :'user_id' => :'userId',
        :'amount_value' => :'amountValue',
        :'quantity_value' => :'quantityValue',
        :'period' => :'period'
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
        :'scope' => :'ServiceLimitScope',
        :'user_id' => :'String',
        :'amount_value' => :'Float',
        :'quantity_value' => :'Integer',
        :'period' => :'ServiceLimitPeriod'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'user_id',
        :'amount_value',
        :'quantity_value',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::CreateServiceLimitRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::CreateServiceLimitRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'amount_value')
        self.amount_value = attributes[:'amount_value']
      end

      if attributes.key?(:'quantity_value')
        self.quantity_value = attributes[:'quantity_value']
      end

      if attributes.key?(:'period')
        self.period = attributes[:'period']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@amount_value.nil? && @amount_value > 10000
        invalid_properties.push('invalid value for "amount_value", must be smaller than or equal to 10000.')
      end

      if !@amount_value.nil? && @amount_value < 0
        invalid_properties.push('invalid value for "amount_value", must be greater than or equal to 0.')
      end

      if !@quantity_value.nil? && @quantity_value > 2147483647
        invalid_properties.push('invalid value for "quantity_value", must be smaller than or equal to 2147483647.')
      end

      if !@quantity_value.nil? && @quantity_value < 0
        invalid_properties.push('invalid value for "quantity_value", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@amount_value.nil? && @amount_value > 10000
      return false if !@amount_value.nil? && @amount_value < 0
      return false if !@quantity_value.nil? && @quantity_value > 2147483647
      return false if !@quantity_value.nil? && @quantity_value < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount_value Value to be assigned
    def amount_value=(amount_value)
      if !amount_value.nil? && amount_value > 10000
        fail ArgumentError, 'invalid value for "amount_value", must be smaller than or equal to 10000.'
      end

      if !amount_value.nil? && amount_value < 0
        fail ArgumentError, 'invalid value for "amount_value", must be greater than or equal to 0.'
      end

      @amount_value = amount_value
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity_value Value to be assigned
    def quantity_value=(quantity_value)
      if !quantity_value.nil? && quantity_value > 2147483647
        fail ArgumentError, 'invalid value for "quantity_value", must be smaller than or equal to 2147483647.'
      end

      if !quantity_value.nil? && quantity_value < 0
        fail ArgumentError, 'invalid value for "quantity_value", must be greater than or equal to 0.'
      end

      @quantity_value = quantity_value
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          scope == o.scope &&
          user_id == o.user_id &&
          amount_value == o.amount_value &&
          quantity_value == o.quantity_value &&
          period == o.period
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [scope, user_id, amount_value, quantity_value, period].hash
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
