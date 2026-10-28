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
  # The record of one portal: its name, owner, language, time zone and lifecycle state.
  class TenantDto < ApiModelBase
    # The partner the portal was signed up through, empty for a portal that came in directly. It is bookkeeping  for the vendor and has no bearing on what the portal may do.
    attr_accessor :affiliate_id

    # The portal's own name within the installation, which together with the installation's base domain forms  the address it is reached at. A caller without the portal-settings right gets `tenantId` alone, so an  empty value here is the sign that the rest of this object was withheld rather than unset.
    attr_accessor :tenant_alias

    # Whether telephony is switched on for the portal. It is carried over from portal registration and stays  `false` on a DocSpace portal, where the feature does not exist.
    attr_accessor :calls

    # The marketing campaign the portal was signed up under, empty for a portal that came in outside one. Like  `affiliateId`, it is bookkeeping only.
    attr_accessor :campaign

    # When the portal was created, in UTC rather than in the portal time zone.
    attr_accessor :creation_date_time

    # The data-centre region written on the portal record itself, as opposed to `region`, which is looked up  from the hosting service. It is empty on a server installation.
    attr_accessor :hosted_region

    # The numeric identifier of the portal inside the installation. It is the one field every caller gets,  whatever their rights.
    attr_accessor :tenant_id

    # The line of business chosen when the portal was created. It only steers what the vendor suggests and  restricts nothing.
    attr_accessor :industry

    # The default language of the portal as a culture name, the same value `GET api/2.0/settings` reports as  `culture`. A member may have a language of their own, which this does not reflect.
    attr_accessor :language

    # When any field of this record last changed, in UTC. It does not move when portal settings outside this  record are changed.
    attr_accessor :last_modified

    # The custom domain the portal answers on in addition to its own address, empty when none has been set up.
    attr_accessor :mapped_domain

    # The portal title as shown to people, which is what `GET api/2.0/settings` returns as  `greetingSettings`. It is free text, unlike `tenantAlias`, and empty until someone sets it.
    attr_accessor :name

    # The portal owner, the one account that cannot be removed or demoted.  `PUT api/2.0/settings/owner` hands the role over.
    attr_accessor :owner_id

    # The portal's identifier in the billing system, empty for a portal that has never been billed. The  subscription itself is read with `GET api/2.0/portal/tariff`.
    attr_accessor :payment_id

    # Whether the owner agreed to receive the vendor's newsletter. Despite the name it does not mark the portal  as a spammer and affects nothing but marketing mail.
    attr_accessor :spam

    # The lifecycle state of the portal. Anything other than active means most operations are refused for the  moment, because the portal is being transferred, restored, encrypted or removed.
    attr_accessor :status

    # When `status` last changed, in UTC. For a portal pending removal it is the moment the countdown to  deletion started.
    attr_accessor :status_change_date

    # The portal time zone, which is the zone the dates this API calls portal time are expressed in. It may be  stored as a Windows identifier here, while `GET api/2.0/settings` always reports the IANA form.
    attr_accessor :time_zone

    # The mail domains a new member may register or be invited from without confirming the address. It is empty  whenever `trustedDomainsType` is not `Custom`.
    attr_accessor :trusted_domains

    # The same domains as the single stored string they are kept in, separated by commas. Read  `trustedDomains` instead; this one exists because it is what the record holds.
    attr_accessor :trusted_domains_raw

    # How the mail domains are applied: no domain trusted, every domain trusted, or only the listed ones. Only  the last of the three makes `trustedDomains` meaningful.
    attr_accessor :trusted_domains_type

    # The identifier of the portal version the installation pins this portal to, which is an internal number  and not the product version string that `GET api/2.0/settings` reports as `version`.
    attr_accessor :version

    # When `version` last changed, in UTC. It stays at its zero value on a portal whose version has never been  switched.
    attr_accessor :version_changed

    # The data-centre region the portal is actually served from, looked up from the hosting service. It is  empty on a server installation and also whenever the installation's portal cache is switched off, so an  empty value does not mean the portal has no region - `hostedRegion` is the value from the record itself.
    attr_accessor :region

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
        :'affiliate_id' => :'affiliateId',
        :'tenant_alias' => :'tenantAlias',
        :'calls' => :'calls',
        :'campaign' => :'campaign',
        :'creation_date_time' => :'creationDateTime',
        :'hosted_region' => :'hostedRegion',
        :'tenant_id' => :'tenantId',
        :'industry' => :'industry',
        :'language' => :'language',
        :'last_modified' => :'lastModified',
        :'mapped_domain' => :'mappedDomain',
        :'name' => :'name',
        :'owner_id' => :'ownerId',
        :'payment_id' => :'paymentId',
        :'spam' => :'spam',
        :'status' => :'status',
        :'status_change_date' => :'statusChangeDate',
        :'time_zone' => :'timeZone',
        :'trusted_domains' => :'trustedDomains',
        :'trusted_domains_raw' => :'trustedDomainsRaw',
        :'trusted_domains_type' => :'trustedDomainsType',
        :'version' => :'version',
        :'version_changed' => :'versionChanged',
        :'region' => :'region'
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
        :'affiliate_id' => :'String',
        :'tenant_alias' => :'String',
        :'calls' => :'Boolean',
        :'campaign' => :'String',
        :'creation_date_time' => :'Time',
        :'hosted_region' => :'String',
        :'tenant_id' => :'Integer',
        :'industry' => :'TenantIndustry',
        :'language' => :'String',
        :'last_modified' => :'Time',
        :'mapped_domain' => :'String',
        :'name' => :'String',
        :'owner_id' => :'String',
        :'payment_id' => :'String',
        :'spam' => :'Boolean',
        :'status' => :'TenantStatus',
        :'status_change_date' => :'Time',
        :'time_zone' => :'String',
        :'trusted_domains' => :'Array<String>',
        :'trusted_domains_raw' => :'String',
        :'trusted_domains_type' => :'TenantTrustedDomainsType',
        :'version' => :'Integer',
        :'version_changed' => :'Time',
        :'region' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'affiliate_id',
        :'tenant_alias',
        :'campaign',
        :'hosted_region',
        :'language',
        :'mapped_domain',
        :'name',
        :'payment_id',
        :'time_zone',
        :'trusted_domains',
        :'trusted_domains_raw',
        :'region'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::TenantDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::TenantDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'affiliate_id')
        self.affiliate_id = attributes[:'affiliate_id']
      end

      if attributes.key?(:'tenant_alias')
        self.tenant_alias = attributes[:'tenant_alias']
      end

      if attributes.key?(:'calls')
        self.calls = attributes[:'calls']
      end

      if attributes.key?(:'campaign')
        self.campaign = attributes[:'campaign']
      end

      if attributes.key?(:'creation_date_time')
        self.creation_date_time = attributes[:'creation_date_time']
      end

      if attributes.key?(:'hosted_region')
        self.hosted_region = attributes[:'hosted_region']
      end

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.key?(:'industry')
        self.industry = attributes[:'industry']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.key?(:'last_modified')
        self.last_modified = attributes[:'last_modified']
      end

      if attributes.key?(:'mapped_domain')
        self.mapped_domain = attributes[:'mapped_domain']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'owner_id')
        self.owner_id = attributes[:'owner_id']
      end

      if attributes.key?(:'payment_id')
        self.payment_id = attributes[:'payment_id']
      end

      if attributes.key?(:'spam')
        self.spam = attributes[:'spam']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'status_change_date')
        self.status_change_date = attributes[:'status_change_date']
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end

      if attributes.key?(:'trusted_domains')
        if (value = attributes[:'trusted_domains']).is_a?(Array)
          self.trusted_domains = value
        end
      end

      if attributes.key?(:'trusted_domains_raw')
        self.trusted_domains_raw = attributes[:'trusted_domains_raw']
      end

      if attributes.key?(:'trusted_domains_type')
        self.trusted_domains_type = attributes[:'trusted_domains_type']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'version_changed')
        self.version_changed = attributes[:'version_changed']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
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
          affiliate_id == o.affiliate_id &&
          tenant_alias == o.tenant_alias &&
          calls == o.calls &&
          campaign == o.campaign &&
          creation_date_time == o.creation_date_time &&
          hosted_region == o.hosted_region &&
          tenant_id == o.tenant_id &&
          industry == o.industry &&
          language == o.language &&
          last_modified == o.last_modified &&
          mapped_domain == o.mapped_domain &&
          name == o.name &&
          owner_id == o.owner_id &&
          payment_id == o.payment_id &&
          spam == o.spam &&
          status == o.status &&
          status_change_date == o.status_change_date &&
          time_zone == o.time_zone &&
          trusted_domains == o.trusted_domains &&
          trusted_domains_raw == o.trusted_domains_raw &&
          trusted_domains_type == o.trusted_domains_type &&
          version == o.version &&
          version_changed == o.version_changed &&
          region == o.region
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [affiliate_id, tenant_alias, calls, campaign, creation_date_time, hosted_region, tenant_id, industry, language, last_modified, mapped_domain, name, owner_id, payment_id, spam, status, status_change_date, time_zone, trusted_domains, trusted_domains_raw, trusted_domains_type, version, version_changed, region].hash
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
