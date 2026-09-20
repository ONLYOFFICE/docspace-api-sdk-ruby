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
  # Represents a price of the service.
  class ServicePriceInfo < ApiModelBase
    # The price unique identifier.
    attr_accessor :id

    # The account number.
    attr_accessor :account_number

    # The service ID.
    attr_accessor :service_id

    # The time unit the price is bound to.
    attr_accessor :time_unit

    # The cost price.
    attr_accessor :cost_price

    # The extra charge added to the cost price.
    attr_accessor :extra_charge

    # The resulting service price.
    attr_accessor :service_price

    # The quota the price is set for.
    attr_accessor :quota

    # The period the price is effective in.
    attr_accessor :time_bound

    # The price status.
    attr_accessor :status

    # The date and time when the price was created.
    attr_accessor :created

    # The discount category ID.
    attr_accessor :discount_category_id

    # The discount category.
    attr_accessor :discount_category

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
        :'account_number' => :'accountNumber',
        :'service_id' => :'serviceId',
        :'time_unit' => :'timeUnit',
        :'cost_price' => :'costPrice',
        :'extra_charge' => :'extraCharge',
        :'service_price' => :'servicePrice',
        :'quota' => :'quota',
        :'time_bound' => :'timeBound',
        :'status' => :'status',
        :'created' => :'created',
        :'discount_category_id' => :'discountCategoryId',
        :'discount_category' => :'discountCategory'
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
        :'id' => :'Integer',
        :'account_number' => :'Integer',
        :'service_id' => :'Integer',
        :'time_unit' => :'PriceTimeUnit',
        :'cost_price' => :'Float',
        :'extra_charge' => :'Float',
        :'service_price' => :'Float',
        :'quota' => :'Float',
        :'time_bound' => :'TimeBound',
        :'status' => :'PriceStatus',
        :'created' => :'Time',
        :'discount_category_id' => :'Integer',
        :'discount_category' => :'DiscountCategory'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'quota',
        :'discount_category_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ServicePriceInfo` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ServicePriceInfo`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'service_id')
        self.service_id = attributes[:'service_id']
      end

      if attributes.key?(:'time_unit')
        self.time_unit = attributes[:'time_unit']
      end

      if attributes.key?(:'cost_price')
        self.cost_price = attributes[:'cost_price']
      end

      if attributes.key?(:'extra_charge')
        self.extra_charge = attributes[:'extra_charge']
      end

      if attributes.key?(:'service_price')
        self.service_price = attributes[:'service_price']
      end

      if attributes.key?(:'quota')
        self.quota = attributes[:'quota']
      end

      if attributes.key?(:'time_bound')
        self.time_bound = attributes[:'time_bound']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'discount_category_id')
        self.discount_category_id = attributes[:'discount_category_id']
      end

      if attributes.key?(:'discount_category')
        self.discount_category = attributes[:'discount_category']
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
          account_number == o.account_number &&
          service_id == o.service_id &&
          time_unit == o.time_unit &&
          cost_price == o.cost_price &&
          extra_charge == o.extra_charge &&
          service_price == o.service_price &&
          quota == o.quota &&
          time_bound == o.time_bound &&
          status == o.status &&
          created == o.created &&
          discount_category_id == o.discount_category_id &&
          discount_category == o.discount_category
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, account_number, service_id, time_unit, cost_price, extra_charge, service_price, quota, time_bound, status, created, discount_category_id, discount_category].hash
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
