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
  # The file sharing information and access rights.
  class FileShareDto < ApiModelBase
    attr_accessor :access

    # The user who has the access to the specified file.
    attr_accessor :shared_to

    attr_accessor :shared_to_user

    attr_accessor :shared_to_group

    attr_accessor :shared_link

    # Specifies if the access right is locked or not.
    attr_accessor :is_locked

    # Specifies if the user is an owner of the specified file or not.
    attr_accessor :is_owner

    # Specifies if the user can edit the access to the specified file or not.
    attr_accessor :can_edit_access

    # Indicates whether internal editing permissions are granted.
    attr_accessor :can_edit_internal

    # Determines whether the user has permission to modify the deny download setting for the file share.
    attr_accessor :can_edit_deny_download

    # Indicates whether the expiration date of access permissions can be edited.
    attr_accessor :can_edit_expiration_date

    # Specifies whether the file sharing access can be revoked by the current user.
    attr_accessor :can_revoke

    attr_accessor :subject_type

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
        :'access' => :'access',
        :'shared_to' => :'sharedTo',
        :'shared_to_user' => :'sharedToUser',
        :'shared_to_group' => :'sharedToGroup',
        :'shared_link' => :'sharedLink',
        :'is_locked' => :'isLocked',
        :'is_owner' => :'isOwner',
        :'can_edit_access' => :'canEditAccess',
        :'can_edit_internal' => :'canEditInternal',
        :'can_edit_deny_download' => :'canEditDenyDownload',
        :'can_edit_expiration_date' => :'canEditExpirationDate',
        :'can_revoke' => :'canRevoke',
        :'subject_type' => :'subjectType'
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
        :'access' => :'FileShare',
        :'shared_to' => :'Object',
        :'shared_to_user' => :'EmployeeFullDto',
        :'shared_to_group' => :'GroupSummaryDto',
        :'shared_link' => :'FileShareLink',
        :'is_locked' => :'Boolean',
        :'is_owner' => :'Boolean',
        :'can_edit_access' => :'Boolean',
        :'can_edit_internal' => :'Boolean',
        :'can_edit_deny_download' => :'Boolean',
        :'can_edit_expiration_date' => :'Boolean',
        :'can_revoke' => :'Boolean',
        :'subject_type' => :'SubjectType'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'shared_to',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::FileShareDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::FileShareDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'access')
        self.access = attributes[:'access']
      end

      if attributes.key?(:'shared_to')
        self.shared_to = attributes[:'shared_to']
      end

      if attributes.key?(:'shared_to_user')
        self.shared_to_user = attributes[:'shared_to_user']
      end

      if attributes.key?(:'shared_to_group')
        self.shared_to_group = attributes[:'shared_to_group']
      end

      if attributes.key?(:'shared_link')
        self.shared_link = attributes[:'shared_link']
      end

      if attributes.key?(:'is_locked')
        self.is_locked = attributes[:'is_locked']
      else
        self.is_locked = nil
      end

      if attributes.key?(:'is_owner')
        self.is_owner = attributes[:'is_owner']
      else
        self.is_owner = nil
      end

      if attributes.key?(:'can_edit_access')
        self.can_edit_access = attributes[:'can_edit_access']
      else
        self.can_edit_access = nil
      end

      if attributes.key?(:'can_edit_internal')
        self.can_edit_internal = attributes[:'can_edit_internal']
      else
        self.can_edit_internal = nil
      end

      if attributes.key?(:'can_edit_deny_download')
        self.can_edit_deny_download = attributes[:'can_edit_deny_download']
      else
        self.can_edit_deny_download = nil
      end

      if attributes.key?(:'can_edit_expiration_date')
        self.can_edit_expiration_date = attributes[:'can_edit_expiration_date']
      else
        self.can_edit_expiration_date = nil
      end

      if attributes.key?(:'can_revoke')
        self.can_revoke = attributes[:'can_revoke']
      else
        self.can_revoke = nil
      end

      if attributes.key?(:'subject_type')
        self.subject_type = attributes[:'subject_type']
      else
        self.subject_type = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @is_locked.nil?
        invalid_properties.push('invalid value for "is_locked", is_locked cannot be nil.')
      end

      if @is_owner.nil?
        invalid_properties.push('invalid value for "is_owner", is_owner cannot be nil.')
      end

      if @can_edit_access.nil?
        invalid_properties.push('invalid value for "can_edit_access", can_edit_access cannot be nil.')
      end

      if @can_edit_internal.nil?
        invalid_properties.push('invalid value for "can_edit_internal", can_edit_internal cannot be nil.')
      end

      if @can_edit_deny_download.nil?
        invalid_properties.push('invalid value for "can_edit_deny_download", can_edit_deny_download cannot be nil.')
      end

      if @can_edit_expiration_date.nil?
        invalid_properties.push('invalid value for "can_edit_expiration_date", can_edit_expiration_date cannot be nil.')
      end

      if @can_revoke.nil?
        invalid_properties.push('invalid value for "can_revoke", can_revoke cannot be nil.')
      end

      if @subject_type.nil?
        invalid_properties.push('invalid value for "subject_type", subject_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @is_locked.nil?
      return false if @is_owner.nil?
      return false if @can_edit_access.nil?
      return false if @can_edit_internal.nil?
      return false if @can_edit_deny_download.nil?
      return false if @can_edit_expiration_date.nil?
      return false if @can_revoke.nil?
      return false if @subject_type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] is_locked Value to be assigned
    def is_locked=(is_locked)
      if is_locked.nil?
        fail ArgumentError, 'is_locked cannot be nil'
      end

      @is_locked = is_locked
    end

    # Custom attribute writer method with validation
    # @param [Object] is_owner Value to be assigned
    def is_owner=(is_owner)
      if is_owner.nil?
        fail ArgumentError, 'is_owner cannot be nil'
      end

      @is_owner = is_owner
    end

    # Custom attribute writer method with validation
    # @param [Object] can_edit_access Value to be assigned
    def can_edit_access=(can_edit_access)
      if can_edit_access.nil?
        fail ArgumentError, 'can_edit_access cannot be nil'
      end

      @can_edit_access = can_edit_access
    end

    # Custom attribute writer method with validation
    # @param [Object] can_edit_internal Value to be assigned
    def can_edit_internal=(can_edit_internal)
      if can_edit_internal.nil?
        fail ArgumentError, 'can_edit_internal cannot be nil'
      end

      @can_edit_internal = can_edit_internal
    end

    # Custom attribute writer method with validation
    # @param [Object] can_edit_deny_download Value to be assigned
    def can_edit_deny_download=(can_edit_deny_download)
      if can_edit_deny_download.nil?
        fail ArgumentError, 'can_edit_deny_download cannot be nil'
      end

      @can_edit_deny_download = can_edit_deny_download
    end

    # Custom attribute writer method with validation
    # @param [Object] can_edit_expiration_date Value to be assigned
    def can_edit_expiration_date=(can_edit_expiration_date)
      if can_edit_expiration_date.nil?
        fail ArgumentError, 'can_edit_expiration_date cannot be nil'
      end

      @can_edit_expiration_date = can_edit_expiration_date
    end

    # Custom attribute writer method with validation
    # @param [Object] can_revoke Value to be assigned
    def can_revoke=(can_revoke)
      if can_revoke.nil?
        fail ArgumentError, 'can_revoke cannot be nil'
      end

      @can_revoke = can_revoke
    end

    # Custom attribute writer method with validation
    # @param [Object] subject_type Value to be assigned
    def subject_type=(subject_type)
      if subject_type.nil?
        fail ArgumentError, 'subject_type cannot be nil'
      end

      @subject_type = subject_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          access == o.access &&
          shared_to == o.shared_to &&
          shared_to_user == o.shared_to_user &&
          shared_to_group == o.shared_to_group &&
          shared_link == o.shared_link &&
          is_locked == o.is_locked &&
          is_owner == o.is_owner &&
          can_edit_access == o.can_edit_access &&
          can_edit_internal == o.can_edit_internal &&
          can_edit_deny_download == o.can_edit_deny_download &&
          can_edit_expiration_date == o.can_edit_expiration_date &&
          can_revoke == o.can_revoke &&
          subject_type == o.subject_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [access, shared_to, shared_to_user, shared_to_group, shared_link, is_locked, is_owner, can_edit_access, can_edit_internal, can_edit_deny_download, can_edit_expiration_date, can_revoke, subject_type].hash
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
