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
  # How a spreadsheet converted to PDF is laid out on the page. A field left out takes the document service default.
  class ConvertSpreadsheetLayoutRequest < ApiModelBase
    # Whether the print area chosen in the spreadsheet is ignored; false converts only that area.
    attr_accessor :ignore_print_area

    # The page orientation of the output PDF file: portrait or landscape.
    attr_accessor :orientation

    # The number of pages the converted area is fitted into in height; 0 does not fit it.
    attr_accessor :fit_to_height

    # The scale of the output PDF file, in percent.
    attr_accessor :scale

    # The number of pages the converted area is fitted into in width; 0 does not fit it.
    attr_accessor :fit_to_width

    # Whether the row and column headings are printed in the output PDF file.
    attr_accessor :headings

    # Whether the grid lines are printed in the output PDF file.
    attr_accessor :grid_lines

    # The margins of the output PDF file.
    attr_accessor :margins

    # The page size of the output PDF file.
    attr_accessor :page_size

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ignore_print_area' => :'ignorePrintArea',
        :'orientation' => :'orientation',
        :'fit_to_height' => :'fitToHeight',
        :'scale' => :'scale',
        :'fit_to_width' => :'fitToWidth',
        :'headings' => :'headings',
        :'grid_lines' => :'gridLines',
        :'margins' => :'margins',
        :'page_size' => :'pageSize'
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
        :'ignore_print_area' => :'Boolean',
        :'orientation' => :'String',
        :'fit_to_height' => :'Integer',
        :'scale' => :'Integer',
        :'fit_to_width' => :'Integer',
        :'headings' => :'Boolean',
        :'grid_lines' => :'Boolean',
        :'margins' => :'ConvertSpreadsheetMarginsRequest',
        :'page_size' => :'ConvertSpreadsheetPageSizeRequest'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'ignore_print_area',
        :'orientation',
        :'fit_to_height',
        :'scale',
        :'fit_to_width',
        :'headings',
        :'grid_lines',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ConvertSpreadsheetLayoutRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ConvertSpreadsheetLayoutRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ignore_print_area')
        self.ignore_print_area = attributes[:'ignore_print_area']
      end

      if attributes.key?(:'orientation')
        self.orientation = attributes[:'orientation']
      end

      if attributes.key?(:'fit_to_height')
        self.fit_to_height = attributes[:'fit_to_height']
      end

      if attributes.key?(:'scale')
        self.scale = attributes[:'scale']
      end

      if attributes.key?(:'fit_to_width')
        self.fit_to_width = attributes[:'fit_to_width']
      end

      if attributes.key?(:'headings')
        self.headings = attributes[:'headings']
      end

      if attributes.key?(:'grid_lines')
        self.grid_lines = attributes[:'grid_lines']
      end

      if attributes.key?(:'margins')
        self.margins = attributes[:'margins']
      end

      if attributes.key?(:'page_size')
        self.page_size = attributes[:'page_size']
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
          ignore_print_area == o.ignore_print_area &&
          orientation == o.orientation &&
          fit_to_height == o.fit_to_height &&
          scale == o.scale &&
          fit_to_width == o.fit_to_width &&
          headings == o.headings &&
          grid_lines == o.grid_lines &&
          margins == o.margins &&
          page_size == o.page_size
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ignore_print_area, orientation, fit_to_height, scale, fit_to_width, headings, grid_lines, margins, page_size].hash
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
