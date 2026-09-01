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
  # Represents the payment information of a DocsCloud tenant.
  class DocsCloudPayment < ApiModelBase
    # The cart ID.
    attr_accessor :cart_id

    # The product ID.
    attr_accessor :product_id

    # The payment status.
    attr_accessor :status

    # The interval unit.
    attr_accessor :interval_unit

    # Whether the payment interval is yearly.
    attr_accessor :is_year

    # Whether the payment is prepaid.
    attr_accessor :is_prepaid

    # The quantity.
    attr_accessor :quantity

    # The three-character ISO 4217 currency symbol of the payment.
    attr_accessor :currency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cart_id' => :'cartId',
        :'product_id' => :'productId',
        :'status' => :'status',
        :'interval_unit' => :'intervalUnit',
        :'is_year' => :'isYear',
        :'is_prepaid' => :'isPrepaid',
        :'quantity' => :'quantity',
        :'currency' => :'currency'
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
        :'cart_id' => :'String',
        :'product_id' => :'Integer',
        :'status' => :'Integer',
        :'interval_unit' => :'Integer',
        :'is_year' => :'Boolean',
        :'is_prepaid' => :'Boolean',
        :'quantity' => :'Integer',
        :'currency' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'cart_id',
        :'currency'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::DocsCloudPayment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::DocsCloudPayment`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cart_id')
        self.cart_id = attributes[:'cart_id']
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'interval_unit')
        self.interval_unit = attributes[:'interval_unit']
      end

      if attributes.key?(:'is_year')
        self.is_year = attributes[:'is_year']
      end

      if attributes.key?(:'is_prepaid')
        self.is_prepaid = attributes[:'is_prepaid']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
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
          cart_id == o.cart_id &&
          product_id == o.product_id &&
          status == o.status &&
          interval_unit == o.interval_unit &&
          is_year == o.is_year &&
          is_prepaid == o.is_prepaid &&
          quantity == o.quantity &&
          currency == o.currency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [cart_id, product_id, status, interval_unit, is_year, is_prepaid, quantity, currency].hash
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
