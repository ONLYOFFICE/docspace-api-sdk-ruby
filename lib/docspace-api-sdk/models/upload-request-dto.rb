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
  # The request parameters for uploading a file.
  class UploadRequestDto < ApiModelBase
    # The file to be uploaded.
    attr_accessor :file

    attr_accessor :content_type

    attr_accessor :content_disposition

    # The list of files when specified as multipart/form-data.
    attr_accessor :files

    # Specifies whether to create the new file if it already exists or not.
    attr_accessor :create_new_if_exist

    # Specifies whether to upload documents in the original formats as well or not.
    attr_accessor :store_original_file_flag

    # Specifies whether to keep the file converting status or not.
    attr_accessor :keep_convert_status

    # The request input stream.
    attr_accessor :stream

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file' => :'file',
        :'content_type' => :'contentType',
        :'content_disposition' => :'contentDisposition',
        :'files' => :'files',
        :'create_new_if_exist' => :'createNewIfExist',
        :'store_original_file_flag' => :'storeOriginalFileFlag',
        :'keep_convert_status' => :'keepConvertStatus',
        :'stream' => :'stream'
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
        :'file' => :'File',
        :'content_type' => :'ContentType',
        :'content_disposition' => :'ContentDisposition',
        :'files' => :'Array<File>',
        :'create_new_if_exist' => :'Boolean',
        :'store_original_file_flag' => :'Boolean',
        :'keep_convert_status' => :'Boolean',
        :'stream' => :'File'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'file',
        :'files',
        :'store_original_file_flag',
        :'stream'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::UploadRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::UploadRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'file')
        self.file = attributes[:'file']
      end

      if attributes.key?(:'content_type')
        self.content_type = attributes[:'content_type']
      end

      if attributes.key?(:'content_disposition')
        self.content_disposition = attributes[:'content_disposition']
      end

      if attributes.key?(:'files')
        if (value = attributes[:'files']).is_a?(Array)
          self.files = value
        end
      end

      if attributes.key?(:'create_new_if_exist')
        self.create_new_if_exist = attributes[:'create_new_if_exist']
      end

      if attributes.key?(:'store_original_file_flag')
        self.store_original_file_flag = attributes[:'store_original_file_flag']
      end

      if attributes.key?(:'keep_convert_status')
        self.keep_convert_status = attributes[:'keep_convert_status']
      end

      if attributes.key?(:'stream')
        self.stream = attributes[:'stream']
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
          file == o.file &&
          content_type == o.content_type &&
          content_disposition == o.content_disposition &&
          files == o.files &&
          create_new_if_exist == o.create_new_if_exist &&
          store_original_file_flag == o.store_original_file_flag &&
          keep_convert_status == o.keep_convert_status &&
          stream == o.stream
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [file, content_type, content_disposition, files, create_new_if_exist, store_original_file_flag, keep_convert_status, stream].hash
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
