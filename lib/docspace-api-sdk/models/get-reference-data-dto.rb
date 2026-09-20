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
  # The body of a spreadsheet reference request: the source spreadsheet, and the three ways of naming the document it  refers to, which are tried in the order they are described.
  class GetReferenceDataDto < ApiModelBase
    # The id of the referenced file as the document service recorded it in the formula. It is tried first, and only  when `instanceId` names this portal.
    attr_accessor :file_key

    # The portal the reference was made on, as the document service recorded it. Only the id of this portal makes  the file key resolvable; any other value falls through to the path and the link.
    attr_accessor :instance_id

    # The spreadsheet the formula sits in. The path is resolved against it - the referenced file is looked for among  the files lying next to it - and it is the file whose read access is checked.
    attr_accessor :source_file_id

    # The title of the referenced file exactly as the formula spells it, matched against the files lying next to the  source file. It is tried after the file key, and only when no link is given.
    attr_accessor :path

    # The web address the formula points at, an editor link of this portal or one of its short links. It is tried  last, and an address belonging to another site is not resolved at all but handed back for the client to follow  as it is.
    attr_accessor :link

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_key' => :'fileKey',
        :'instance_id' => :'instanceId',
        :'source_file_id' => :'sourceFileId',
        :'path' => :'path',
        :'link' => :'link'
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
        :'file_key' => :'String',
        :'instance_id' => :'String',
        :'source_file_id' => :'Integer',
        :'path' => :'String',
        :'link' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'file_key',
        :'instance_id',
        :'path',
        :'link'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::GetReferenceDataDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::GetReferenceDataDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'file_key')
        self.file_key = attributes[:'file_key']
      else
        self.file_key = nil
      end

      if attributes.key?(:'instance_id')
        self.instance_id = attributes[:'instance_id']
      else
        self.instance_id = nil
      end

      if attributes.key?(:'source_file_id')
        self.source_file_id = attributes[:'source_file_id']
      end

      if attributes.key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.key?(:'link')
        self.link = attributes[:'link']
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
          file_key == o.file_key &&
          instance_id == o.instance_id &&
          source_file_id == o.source_file_id &&
          path == o.path &&
          link == o.link
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [file_key, instance_id, source_file_id, path, link].hash
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
