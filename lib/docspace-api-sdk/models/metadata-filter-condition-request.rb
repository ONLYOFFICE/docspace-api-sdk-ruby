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
  # One metadata filter condition as the clients send it: an element of the metadataFilters JSON of the listings and of  the body of the search endpoints. All conditions are combined with AND.
  class MetadataFilterConditionRequest < ApiModelBase
    # The ID of the template field the condition is on. A custom field is addressed by ASC.Files.Core.MetadataFilterConditionRequest.Name instead.
    attr_accessor :field_id

    # The name of a custom field, for the conditions on the custom fields, which have no identifier outside. Either the  field ID or the name is given; the name is matched without regard to case.
    attr_accessor :name

    # The operator, one of ASC.Files.Core.MetadataFilterOperators: eq or contains for a string field, eq, range,  gt, gte, lt or lte for a number field, range, gt, gte, lt or lte for a date field, in for a  choice field. Optional: an omitted operator is read as eq for a string, as range for a date, as in for a  choice, and for a number as eq when a value is given or as range when a bound is. A present one has to belong  to the field type and to the arguments: eq takes a value, range takes bounds.
    attr_accessor :op

    # The value of a single-valued condition: the whole or a part of a string field, the exact value of a number field,  or the bound of a gt, gte, lt or lte condition on a number or a date field. A JSON number is accepted as  well as a string. A date given without a time (2026-06-30) names the whole day (UTC).
    attr_accessor :value

    # The inclusive lower bound of a range. A date given without a time (2026-06-01) is the start of that day (UTC).
    attr_accessor :from

    # The inclusive upper bound of a range. A date given without a time (2026-06-30) covers the whole day (UTC);  a value with a time is an instant and is taken as is.
    attr_accessor :to

    # The options any of which the choice field must hold.
    attr_accessor :option_ids

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'field_id' => :'fieldId',
        :'name' => :'name',
        :'op' => :'op',
        :'value' => :'value',
        :'from' => :'from',
        :'to' => :'to',
        :'option_ids' => :'optionIds'
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
        :'field_id' => :'Integer',
        :'name' => :'String',
        :'op' => :'String',
        :'value' => :'String',
        :'from' => :'String',
        :'to' => :'String',
        :'option_ids' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'op',
        :'value',
        :'from',
        :'to',
        :'option_ids'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::MetadataFilterConditionRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::MetadataFilterConditionRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'field_id')
        self.field_id = attributes[:'field_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'op')
        self.op = attributes[:'op']
      end

      if attributes.key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'option_ids')
        if (value = attributes[:'option_ids']).is_a?(Array)
          self.option_ids = value
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
          field_id == o.field_id &&
          name == o.name &&
          op == o.op &&
          value == o.value &&
          from == o.from &&
          to == o.to &&
          option_ids == o.option_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [field_id, name, op, value, from, to, option_ids].hash
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
