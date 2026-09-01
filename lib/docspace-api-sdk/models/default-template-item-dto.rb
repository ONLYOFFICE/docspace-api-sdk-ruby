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
  # Default template setting
  class DefaultTemplateItemDto < ApiModelBase
    # File id to use as a default template
    attr_accessor :selected_file

    # Extension of a default template
    attr_accessor :file_extension

    # Title of a default template
    attr_accessor :file_title

    # Last modified date of a default template
    attr_accessor :last_modified

    # Filesize (in bytes) of a default template
    attr_accessor :file_size

    # View url of a default template
    attr_accessor :view_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'selected_file' => :'selectedFile',
        :'file_extension' => :'fileExtension',
        :'file_title' => :'fileTitle',
        :'last_modified' => :'lastModified',
        :'file_size' => :'fileSize',
        :'view_url' => :'viewUrl'
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
        :'selected_file' => :'Integer',
        :'file_extension' => :'String',
        :'file_title' => :'String',
        :'last_modified' => :'Time',
        :'file_size' => :'Integer',
        :'view_url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'selected_file',
        :'file_extension',
        :'file_title',
        :'last_modified',
        :'file_size',
        :'view_url'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::DefaultTemplateItemDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::DefaultTemplateItemDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'selected_file')
        self.selected_file = attributes[:'selected_file']
      end

      if attributes.key?(:'file_extension')
        self.file_extension = attributes[:'file_extension']
      else
        self.file_extension = nil
      end

      if attributes.key?(:'file_title')
        self.file_title = attributes[:'file_title']
      end

      if attributes.key?(:'last_modified')
        self.last_modified = attributes[:'last_modified']
      end

      if attributes.key?(:'file_size')
        self.file_size = attributes[:'file_size']
      end

      if attributes.key?(:'view_url')
        self.view_url = attributes[:'view_url']
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
          selected_file == o.selected_file &&
          file_extension == o.file_extension &&
          file_title == o.file_title &&
          last_modified == o.last_modified &&
          file_size == o.file_size &&
          view_url == o.view_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [selected_file, file_extension, file_title, last_modified, file_size, view_url].hash
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
