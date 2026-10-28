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
  # The subscription this portal runs on: its state, the end of the current period, and the quotas it is made of.
  class TariffDto < ApiModelBase
    # Whether the installation runs the open-source build, which has no paid plan at all. This flag and the two  below describe the build rather than the subscription, and all three are left empty for a caller without  the portal-settings right.
    attr_accessor :open_source

    # Whether the installation runs on an Enterprise licence file, which is what makes the licence operations  under `api/2.0/settings/license` usable.
    attr_accessor :enterprise

    # Whether the installation runs on a Developer licence, an Enterprise licence meant for embedding rather  than for production use.
    attr_accessor :developer

    # The identifier of the subscription record itself, for quoting when a charge has to be traced. It is filled  in for a caller with the portal-settings right only, and nothing accepts it as an argument.
    attr_accessor :id

    # How the subscription stands: on trial, paid, inside the grace period that follows the due date, or unpaid.  It is the one field every caller gets, whatever their role, so a client can warn about payment without  needing administrator rights.
    attr_accessor :state

    # When the current period ends, in the portal time zone. It is filled in for a room or DocSpace  administrator only, and set to the largest value a date can hold for a subscription that never ends.
    attr_accessor :due_date

    # When the grace period after `dueDate` runs out and the portal is cut off, in the portal time zone. Filled  in under the same conditions as `dueDate`, and equal to it when the plan grants no grace period.
    attr_accessor :delay_due_date

    # When the licence file behind the subscription was issued, in the portal time zone. It is meaningful on a  server installation and filled in for a caller with the portal-settings right only.
    attr_accessor :license_date

    # The account in the billing system the subscription is charged to, empty for a portal that has never been  billed. Filled in for a caller with the portal-settings right only.
    attr_accessor :customer_id

    # The quotas the subscription is made of - the plan itself and its add-ons - with the overdue ones listed  alongside the current ones, so an entry here is not proof that it is still being paid for; read each  entry's own `state` for that. Filled in for a caller with the portal-settings right only.
    attr_accessor :quotas

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
        :'open_source' => :'openSource',
        :'enterprise' => :'enterprise',
        :'developer' => :'developer',
        :'id' => :'id',
        :'state' => :'state',
        :'due_date' => :'dueDate',
        :'delay_due_date' => :'delayDueDate',
        :'license_date' => :'licenseDate',
        :'customer_id' => :'customerId',
        :'quotas' => :'quotas'
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
        :'open_source' => :'Boolean',
        :'enterprise' => :'Boolean',
        :'developer' => :'Boolean',
        :'id' => :'Integer',
        :'state' => :'TariffState',
        :'due_date' => :'ApiDateTime',
        :'delay_due_date' => :'ApiDateTime',
        :'license_date' => :'ApiDateTime',
        :'customer_id' => :'String',
        :'quotas' => :'Array<TariffQuotaDto>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'open_source',
        :'enterprise',
        :'developer',
        :'customer_id',
        :'quotas'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::TariffDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::TariffDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'open_source')
        self.open_source = attributes[:'open_source']
      end

      if attributes.key?(:'enterprise')
        self.enterprise = attributes[:'enterprise']
      end

      if attributes.key?(:'developer')
        self.developer = attributes[:'developer']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'delay_due_date')
        self.delay_due_date = attributes[:'delay_due_date']
      end

      if attributes.key?(:'license_date')
        self.license_date = attributes[:'license_date']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'quotas')
        if (value = attributes[:'quotas']).is_a?(Array)
          self.quotas = value
        end
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
          open_source == o.open_source &&
          enterprise == o.enterprise &&
          developer == o.developer &&
          id == o.id &&
          state == o.state &&
          due_date == o.due_date &&
          delay_due_date == o.delay_due_date &&
          license_date == o.license_date &&
          customer_id == o.customer_id &&
          quotas == o.quotas
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [open_source, enterprise, developer, id, state, due_date, delay_due_date, license_date, customer_id, quotas].hash
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
