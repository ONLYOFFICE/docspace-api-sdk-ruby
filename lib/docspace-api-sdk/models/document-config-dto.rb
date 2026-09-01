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
  # The document config parameters.
  class DocumentConfigDto < ApiModelBase
    # The file type of the document.
    attr_accessor :file_type

    # The configuration information of the document.
    attr_accessor :info

    # Specifies if the documnet is linked for current user.
    attr_accessor :is_linked_for_me

    # The document key.
    attr_accessor :key

    # The document permissions.
    attr_accessor :permissions

    # The shared link parameter of the document.
    attr_accessor :shared_link_param

    # The shared link key of the document.
    attr_accessor :shared_link_key

    # The reference data of the document.
    attr_accessor :reference_data

    # The document title.
    attr_accessor :title

    # The document url.
    attr_accessor :url

    # Indicates whether this is a form.
    attr_accessor :is_form

    # The options of the document.
    attr_accessor :options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_type' => :'fileType',
        :'info' => :'info',
        :'is_linked_for_me' => :'isLinkedForMe',
        :'key' => :'key',
        :'permissions' => :'permissions',
        :'shared_link_param' => :'sharedLinkParam',
        :'shared_link_key' => :'sharedLinkKey',
        :'reference_data' => :'referenceData',
        :'title' => :'title',
        :'url' => :'url',
        :'is_form' => :'isForm',
        :'options' => :'options'
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
        :'file_type' => :'String',
        :'info' => :'InfoConfigDto',
        :'is_linked_for_me' => :'Boolean',
        :'key' => :'String',
        :'permissions' => :'PermissionsConfig',
        :'shared_link_param' => :'String',
        :'shared_link_key' => :'String',
        :'reference_data' => :'FileReferenceData',
        :'title' => :'String',
        :'url' => :'String',
        :'is_form' => :'Boolean',
        :'options' => :'Options'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'file_type',
        :'key',
        :'shared_link_param',
        :'shared_link_key',
        :'title',
        :'url',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::DocumentConfigDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::DocumentConfigDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'file_type')
        self.file_type = attributes[:'file_type']
      end

      if attributes.key?(:'info')
        self.info = attributes[:'info']
      end

      if attributes.key?(:'is_linked_for_me')
        self.is_linked_for_me = attributes[:'is_linked_for_me']
      end

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.key?(:'permissions')
        self.permissions = attributes[:'permissions']
      end

      if attributes.key?(:'shared_link_param')
        self.shared_link_param = attributes[:'shared_link_param']
      end

      if attributes.key?(:'shared_link_key')
        self.shared_link_key = attributes[:'shared_link_key']
      end

      if attributes.key?(:'reference_data')
        self.reference_data = attributes[:'reference_data']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'is_form')
        self.is_form = attributes[:'is_form']
      end

      if attributes.key?(:'options')
        self.options = attributes[:'options']
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
          file_type == o.file_type &&
          info == o.info &&
          is_linked_for_me == o.is_linked_for_me &&
          key == o.key &&
          permissions == o.permissions &&
          shared_link_param == o.shared_link_param &&
          shared_link_key == o.shared_link_key &&
          reference_data == o.reference_data &&
          title == o.title &&
          url == o.url &&
          is_form == o.is_form &&
          options == o.options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [file_type, info, is_linked_for_me, key, permissions, shared_link_param, shared_link_key, reference_data, title, url, is_form, options].hash
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
