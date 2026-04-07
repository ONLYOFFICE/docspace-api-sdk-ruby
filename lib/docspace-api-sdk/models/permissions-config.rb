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
  # The permissions configuration parameters.
  class PermissionsConfig < ApiModelBase
    # Defines if the document can be commented or not.
    attr_accessor :comment

    # Defines if the chat functionality is enabled in the document or not.
    attr_accessor :chat

    # Defines if the document can be downloaded or only viewed or edited online.
    attr_accessor :download

    # Defines if the document can be edited or only viewed.
    attr_accessor :edit

    # Defines if the forms can be filled.
    attr_accessor :fill_forms

    # Defines if the filter can be applied globally (true) affecting all the other users,  or locally (false), i.e. for the current user only.
    attr_accessor :modify_filter

    # Defines if the Protection tab on the toolbar and the Protect button in the left menu are displayedor hidden.
    attr_accessor :protect

    # Defines if the document can be printed or not.
    attr_accessor :print

    # Defines if the document can be reviewed or not.
    attr_accessor :review

    # Defines if the content can be copied to the clipboard or not.
    attr_accessor :copy

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'comment' => :'comment',
        :'chat' => :'chat',
        :'download' => :'download',
        :'edit' => :'edit',
        :'fill_forms' => :'fillForms',
        :'modify_filter' => :'modifyFilter',
        :'protect' => :'protect',
        :'print' => :'print',
        :'review' => :'review',
        :'copy' => :'copy'
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
        :'comment' => :'Boolean',
        :'chat' => :'Boolean',
        :'download' => :'Boolean',
        :'edit' => :'Boolean',
        :'fill_forms' => :'Boolean',
        :'modify_filter' => :'Boolean',
        :'protect' => :'Boolean',
        :'print' => :'Boolean',
        :'review' => :'Boolean',
        :'copy' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::PermissionsConfig` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::PermissionsConfig`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'chat')
        self.chat = attributes[:'chat']
      end

      if attributes.key?(:'download')
        self.download = attributes[:'download']
      end

      if attributes.key?(:'edit')
        self.edit = attributes[:'edit']
      end

      if attributes.key?(:'fill_forms')
        self.fill_forms = attributes[:'fill_forms']
      end

      if attributes.key?(:'modify_filter')
        self.modify_filter = attributes[:'modify_filter']
      end

      if attributes.key?(:'protect')
        self.protect = attributes[:'protect']
      end

      if attributes.key?(:'print')
        self.print = attributes[:'print']
      end

      if attributes.key?(:'review')
        self.review = attributes[:'review']
      end

      if attributes.key?(:'copy')
        self.copy = attributes[:'copy']
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
          comment == o.comment &&
          chat == o.chat &&
          download == o.download &&
          edit == o.edit &&
          fill_forms == o.fill_forms &&
          modify_filter == o.modify_filter &&
          protect == o.protect &&
          print == o.print &&
          review == o.review &&
          copy == o.copy
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [comment, chat, download, edit, fill_forms, modify_filter, protect, print, review, copy].hash
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
