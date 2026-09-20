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
  # One background file operation of the caller, as it stood when the answer was built.
  class AiFileOperationDto < ApiModelBase
    # The identifier of the operation, the one to pass to `PUT api/2.0/files/fileops/terminate/{id}` to stop it.  Operations belong to the account that started them, so an identifier of somebody else is never listed here.
    attr_accessor :id

    # What the operation does with the entries, which also decides what else is reported: only a download fills  `url`, and a deletion leaves `files` and `folders` empty.
    attr_accessor :operation

    # How far the operation has come, from 0 to 100. Reaching 100 only means it stopped; whether it did what it was  asked for is told by `error`.
    attr_accessor :progress

    # The reason the operation could not finish its work, in the language of the request. Empty when nothing went  wrong, which is the only way to tell a successful operation from a failed one.
    attr_accessor :error

    # How many entries the operation has handled so far, written as a decimal number in a string. It counts items,  not percent, and stays behind `progress` on operations that walk into subfolders.
    attr_accessor :processed

    # Whether the operation has stopped running. A finished operation is reported once and then dropped, so the next  read of the operation list no longer contains it.
    attr_accessor :finished

    # The address the packed archive can be downloaded from once a bulk download has finished. Empty for every other  kind of operation.
    attr_accessor :url

    # The files the operation produced or moved, in the order it wrote them down. Empty while nothing has been  written yet and for a deletion, which reports no entries at all.
    attr_accessor :files

    # The folders the operation produced or moved, in the order it wrote them down. Empty while nothing has been  written yet and for a deletion.
    attr_accessor :folders

    # The state of the background task behind the operation, which tells a task that was cancelled or that crashed  from one that ran to its end.
    attr_accessor :status

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
        :'operation' => :'Operation',
        :'progress' => :'progress',
        :'error' => :'error',
        :'processed' => :'processed',
        :'finished' => :'finished',
        :'url' => :'url',
        :'files' => :'files',
        :'folders' => :'folders',
        :'status' => :'status'
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
        :'operation' => :'AiFileOperationType',
        :'progress' => :'Integer',
        :'error' => :'String',
        :'processed' => :'String',
        :'finished' => :'Boolean',
        :'url' => :'String',
        :'files' => :'Array<AiFileEntryBaseDto>',
        :'folders' => :'Array<AiFileEntryBaseDto>',
        :'status' => :'AiDistributedTaskStatus'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'id',
        :'error',
        :'processed',
        :'url',
        :'files',
        :'folders',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::AiFileOperationDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::AiFileOperationDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'operation')
        self.operation = attributes[:'operation']
      else
        self.operation = nil
      end

      if attributes.key?(:'progress')
        self.progress = attributes[:'progress']
      else
        self.progress = nil
      end

      if attributes.key?(:'error')
        self.error = attributes[:'error']
      else
        self.error = nil
      end

      if attributes.key?(:'processed')
        self.processed = attributes[:'processed']
      else
        self.processed = nil
      end

      if attributes.key?(:'finished')
        self.finished = attributes[:'finished']
      else
        self.finished = nil
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'files')
        if (value = attributes[:'files']).is_a?(Array)
          self.files = value
        end
      end

      if attributes.key?(:'folders')
        if (value = attributes[:'folders']).is_a?(Array)
          self.folders = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @operation.nil?
        invalid_properties.push('invalid value for "operation", operation cannot be nil.')
      end

      if @progress.nil?
        invalid_properties.push('invalid value for "progress", progress cannot be nil.')
      end

      if @finished.nil?
        invalid_properties.push('invalid value for "finished", finished cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @operation.nil?
      return false if @progress.nil?
      return false if @finished.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] operation Value to be assigned
    def operation=(operation)
      if operation.nil?
        fail ArgumentError, 'operation cannot be nil'
      end

      @operation = operation
    end

    # Custom attribute writer method with validation
    # @param [Object] progress Value to be assigned
    def progress=(progress)
      if progress.nil?
        fail ArgumentError, 'progress cannot be nil'
      end

      @progress = progress
    end

    # Custom attribute writer method with validation
    # @param [Object] finished Value to be assigned
    def finished=(finished)
      if finished.nil?
        fail ArgumentError, 'finished cannot be nil'
      end

      @finished = finished
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          operation == o.operation &&
          progress == o.progress &&
          error == o.error &&
          processed == o.processed &&
          finished == o.finished &&
          url == o.url &&
          files == o.files &&
          folders == o.folders &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, operation, progress, error, processed, finished, url, files, folders, status].hash
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
