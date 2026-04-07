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
  # The database tenant parameters.
  class DbTenant < ApiModelBase
    # The tenant ID.
    attr_accessor :id

    # The tenant name.
    attr_accessor :name

    # The tenant alias.
    attr_accessor :_alias

    # Mapped domain
    attr_accessor :mapped_domain

    # The tenant version.
    attr_accessor :version

    # The Version_changed field.
    attr_accessor :version_changed

    # The date and time when the version was changed.
    attr_accessor :version_changed

    # The tenant language.
    attr_accessor :language

    # The tenant time zone.
    attr_accessor :time_zone

    # The tenant trusted domains raw.
    attr_accessor :trusted_domains_raw

    attr_accessor :trusted_domains_enabled

    attr_accessor :status

    # The date and time when the tenant status was changed.
    attr_accessor :status_changed

    # The hacked date and time when the tenant status was changed.
    attr_accessor :status_changed_hack

    # The tenant creation date.
    attr_accessor :creation_date_time

    # The tenant owner ID.
    attr_accessor :owner_id

    # The tenant payment ID.
    attr_accessor :payment_id

    attr_accessor :industry

    # The date and time when the tenant was last modified.
    attr_accessor :last_modified

    # Specifies if the calls are available for the current tenant or not.
    attr_accessor :calls

    attr_accessor :partner

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
        :'name' => :'name',
        :'_alias' => :'alias',
        :'mapped_domain' => :'mappedDomain',
        :'version' => :'version',
        :'version_changed' => :'version_Changed',
        :'version_changed' => :'versionChanged',
        :'language' => :'language',
        :'time_zone' => :'timeZone',
        :'trusted_domains_raw' => :'trustedDomainsRaw',
        :'trusted_domains_enabled' => :'trustedDomainsEnabled',
        :'status' => :'status',
        :'status_changed' => :'statusChanged',
        :'status_changed_hack' => :'statusChangedHack',
        :'creation_date_time' => :'creationDateTime',
        :'owner_id' => :'ownerId',
        :'payment_id' => :'paymentId',
        :'industry' => :'industry',
        :'last_modified' => :'lastModified',
        :'calls' => :'calls',
        :'partner' => :'partner'
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
        :'id' => :'Integer',
        :'name' => :'String',
        :'_alias' => :'String',
        :'mapped_domain' => :'String',
        :'version' => :'Integer',
        :'version_changed' => :'Time',
        :'version_changed' => :'Time',
        :'language' => :'String',
        :'time_zone' => :'String',
        :'trusted_domains_raw' => :'String',
        :'trusted_domains_enabled' => :'TenantTrustedDomainsType',
        :'status' => :'TenantStatus',
        :'status_changed' => :'Time',
        :'status_changed_hack' => :'Time',
        :'creation_date_time' => :'Time',
        :'owner_id' => :'String',
        :'payment_id' => :'String',
        :'industry' => :'TenantIndustry',
        :'last_modified' => :'Time',
        :'calls' => :'Boolean',
        :'partner' => :'DbTenantPartner'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'_alias',
        :'mapped_domain',
        :'version_changed',
        :'language',
        :'time_zone',
        :'trusted_domains_raw',
        :'status_changed',
        :'owner_id',
        :'payment_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::DbTenant` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::DbTenant`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'_alias')
        self._alias = attributes[:'_alias']
      end

      if attributes.key?(:'mapped_domain')
        self.mapped_domain = attributes[:'mapped_domain']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'version_changed')
        self.version_changed = attributes[:'version_changed']
      end

      if attributes.key?(:'version_changed')
        self.version_changed = attributes[:'version_changed']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end

      if attributes.key?(:'trusted_domains_raw')
        self.trusted_domains_raw = attributes[:'trusted_domains_raw']
      end

      if attributes.key?(:'trusted_domains_enabled')
        self.trusted_domains_enabled = attributes[:'trusted_domains_enabled']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'status_changed')
        self.status_changed = attributes[:'status_changed']
      end

      if attributes.key?(:'status_changed_hack')
        self.status_changed_hack = attributes[:'status_changed_hack']
      end

      if attributes.key?(:'creation_date_time')
        self.creation_date_time = attributes[:'creation_date_time']
      end

      if attributes.key?(:'owner_id')
        self.owner_id = attributes[:'owner_id']
      end

      if attributes.key?(:'payment_id')
        self.payment_id = attributes[:'payment_id']
      end

      if attributes.key?(:'industry')
        self.industry = attributes[:'industry']
      end

      if attributes.key?(:'last_modified')
        self.last_modified = attributes[:'last_modified']
      end

      if attributes.key?(:'calls')
        self.calls = attributes[:'calls']
      end

      if attributes.key?(:'partner')
        self.partner = attributes[:'partner']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 255
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 255.')
      end

      if !@_alias.nil? && @_alias.to_s.length > 100
        invalid_properties.push('invalid value for "_alias", the character length must be smaller than or equal to 100.')
      end

      if !@mapped_domain.nil? && @mapped_domain.to_s.length > 100
        invalid_properties.push('invalid value for "mapped_domain", the character length must be smaller than or equal to 100.')
      end

      if !@language.nil? && @language.to_s.length > 10
        invalid_properties.push('invalid value for "language", the character length must be smaller than or equal to 10.')
      end

      if !@time_zone.nil? && @time_zone.to_s.length > 50
        invalid_properties.push('invalid value for "time_zone", the character length must be smaller than or equal to 50.')
      end

      if !@trusted_domains_raw.nil? && @trusted_domains_raw.to_s.length > 1024
        invalid_properties.push('invalid value for "trusted_domains_raw", the character length must be smaller than or equal to 1024.')
      end

      if !@payment_id.nil? && @payment_id.to_s.length > 38
        invalid_properties.push('invalid value for "payment_id", the character length must be smaller than or equal to 38.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@name.nil? && @name.to_s.length > 255
      return false if !@_alias.nil? && @_alias.to_s.length > 100
      return false if !@mapped_domain.nil? && @mapped_domain.to_s.length > 100
      return false if !@language.nil? && @language.to_s.length > 10
      return false if !@time_zone.nil? && @time_zone.to_s.length > 50
      return false if !@trusted_domains_raw.nil? && @trusted_domains_raw.to_s.length > 1024
      return false if !@payment_id.nil? && @payment_id.to_s.length > 38
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 255
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 255.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] _alias Value to be assigned
    def _alias=(_alias)
      if !_alias.nil? && _alias.to_s.length > 100
        fail ArgumentError, 'invalid value for "_alias", the character length must be smaller than or equal to 100.'
      end

      @_alias = _alias
    end

    # Custom attribute writer method with validation
    # @param [Object] mapped_domain Value to be assigned
    def mapped_domain=(mapped_domain)
      if !mapped_domain.nil? && mapped_domain.to_s.length > 100
        fail ArgumentError, 'invalid value for "mapped_domain", the character length must be smaller than or equal to 100.'
      end

      @mapped_domain = mapped_domain
    end

    # Custom attribute writer method with validation
    # @param [Object] language Value to be assigned
    def language=(language)
      if !language.nil? && language.to_s.length > 10
        fail ArgumentError, 'invalid value for "language", the character length must be smaller than or equal to 10.'
      end

      @language = language
    end

    # Custom attribute writer method with validation
    # @param [Object] time_zone Value to be assigned
    def time_zone=(time_zone)
      if !time_zone.nil? && time_zone.to_s.length > 50
        fail ArgumentError, 'invalid value for "time_zone", the character length must be smaller than or equal to 50.'
      end

      @time_zone = time_zone
    end

    # Custom attribute writer method with validation
    # @param [Object] trusted_domains_raw Value to be assigned
    def trusted_domains_raw=(trusted_domains_raw)
      if !trusted_domains_raw.nil? && trusted_domains_raw.to_s.length > 1024
        fail ArgumentError, 'invalid value for "trusted_domains_raw", the character length must be smaller than or equal to 1024.'
      end

      @trusted_domains_raw = trusted_domains_raw
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_id Value to be assigned
    def payment_id=(payment_id)
      if !payment_id.nil? && payment_id.to_s.length > 38
        fail ArgumentError, 'invalid value for "payment_id", the character length must be smaller than or equal to 38.'
      end

      @payment_id = payment_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          _alias == o._alias &&
          mapped_domain == o.mapped_domain &&
          version == o.version &&
          version_changed == o.version_changed &&
          version_changed == o.version_changed &&
          language == o.language &&
          time_zone == o.time_zone &&
          trusted_domains_raw == o.trusted_domains_raw &&
          trusted_domains_enabled == o.trusted_domains_enabled &&
          status == o.status &&
          status_changed == o.status_changed &&
          status_changed_hack == o.status_changed_hack &&
          creation_date_time == o.creation_date_time &&
          owner_id == o.owner_id &&
          payment_id == o.payment_id &&
          industry == o.industry &&
          last_modified == o.last_modified &&
          calls == o.calls &&
          partner == o.partner
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, _alias, mapped_domain, version, version_changed, version_changed, language, time_zone, trusted_domains_raw, trusted_domains_enabled, status, status_changed, status_changed_hack, creation_date_time, owner_id, payment_id, industry, last_modified, calls, partner].hash
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
