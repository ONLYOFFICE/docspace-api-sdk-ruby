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
  # The vendor details of the installation in the shape the licensor listing and the reset of the company details  return, with the licensor flag spelled `IsLicensor`.
  class LicensorDetailsDto < ApiModelBase
    # The vendor name the About page shows and the letters sign off with. Until details are saved it holds  whatever the installation ships as its built-in vendor, and it is empty on an installation that ships none.
    attr_accessor :company_name

    # The address the vendor name links to, as an absolute URL with its scheme. Empty under the same conditions  as `companyName`.
    attr_accessor :site

    # The mailbox the About page offers for reaching the vendor. It is not the portal's own support address, and  it is empty under the same conditions as `companyName`.
    attr_accessor :email

    # The postal address of the vendor as one free-form line, in the shape it was saved in - no structure is  imposed on it.
    attr_accessor :address

    # The telephone number of the vendor in the shape it was saved in, with no dialling format enforced.
    attr_accessor :phone

    # Whether these details are those of the licensor of the product itself rather than of a reseller. Saving  through `POST api/2.0/settings/rebranding/company` always clears it, so only details that came with the  installation can report `true`. The name starts with a capital letter, unlike the other fields.
    attr_accessor :is_licensor

    # Whether the About page is hidden from the interface. A plan that does not include branding cannot switch it  on: the value is stored as `false` in that case, so it can come back different from what was saved.
    attr_accessor :hide_about

    # When these details were last stored. Details that were never stored report the moment they were read; the  built-in ONLYOFFICE entry and the answer of the reset operation report `0001-01-01T00:00:00`.
    attr_accessor :last_modified

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'company_name' => :'companyName',
        :'site' => :'site',
        :'email' => :'email',
        :'address' => :'address',
        :'phone' => :'phone',
        :'is_licensor' => :'IsLicensor',
        :'hide_about' => :'hideAbout',
        :'last_modified' => :'lastModified'
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
        :'company_name' => :'String',
        :'site' => :'String',
        :'email' => :'String',
        :'address' => :'String',
        :'phone' => :'String',
        :'is_licensor' => :'Boolean',
        :'hide_about' => :'Boolean',
        :'last_modified' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'company_name',
        :'site',
        :'email',
        :'address',
        :'phone',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::LicensorDetailsDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::LicensorDetailsDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'company_name')
        self.company_name = attributes[:'company_name']
      end

      if attributes.key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'is_licensor')
        self.is_licensor = attributes[:'is_licensor']
      end

      if attributes.key?(:'hide_about')
        self.hide_about = attributes[:'hide_about']
      end

      if attributes.key?(:'last_modified')
        self.last_modified = attributes[:'last_modified']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@company_name.nil? && @company_name.to_s.length > 255
        invalid_properties.push('invalid value for "company_name", the character length must be smaller than or equal to 255.')
      end

      if !@company_name.nil? && @company_name.to_s.length < 0
        invalid_properties.push('invalid value for "company_name", the character length must be greater than or equal to 0.')
      end

      if !@site.nil? && @site.to_s.length > 255
        invalid_properties.push('invalid value for "site", the character length must be smaller than or equal to 255.')
      end

      if !@site.nil? && @site.to_s.length < 0
        invalid_properties.push('invalid value for "site", the character length must be greater than or equal to 0.')
      end

      if !@email.nil? && @email.to_s.length > 255
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 255.')
      end

      if !@email.nil? && @email.to_s.length < 0
        invalid_properties.push('invalid value for "email", the character length must be greater than or equal to 0.')
      end

      if !@address.nil? && @address.to_s.length > 255
        invalid_properties.push('invalid value for "address", the character length must be smaller than or equal to 255.')
      end

      if !@address.nil? && @address.to_s.length < 0
        invalid_properties.push('invalid value for "address", the character length must be greater than or equal to 0.')
      end

      if !@phone.nil? && @phone.to_s.length > 255
        invalid_properties.push('invalid value for "phone", the character length must be smaller than or equal to 255.')
      end

      if !@phone.nil? && @phone.to_s.length < 0
        invalid_properties.push('invalid value for "phone", the character length must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@company_name.nil? && @company_name.to_s.length > 255
      return false if !@company_name.nil? && @company_name.to_s.length < 0
      return false if !@site.nil? && @site.to_s.length > 255
      return false if !@site.nil? && @site.to_s.length < 0
      return false if !@email.nil? && @email.to_s.length > 255
      return false if !@email.nil? && @email.to_s.length < 0
      return false if !@address.nil? && @address.to_s.length > 255
      return false if !@address.nil? && @address.to_s.length < 0
      return false if !@phone.nil? && @phone.to_s.length > 255
      return false if !@phone.nil? && @phone.to_s.length < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] company_name Value to be assigned
    def company_name=(company_name)
      if !company_name.nil? && company_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "company_name", the character length must be smaller than or equal to 255.'
      end

      if !company_name.nil? && company_name.to_s.length < 0
        fail ArgumentError, 'invalid value for "company_name", the character length must be greater than or equal to 0.'
      end

      @company_name = company_name
    end

    # Custom attribute writer method with validation
    # @param [Object] site Value to be assigned
    def site=(site)
      if !site.nil? && site.to_s.length > 255
        fail ArgumentError, 'invalid value for "site", the character length must be smaller than or equal to 255.'
      end

      if !site.nil? && site.to_s.length < 0
        fail ArgumentError, 'invalid value for "site", the character length must be greater than or equal to 0.'
      end

      @site = site
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length > 255
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 255.'
      end

      if !email.nil? && email.to_s.length < 0
        fail ArgumentError, 'invalid value for "email", the character length must be greater than or equal to 0.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] address Value to be assigned
    def address=(address)
      if !address.nil? && address.to_s.length > 255
        fail ArgumentError, 'invalid value for "address", the character length must be smaller than or equal to 255.'
      end

      if !address.nil? && address.to_s.length < 0
        fail ArgumentError, 'invalid value for "address", the character length must be greater than or equal to 0.'
      end

      @address = address
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      if !phone.nil? && phone.to_s.length > 255
        fail ArgumentError, 'invalid value for "phone", the character length must be smaller than or equal to 255.'
      end

      if !phone.nil? && phone.to_s.length < 0
        fail ArgumentError, 'invalid value for "phone", the character length must be greater than or equal to 0.'
      end

      @phone = phone
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          company_name == o.company_name &&
          site == o.site &&
          email == o.email &&
          address == o.address &&
          phone == o.phone &&
          is_licensor == o.is_licensor &&
          hide_about == o.hide_about &&
          last_modified == o.last_modified
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [company_name, site, email, address, phone, is_licensor, hide_about, last_modified].hash
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
