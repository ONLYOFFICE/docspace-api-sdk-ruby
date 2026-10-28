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
  # The vendor details the About page and the notification letters print, shared by the whole installation.
  class CompanyWhiteLabelSettingsDto < ApiModelBase
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

    # Whether these details are those of the licensor of the product itself rather than of a reseller. Saving  through `POST api/2.0/settings/rebranding/company` always clears it, so only details that came with the  installation can report `true`.
    attr_accessor :is_licensor

    # Whether the About page is hidden from the interface. A plan that does not include branding cannot switch it  on: the value is stored as `false` in that case, so it can come back different from what was saved.
    attr_accessor :hide_about

    # Whether every field above still matches the installation's built-in vendor details. It turns `false` as  soon as one of them is saved differently and `true` again after  `DELETE api/2.0/settings/rebranding/company`.
    attr_accessor :is_default

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'company_name' => :'companyName',
        :'site' => :'site',
        :'email' => :'email',
        :'address' => :'address',
        :'phone' => :'phone',
        :'is_licensor' => :'isLicensor',
        :'hide_about' => :'hideAbout',
        :'is_default' => :'isDefault'
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
        :'is_default' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::CompanyWhiteLabelSettingsDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::CompanyWhiteLabelSettingsDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'company_name')
        self.company_name = attributes[:'company_name']
      else
        self.company_name = nil
      end

      if attributes.key?(:'site')
        self.site = attributes[:'site']
      else
        self.site = nil
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      else
        self.email = nil
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      else
        self.address = nil
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      else
        self.phone = nil
      end

      if attributes.key?(:'is_licensor')
        self.is_licensor = attributes[:'is_licensor']
      else
        self.is_licensor = nil
      end

      if attributes.key?(:'hide_about')
        self.hide_about = attributes[:'hide_about']
      else
        self.hide_about = nil
      end

      if attributes.key?(:'is_default')
        self.is_default = attributes[:'is_default']
      else
        self.is_default = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @is_licensor.nil?
        invalid_properties.push('invalid value for "is_licensor", is_licensor cannot be nil.')
      end

      if @hide_about.nil?
        invalid_properties.push('invalid value for "hide_about", hide_about cannot be nil.')
      end

      if @is_default.nil?
        invalid_properties.push('invalid value for "is_default", is_default cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @is_licensor.nil?
      return false if @hide_about.nil?
      return false if @is_default.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] is_licensor Value to be assigned
    def is_licensor=(is_licensor)
      if is_licensor.nil?
        fail ArgumentError, 'is_licensor cannot be nil'
      end

      @is_licensor = is_licensor
    end

    # Custom attribute writer method with validation
    # @param [Object] hide_about Value to be assigned
    def hide_about=(hide_about)
      if hide_about.nil?
        fail ArgumentError, 'hide_about cannot be nil'
      end

      @hide_about = hide_about
    end

    # Custom attribute writer method with validation
    # @param [Object] is_default Value to be assigned
    def is_default=(is_default)
      if is_default.nil?
        fail ArgumentError, 'is_default cannot be nil'
      end

      @is_default = is_default
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
          is_default == o.is_default
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [company_name, site, email, address, phone, is_licensor, hide_about, is_default].hash
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
