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
  # The backup schedule parameters.
  class ScheduleDto < ApiModelBase
    # The backup storage type.
    attr_accessor :storage_type

    # The backup storage parameters.
    attr_accessor :storage_params

    # The backup cron parameters.
    attr_accessor :cron_params

    # The maximum number of the stored backup copies.
    attr_accessor :backups_stored

    # The date and time when the last backup was reated.
    attr_accessor :last_backup_time

    # Specifies if a dump will be created or not.
    attr_accessor :dump

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
        :'storage_type' => :'storageType',
        :'storage_params' => :'storageParams',
        :'cron_params' => :'cronParams',
        :'backups_stored' => :'backupsStored',
        :'last_backup_time' => :'lastBackupTime',
        :'dump' => :'dump'
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
        :'storage_type' => :'BackupStorageType',
        :'storage_params' => :'Hash<String, String>',
        :'cron_params' => :'CronParams',
        :'backups_stored' => :'Integer',
        :'last_backup_time' => :'Time',
        :'dump' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'backups_stored',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ScheduleDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ScheduleDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'storage_type')
        self.storage_type = attributes[:'storage_type']
      else
        self.storage_type = nil
      end

      if attributes.key?(:'storage_params')
        if (value = attributes[:'storage_params']).is_a?(Hash)
          self.storage_params = value
        end
      else
        self.storage_params = nil
      end

      if attributes.key?(:'cron_params')
        self.cron_params = attributes[:'cron_params']
      else
        self.cron_params = nil
      end

      if attributes.key?(:'backups_stored')
        self.backups_stored = attributes[:'backups_stored']
      end

      if attributes.key?(:'last_backup_time')
        self.last_backup_time = attributes[:'last_backup_time']
      else
        self.last_backup_time = nil
      end

      if attributes.key?(:'dump')
        self.dump = attributes[:'dump']
      else
        self.dump = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @storage_type.nil?
        invalid_properties.push('invalid value for "storage_type", storage_type cannot be nil.')
      end

      if @storage_params.nil?
        invalid_properties.push('invalid value for "storage_params", storage_params cannot be nil.')
      end

      if @cron_params.nil?
        invalid_properties.push('invalid value for "cron_params", cron_params cannot be nil.')
      end

      if @last_backup_time.nil?
        invalid_properties.push('invalid value for "last_backup_time", last_backup_time cannot be nil.')
      end

      if @dump.nil?
        invalid_properties.push('invalid value for "dump", dump cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @storage_type.nil?
      return false if @storage_params.nil?
      return false if @cron_params.nil?
      return false if @last_backup_time.nil?
      return false if @dump.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] storage_type Value to be assigned
    def storage_type=(storage_type)
      if storage_type.nil?
        fail ArgumentError, 'storage_type cannot be nil'
      end

      @storage_type = storage_type
    end

    # Custom attribute writer method with validation
    # @param [Object] storage_params Value to be assigned
    def storage_params=(storage_params)
      if storage_params.nil?
        fail ArgumentError, 'storage_params cannot be nil'
      end

      @storage_params = storage_params
    end

    # Custom attribute writer method with validation
    # @param [Object] cron_params Value to be assigned
    def cron_params=(cron_params)
      if cron_params.nil?
        fail ArgumentError, 'cron_params cannot be nil'
      end

      @cron_params = cron_params
    end

    # Custom attribute writer method with validation
    # @param [Object] last_backup_time Value to be assigned
    def last_backup_time=(last_backup_time)
      if last_backup_time.nil?
        fail ArgumentError, 'last_backup_time cannot be nil'
      end

      @last_backup_time = last_backup_time
    end

    # Custom attribute writer method with validation
    # @param [Object] dump Value to be assigned
    def dump=(dump)
      if dump.nil?
        fail ArgumentError, 'dump cannot be nil'
      end

      @dump = dump
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          storage_type == o.storage_type &&
          storage_params == o.storage_params &&
          cron_params == o.cron_params &&
          backups_stored == o.backups_stored &&
          last_backup_time == o.last_backup_time &&
          dump == o.dump
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [storage_type, storage_params, cron_params, backups_stored, last_backup_time, dump].hash
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
