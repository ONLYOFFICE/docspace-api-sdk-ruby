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
  # The document builder script to run and where to put what it produces.
  class RunBuilderScriptRequestDto < ApiModelBase
    # The document builder script. It names a portal file by its id where the document builder documentation  writes an address - `builder.OpenFile(1234)`; an address written out in the script is refused.
    attr_accessor :script

    # The id of the folder for the produced files that `outputs` does not list, as reported by a folder listing  such as `GET api/2.0/files/{folderId}`.
    attr_accessor :folder_id

    # Destinations of the produced files, keyed by the name the script saves each one under - the second argument of  `builder.SaveFile(docx, result.docx)`.
    attr_accessor :outputs

    attr_accessor :argument

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'script' => :'script',
        :'folder_id' => :'folderId',
        :'outputs' => :'outputs',
        :'argument' => :'argument'
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
        :'script' => :'String',
        :'folder_id' => :'Integer',
        :'outputs' => :'Hash<String, RunBuilderScriptOutputRequest>',
        :'argument' => :'RunBuilderScriptRequestDtoArgument'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'script',
        :'folder_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::RunBuilderScriptRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::RunBuilderScriptRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'script')
        self.script = attributes[:'script']
      else
        self.script = nil
      end

      if attributes.key?(:'folder_id')
        self.folder_id = attributes[:'folder_id']
      end

      if attributes.key?(:'outputs')
        if (value = attributes[:'outputs']).is_a?(Hash)
          self.outputs = value
        end
      end

      if attributes.key?(:'argument')
        self.argument = attributes[:'argument']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @script.to_s.length > 2097152
        invalid_properties.push('invalid value for "script", the character length must be smaller than or equal to 2097152.')
      end

      if @script.to_s.length < 0
        invalid_properties.push('invalid value for "script", the character length must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @script.to_s.length > 2097152
      return false if @script.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] script Value to be assigned
    def script=(script)
      if !script.nil? && script.to_s.length > 2097152
        fail ArgumentError, 'invalid value for "script", the character length must be smaller than or equal to 2097152.'
      end

      if !script.nil? && script.to_s.length < 0
        fail ArgumentError, 'invalid value for "script", the character length must be greater than or equal to 0.'
      end

      @script = script
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          script == o.script &&
          folder_id == o.folder_id &&
          outputs == o.outputs &&
          argument == o.argument
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [script, folder_id, outputs, argument].hash
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
