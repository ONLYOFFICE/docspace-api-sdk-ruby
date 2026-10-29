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
  # A spending limit on the AI services: for the portal as a whole, for every user, or for one user.
  class ServiceLimitDto < ApiModelBase
    # The service limit ID, used to read, change, switch off or delete the limit. In the list of the users the same  ID repeats for every user the limit for every user applies to.
    attr_accessor :id

    # The limited service group; the AI services are `ai-services`.
    attr_accessor :service_group_name

    # The number of the billing account of the portal the limit belongs to.
    attr_accessor :customer_account_number

    # Whom the limit applies to.
    attr_accessor :scope

    # The ID of the portal user the limit applies to: the user of a personal limit, or, in the list of the users, the  user a limit for every user applies to. Null for a limit of the portal as a whole, and for a limit for every  user read on its own.
    attr_accessor :user_id

    # The most money the AI services may cost per period, in `currency`; null when the limit has no money threshold.
    attr_accessor :amount_value

    # The currency `amountValue` is expressed in; null when the limit has no money threshold.
    attr_accessor :currency

    # The largest quantity the AI services may consume per period, in `serviceUnit`; null when the limit has no  quantity threshold.
    attr_accessor :quantity_value

    # The unit `quantityValue` is expressed in; null when the limit has no quantity threshold.
    attr_accessor :service_unit

    # The window the thresholds apply to. A day, week or month resets at the start of the next one in UTC (a week on  Monday), not a fixed time after the first charge; a lifetime limit never resets.
    attr_accessor :period

    # The last moment of the current period, in UTC, after which the spending starts over from zero; null for a  lifetime limit, which never resets. Filled for every limit, the limit for every user included, whose spending is  counted per user.
    attr_accessor :period_end

    # The moment a lifetime limit counts from, in UTC; null for the other periods.
    attr_accessor :usage_from

    # Whether the limit is in force. A switched-off limit no longer restricts the AI services and can be switched  back on.
    attr_accessor :enabled

    # The date and time when the limit was created, in UTC.
    attr_accessor :created

    # The date and time when the limit was last changed, in UTC.
    attr_accessor :modified

    # What was spent against the limit in its current period and what is left. Filled for the limit of the portal as  a whole and in the list of the users; null where the spending is not read, such as for a limit read by its ID  or the limit for every user, whose spending is counted per user.
    attr_accessor :usage

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
        :'service_group_name' => :'serviceGroupName',
        :'customer_account_number' => :'customerAccountNumber',
        :'scope' => :'scope',
        :'user_id' => :'userId',
        :'amount_value' => :'amountValue',
        :'currency' => :'currency',
        :'quantity_value' => :'quantityValue',
        :'service_unit' => :'serviceUnit',
        :'period' => :'period',
        :'period_end' => :'periodEnd',
        :'usage_from' => :'usageFrom',
        :'enabled' => :'enabled',
        :'created' => :'created',
        :'modified' => :'modified',
        :'usage' => :'usage'
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
        :'service_group_name' => :'String',
        :'customer_account_number' => :'Integer',
        :'scope' => :'ServiceLimitScope',
        :'user_id' => :'String',
        :'amount_value' => :'Float',
        :'currency' => :'String',
        :'quantity_value' => :'Integer',
        :'service_unit' => :'String',
        :'period' => :'ServiceLimitPeriod',
        :'period_end' => :'Time',
        :'usage_from' => :'Time',
        :'enabled' => :'Boolean',
        :'created' => :'Time',
        :'modified' => :'Time',
        :'usage' => :'ServiceLimitUsageDto'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'service_group_name',
        :'user_id',
        :'amount_value',
        :'currency',
        :'quantity_value',
        :'service_unit',
        :'period_end',
        :'usage_from',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ServiceLimitDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ServiceLimitDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'service_group_name')
        self.service_group_name = attributes[:'service_group_name']
      end

      if attributes.key?(:'customer_account_number')
        self.customer_account_number = attributes[:'customer_account_number']
      end

      if attributes.key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'amount_value')
        self.amount_value = attributes[:'amount_value']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'quantity_value')
        self.quantity_value = attributes[:'quantity_value']
      end

      if attributes.key?(:'service_unit')
        self.service_unit = attributes[:'service_unit']
      end

      if attributes.key?(:'period')
        self.period = attributes[:'period']
      end

      if attributes.key?(:'period_end')
        self.period_end = attributes[:'period_end']
      end

      if attributes.key?(:'usage_from')
        self.usage_from = attributes[:'usage_from']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'modified')
        self.modified = attributes[:'modified']
      end

      if attributes.key?(:'usage')
        self.usage = attributes[:'usage']
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
          service_group_name == o.service_group_name &&
          customer_account_number == o.customer_account_number &&
          scope == o.scope &&
          user_id == o.user_id &&
          amount_value == o.amount_value &&
          currency == o.currency &&
          quantity_value == o.quantity_value &&
          service_unit == o.service_unit &&
          period == o.period &&
          period_end == o.period_end &&
          usage_from == o.usage_from &&
          enabled == o.enabled &&
          created == o.created &&
          modified == o.modified &&
          usage == o.usage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, service_group_name, customer_account_number, scope, user_id, amount_value, currency, quantity_value, service_unit, period, period_end, usage_from, enabled, created, modified, usage].hash
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
