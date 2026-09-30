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
  # What one wallet service was consumed and cost over the requested period, added up rather than listed.
  class CustomerServiceUsageDto < ApiModelBase
    # The stable key of the service, which is what the `serviceName` filter of this operation matches on and  what `GET api/2.0/portal/payment/walletservice` looks a service up by.
    attr_accessor :service

    # The service name in the portal language, for printing rather than matching.
    attr_accessor :title

    # What `totalQuantity` counts, in the portal language. AI consumption is reported in tokens here rather  than in the AI credits the service is sold in, so it does not line up with the price list.
    attr_accessor :service_unit

    # The currency `totalAmount` and `price` are expressed in, as a three-letter ISO 4217 code.
    attr_accessor :currency

    # How many units of the service were consumed over the period, in the unit named by `serviceUnit`.
    attr_accessor :total_quantity

    # What that consumption cost over the period. It is what was actually charged, so it can differ from  `price` times `totalQuantity` when the price changed inside the period.
    attr_accessor :total_amount

    # How many separate charges the total was added up from. The charges themselves are in  `GET api/2.0/portal/payment/customer/operations`.
    attr_accessor :operation_count

    # What one unit of the service costs today, not what it cost during the period. It is `0` when the service  is no longer on the installation's price list.
    attr_accessor :price

    # Whether the service is billed as a standing subscription rather than per unit consumed. It is derived  from today's price list, so it describes the service as it is sold now.
    attr_accessor :subscription

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'service' => :'service',
        :'title' => :'title',
        :'service_unit' => :'serviceUnit',
        :'currency' => :'currency',
        :'total_quantity' => :'totalQuantity',
        :'total_amount' => :'totalAmount',
        :'operation_count' => :'operationCount',
        :'price' => :'price',
        :'subscription' => :'subscription'
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
        :'service' => :'String',
        :'title' => :'String',
        :'service_unit' => :'String',
        :'currency' => :'String',
        :'total_quantity' => :'Integer',
        :'total_amount' => :'Float',
        :'operation_count' => :'Integer',
        :'price' => :'Float',
        :'subscription' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'service',
        :'title',
        :'service_unit',
        :'currency',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::CustomerServiceUsageDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::CustomerServiceUsageDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'service')
        self.service = attributes[:'service']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'service_unit')
        self.service_unit = attributes[:'service_unit']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'total_quantity')
        self.total_quantity = attributes[:'total_quantity']
      end

      if attributes.key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end

      if attributes.key?(:'operation_count')
        self.operation_count = attributes[:'operation_count']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'subscription')
        self.subscription = attributes[:'subscription']
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
          service == o.service &&
          title == o.title &&
          service_unit == o.service_unit &&
          currency == o.currency &&
          total_quantity == o.total_quantity &&
          total_amount == o.total_amount &&
          operation_count == o.operation_count &&
          price == o.price &&
          subscription == o.subscription
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [service, title, service_unit, currency, total_quantity, total_amount, operation_count, price, subscription].hash
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
