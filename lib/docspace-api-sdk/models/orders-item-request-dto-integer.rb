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
  # An item in the ordering request with its entry type and ID.
  class OrdersItemRequestDtoInteger < ApiModelBase
    # The entry unique identifier (file or folder).
    attr_accessor :entry_id

    # The entry type (file or folder).
    attr_accessor :entry_type

    # The order value.
    attr_accessor :order

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
        :'entry_id' => :'entryId',
        :'entry_type' => :'entryType',
        :'order' => :'order'
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
        :'entry_id' => :'Integer',
        :'entry_type' => :'FileEntryType',
        :'order' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::OrdersItemRequestDtoInteger` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::OrdersItemRequestDtoInteger`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'entry_id')
        self.entry_id = attributes[:'entry_id']
      else
        self.entry_id = nil
      end

      if attributes.key?(:'entry_type')
        self.entry_type = attributes[:'entry_type']
      else
        self.entry_type = nil
      end

      if attributes.key?(:'order')
        self.order = attributes[:'order']
      else
        self.order = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @entry_id.nil?
        invalid_properties.push('invalid value for "entry_id", entry_id cannot be nil.')
      end

      if @entry_type.nil?
        invalid_properties.push('invalid value for "entry_type", entry_type cannot be nil.')
      end

      if @order.nil?
        invalid_properties.push('invalid value for "order", order cannot be nil.')
      end

      if @order > 2147483647
        invalid_properties.push('invalid value for "order", must be smaller than or equal to 2147483647.')
      end

      if @order < 1
        invalid_properties.push('invalid value for "order", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @entry_id.nil?
      return false if @entry_type.nil?
      return false if @order.nil?
      return false if @order > 2147483647
      return false if @order < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] entry_id Value to be assigned
    def entry_id=(entry_id)
      if entry_id.nil?
        fail ArgumentError, 'entry_id cannot be nil'
      end

      @entry_id = entry_id
    end

    # Custom attribute writer method with validation
    # @param [Object] entry_type Value to be assigned
    def entry_type=(entry_type)
      if entry_type.nil?
        fail ArgumentError, 'entry_type cannot be nil'
      end

      @entry_type = entry_type
    end

    # Custom attribute writer method with validation
    # @param [Object] order Value to be assigned
    def order=(order)
      if order.nil?
        fail ArgumentError, 'order cannot be nil'
      end

      if order > 2147483647
        fail ArgumentError, 'invalid value for "order", must be smaller than or equal to 2147483647.'
      end

      if order < 1
        fail ArgumentError, 'invalid value for "order", must be greater than or equal to 1.'
      end

      @order = order
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          entry_id == o.entry_id &&
          entry_type == o.entry_type &&
          order == o.order
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [entry_id, entry_type, order].hash
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
