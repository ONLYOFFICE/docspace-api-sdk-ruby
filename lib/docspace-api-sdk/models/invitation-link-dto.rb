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
  # The invitation link parameters.
  class InvitationLinkDto < ApiModelBase
    # The ID of the invitation link.
    attr_accessor :id

    # The type of employee role for the invitation link.
    attr_accessor :employee_type

    # The expiration date of the invitation link.
    attr_accessor :expiration

    # Indicates whether the invitation link has expired.
    attr_accessor :is_expired

    # The maximum number of times the invitation link can be used.
    attr_accessor :max_use_count

    # The current number of times the invitation link has been used.
    attr_accessor :current_use_count

    # The URL of the invitation link.
    attr_accessor :url

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
        :'employee_type' => :'employeeType',
        :'expiration' => :'expiration',
        :'is_expired' => :'isExpired',
        :'max_use_count' => :'maxUseCount',
        :'current_use_count' => :'currentUseCount',
        :'url' => :'url'
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
        :'employee_type' => :'EmployeeType',
        :'expiration' => :'Time',
        :'is_expired' => :'Boolean',
        :'max_use_count' => :'Integer',
        :'current_use_count' => :'Integer',
        :'url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'expiration',
        :'max_use_count',
        :'url'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::InvitationLinkDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::InvitationLinkDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'employee_type')
        self.employee_type = attributes[:'employee_type']
      else
        self.employee_type = nil
      end

      if attributes.key?(:'expiration')
        self.expiration = attributes[:'expiration']
      end

      if attributes.key?(:'is_expired')
        self.is_expired = attributes[:'is_expired']
      end

      if attributes.key?(:'max_use_count')
        self.max_use_count = attributes[:'max_use_count']
      end

      if attributes.key?(:'current_use_count')
        self.current_use_count = attributes[:'current_use_count']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @employee_type.nil?
        invalid_properties.push('invalid value for "employee_type", employee_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @employee_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] employee_type Value to be assigned
    def employee_type=(employee_type)
      if employee_type.nil?
        fail ArgumentError, 'employee_type cannot be nil'
      end

      @employee_type = employee_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          employee_type == o.employee_type &&
          expiration == o.expiration &&
          is_expired == o.is_expired &&
          max_use_count == o.max_use_count &&
          current_use_count == o.current_use_count &&
          url == o.url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, employee_type, expiration, is_expired, max_use_count, current_use_count, url].hash
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
