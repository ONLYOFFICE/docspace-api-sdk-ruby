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
  # Represents a DocsCloud tenant of a portal.
  class DocsCloudTenant < ApiModelBase
    # The external ID of the dedicated resource the tenant is hosted on.
    attr_accessor :dedicated_resource_ex_id

    # The tenant alias.
    attr_accessor :_alias

    # The tenant name.
    attr_accessor :name

    # The date and time when the tenant was last modified.
    attr_accessor :modified_date

    # The customer ID.
    attr_accessor :customer_id

    # The customer name.
    attr_accessor :customer_name

    # The date and time when the tenant subscription ends.
    attr_accessor :end_date

    # The resource type.
    attr_accessor :resource_type

    # Whether the tenant is active (the end date is in the future).
    attr_accessor :is_active

    # The tenant address.
    attr_accessor :address

    # The tenant payment information.
    attr_accessor :payment

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'dedicated_resource_ex_id' => :'dedicatedResourceExId',
        :'_alias' => :'alias',
        :'name' => :'name',
        :'modified_date' => :'modifiedDate',
        :'customer_id' => :'customerId',
        :'customer_name' => :'customerName',
        :'end_date' => :'endDate',
        :'resource_type' => :'resourceType',
        :'is_active' => :'isActive',
        :'address' => :'address',
        :'payment' => :'payment'
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
        :'dedicated_resource_ex_id' => :'Integer',
        :'_alias' => :'String',
        :'name' => :'String',
        :'modified_date' => :'Time',
        :'customer_id' => :'String',
        :'customer_name' => :'String',
        :'end_date' => :'Time',
        :'resource_type' => :'Integer',
        :'is_active' => :'Boolean',
        :'address' => :'String',
        :'payment' => :'DocsCloudPayment'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'_alias',
        :'name',
        :'customer_id',
        :'customer_name',
        :'address',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::DocsCloudTenant` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::DocsCloudTenant`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'dedicated_resource_ex_id')
        self.dedicated_resource_ex_id = attributes[:'dedicated_resource_ex_id']
      end

      if attributes.key?(:'_alias')
        self._alias = attributes[:'_alias']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'modified_date')
        self.modified_date = attributes[:'modified_date']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'customer_name')
        self.customer_name = attributes[:'customer_name']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'payment')
        self.payment = attributes[:'payment']
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
          dedicated_resource_ex_id == o.dedicated_resource_ex_id &&
          _alias == o._alias &&
          name == o.name &&
          modified_date == o.modified_date &&
          customer_id == o.customer_id &&
          customer_name == o.customer_name &&
          end_date == o.end_date &&
          resource_type == o.resource_type &&
          is_active == o.is_active &&
          address == o.address &&
          payment == o.payment
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [dedicated_resource_ex_id, _alias, name, modified_date, customer_id, customer_name, end_date, resource_type, is_active, address, payment].hash
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
