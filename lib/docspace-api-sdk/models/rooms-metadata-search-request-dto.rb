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
  # The typed form of the metadata search of the rooms: the same filter the rooms listing takes in the metadataTemplateId  and metadataFilters query parameters, with the conditions as objects instead of a JSON string.
  class RoomsMetadataSearchRequestDto < ApiModelBase
    # The ID of the metadata template the rooms must be assigned to. On its own it narrows the listing to the rooms  carrying the template; together with the conditions it also pins the template the filtered fields belong to.
    attr_accessor :metadata_template_id

    # The metadata filter conditions, combined with AND. A custom field is addressed by its name instead of the field ID.
    attr_accessor :metadata_filters

    # Whether the text search, and the metadataMatches it reports, also look at the values of the hidden metadata  templates (created with visible false for the metadata a service keeps for itself, which the web client never  shows). False, the default, leaves them out, so an entry is not found by such a value; true takes them in.  metadataTemplateId and metadataFilters are not concerned: a hidden template or field named there is searched  either way.
    attr_accessor :include_hidden_metadata

    # The text to search for in the room titles and in the string metadata values of the rooms, the custom fields and  the template fields alike; a room found by its metadata says where in metadataMatches.
    attr_accessor :filter_value

    # The section to search in: the active rooms (the default), the archive or the templates.
    attr_accessor :search_area

    # The room types to search among.
    attr_accessor :type

    # The number of rooms to return, from 1 to 100.
    attr_accessor :count

    # The zero-based index of the first room to return.
    attr_accessor :start_index

    # The field to sort by, a name of the SortedByType values.
    attr_accessor :sort_by

    # The sort order.
    attr_accessor :sort_order

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
        :'metadata_template_id' => :'metadataTemplateId',
        :'metadata_filters' => :'metadataFilters',
        :'include_hidden_metadata' => :'includeHiddenMetadata',
        :'filter_value' => :'filterValue',
        :'search_area' => :'searchArea',
        :'type' => :'type',
        :'count' => :'count',
        :'start_index' => :'startIndex',
        :'sort_by' => :'sortBy',
        :'sort_order' => :'sortOrder'
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
        :'metadata_template_id' => :'Integer',
        :'metadata_filters' => :'Array<MetadataFilterConditionRequest>',
        :'include_hidden_metadata' => :'Boolean',
        :'filter_value' => :'String',
        :'search_area' => :'SearchArea',
        :'type' => :'Array<RoomType>',
        :'count' => :'Integer',
        :'start_index' => :'Integer',
        :'sort_by' => :'String',
        :'sort_order' => :'SortOrder'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'metadata_template_id',
        :'metadata_filters',
        :'include_hidden_metadata',
        :'filter_value',
        :'type',
        :'sort_by',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::RoomsMetadataSearchRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::RoomsMetadataSearchRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'metadata_template_id')
        self.metadata_template_id = attributes[:'metadata_template_id']
      end

      if attributes.key?(:'metadata_filters')
        if (value = attributes[:'metadata_filters']).is_a?(Array)
          self.metadata_filters = value
        end
      end

      if attributes.key?(:'include_hidden_metadata')
        self.include_hidden_metadata = attributes[:'include_hidden_metadata']
      end

      if attributes.key?(:'filter_value')
        self.filter_value = attributes[:'filter_value']
      end

      if attributes.key?(:'search_area')
        self.search_area = attributes[:'search_area']
      end

      if attributes.key?(:'type')
        if (value = attributes[:'type']).is_a?(Array)
          self.type = value
        end
      end

      if attributes.key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.key?(:'start_index')
        self.start_index = attributes[:'start_index']
      end

      if attributes.key?(:'sort_by')
        self.sort_by = attributes[:'sort_by']
      end

      if attributes.key?(:'sort_order')
        self.sort_order = attributes[:'sort_order']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@count.nil? && @count > 100
        invalid_properties.push('invalid value for "count", must be smaller than or equal to 100.')
      end

      if !@count.nil? && @count < 1
        invalid_properties.push('invalid value for "count", must be greater than or equal to 1.')
      end

      if !@start_index.nil? && @start_index > 2147483647
        invalid_properties.push('invalid value for "start_index", must be smaller than or equal to 2147483647.')
      end

      if !@start_index.nil? && @start_index < 0
        invalid_properties.push('invalid value for "start_index", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@count.nil? && @count > 100
      return false if !@count.nil? && @count < 1
      return false if !@start_index.nil? && @start_index > 2147483647
      return false if !@start_index.nil? && @start_index < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] count Value to be assigned
    def count=(count)
      if count.nil?
        fail ArgumentError, 'count cannot be nil'
      end

      if count > 100
        fail ArgumentError, 'invalid value for "count", must be smaller than or equal to 100.'
      end

      if count < 1
        fail ArgumentError, 'invalid value for "count", must be greater than or equal to 1.'
      end

      @count = count
    end

    # Custom attribute writer method with validation
    # @param [Object] start_index Value to be assigned
    def start_index=(start_index)
      if start_index.nil?
        fail ArgumentError, 'start_index cannot be nil'
      end

      if start_index > 2147483647
        fail ArgumentError, 'invalid value for "start_index", must be smaller than or equal to 2147483647.'
      end

      if start_index < 0
        fail ArgumentError, 'invalid value for "start_index", must be greater than or equal to 0.'
      end

      @start_index = start_index
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          metadata_template_id == o.metadata_template_id &&
          metadata_filters == o.metadata_filters &&
          include_hidden_metadata == o.include_hidden_metadata &&
          filter_value == o.filter_value &&
          search_area == o.search_area &&
          type == o.type &&
          count == o.count &&
          start_index == o.start_index &&
          sort_by == o.sort_by &&
          sort_order == o.sort_order
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [metadata_template_id, metadata_filters, include_hidden_metadata, filter_value, search_area, type, count, start_index, sort_by, sort_order].hash
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
