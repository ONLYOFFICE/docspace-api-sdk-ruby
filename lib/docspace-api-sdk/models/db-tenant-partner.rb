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
  # The database tenant partner parameters.
  class DbTenantPartner < ApiModelBase
    # The tenant ID.
    attr_accessor :tenant_id

    # The partner ID.
    attr_accessor :partner_id

    # The affiliate ID.
    attr_accessor :affiliate_id

    # The tenant partner campaign.
    attr_accessor :campaign

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tenant_id' => :'tenantId',
        :'partner_id' => :'partnerId',
        :'affiliate_id' => :'affiliateId',
        :'campaign' => :'campaign'
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
        :'tenant_id' => :'Integer',
        :'partner_id' => :'String',
        :'affiliate_id' => :'String',
        :'campaign' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'partner_id',
        :'affiliate_id',
        :'campaign'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::DbTenantPartner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::DbTenantPartner`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tenant_id')
        self.tenant_id = attributes[:'tenant_id']
      end

      if attributes.key?(:'partner_id')
        self.partner_id = attributes[:'partner_id']
      end

      if attributes.key?(:'affiliate_id')
        self.affiliate_id = attributes[:'affiliate_id']
      end

      if attributes.key?(:'campaign')
        self.campaign = attributes[:'campaign']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@partner_id.nil? && @partner_id.to_s.length > 36
        invalid_properties.push('invalid value for "partner_id", the character length must be smaller than or equal to 36.')
      end

      if !@affiliate_id.nil? && @affiliate_id.to_s.length > 50
        invalid_properties.push('invalid value for "affiliate_id", the character length must be smaller than or equal to 50.')
      end

      if !@campaign.nil? && @campaign.to_s.length > 50
        invalid_properties.push('invalid value for "campaign", the character length must be smaller than or equal to 50.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@partner_id.nil? && @partner_id.to_s.length > 36
      return false if !@affiliate_id.nil? && @affiliate_id.to_s.length > 50
      return false if !@campaign.nil? && @campaign.to_s.length > 50
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] partner_id Value to be assigned
    def partner_id=(partner_id)
      if !partner_id.nil? && partner_id.to_s.length > 36
        fail ArgumentError, 'invalid value for "partner_id", the character length must be smaller than or equal to 36.'
      end

      @partner_id = partner_id
    end

    # Custom attribute writer method with validation
    # @param [Object] affiliate_id Value to be assigned
    def affiliate_id=(affiliate_id)
      if !affiliate_id.nil? && affiliate_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "affiliate_id", the character length must be smaller than or equal to 50.'
      end

      @affiliate_id = affiliate_id
    end

    # Custom attribute writer method with validation
    # @param [Object] campaign Value to be assigned
    def campaign=(campaign)
      if !campaign.nil? && campaign.to_s.length > 50
        fail ArgumentError, 'invalid value for "campaign", the character length must be smaller than or equal to 50.'
      end

      @campaign = campaign
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tenant_id == o.tenant_id &&
          partner_id == o.partner_id &&
          affiliate_id == o.affiliate_id &&
          campaign == o.campaign
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tenant_id, partner_id, affiliate_id, campaign].hash
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
