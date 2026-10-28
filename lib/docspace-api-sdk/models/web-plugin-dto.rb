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
  # One web plugin available to the portal: its manifest, where to load it from, and the state the portal keeps.
  class WebPluginDto < ApiModelBase
    # The plugin's manifest name, which is what every other operation of this group addresses it by and what  makes it unique within the portal - an installation-wide plugin wins the name over a portal one.
    attr_accessor :name

    # The plugin's own version from its manifest. The portal does not compare it against anything; it is there  for a person to read.
    attr_accessor :version

    # The oldest portal version the plugin declares it works with. It is a claim from the manifest and is not  enforced, so a plugin can be loaded on an older portal and simply misbehave; compare it with the `version`  of `GET api/2.0/settings`.
    attr_accessor :min_doc_space_version

    # The plugin's description from its manifest, in the language the manifest was written in. The translations  of it are in `descriptionLocale`.
    attr_accessor :description

    # The licence the plugin is published under, as its manifest states it. Nothing checks it.
    attr_accessor :license

    # Who wrote the plugin, as its manifest states it - not the portal member who uploaded it, who is  `createBy`.
    attr_accessor :author

    # The plugin's own page, for a person to read more about it. It is empty when the manifest names none.
    attr_accessor :home_page

    # The global the plugin registers itself under in the browser once its script has run, which is how a  client reaches it. It is distinct from `name`, the identifier the portal uses.
    attr_accessor :plugin_name

    # Which parts of the interface the plugin hooks into, as one comma-separated string rather than a list.
    attr_accessor :scopes

    # The plugin's icon exactly as its manifest declares it, which is normally a file name inside the plugin's  own package rather than an absolute address - resolve it against the directory `url` points into.
    attr_accessor :image

    # The portal member who uploaded the plugin. For a plugin that ships with the installation it is an empty  profile, since no member put it there.
    attr_accessor :create_by

    # When the plugin was uploaded. It stays at its zero value for a plugin that ships with the installation.
    attr_accessor :create_on

    # Whether the portal loads the plugin. It is the state this portal stored, so an installation-wide plugin  can be on for one portal and off for another.
    attr_accessor :enabled

    # Whether the plugin ships with the installation rather than having been uploaded here. A system plugin  cannot be deleted through `DELETE api/2.0/settings/webplugins/{name}`, only switched off.
    attr_accessor :system

    # The address of the plugin's script, which a client loads to run it. It ends in a `hash` query taken from  `version`, so the address changes whenever the plugin is updated and an old one may be cached.
    attr_accessor :url

    # The absolute address of the plugin's stylesheet, empty for a plugin that ships none.
    attr_accessor :css_url

    # The settings string the portal keeps for the plugin, stored and returned verbatim - only the plugin knows  its shape. It is empty until `PUT api/2.0/settings/webplugins/{name}` saves one.
    attr_accessor :settings

    # The plugin's name translated, keyed by culture name. A culture that is missing falls back to `name`, and  the whole map is empty for a plugin that ships no translations.
    attr_accessor :name_locale

    # The plugin's description translated, keyed the same way as `nameLocale` and falling back to  `description`.
    attr_accessor :description_locale

    # How the script at `url` is to be loaded - as an ES module or as a classic script. It is empty for a  plugin whose manifest does not say, which a client treats as a classic script.
    attr_accessor :runtime

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'version' => :'version',
        :'min_doc_space_version' => :'minDocSpaceVersion',
        :'description' => :'description',
        :'license' => :'license',
        :'author' => :'author',
        :'home_page' => :'homePage',
        :'plugin_name' => :'pluginName',
        :'scopes' => :'scopes',
        :'image' => :'image',
        :'create_by' => :'createBy',
        :'create_on' => :'createOn',
        :'enabled' => :'enabled',
        :'system' => :'system',
        :'url' => :'url',
        :'css_url' => :'cssUrl',
        :'settings' => :'settings',
        :'name_locale' => :'nameLocale',
        :'description_locale' => :'descriptionLocale',
        :'runtime' => :'runtime'
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
        :'name' => :'String',
        :'version' => :'String',
        :'min_doc_space_version' => :'String',
        :'description' => :'String',
        :'license' => :'String',
        :'author' => :'String',
        :'home_page' => :'String',
        :'plugin_name' => :'String',
        :'scopes' => :'String',
        :'image' => :'String',
        :'create_by' => :'EmployeeDto',
        :'create_on' => :'Time',
        :'enabled' => :'Boolean',
        :'system' => :'Boolean',
        :'url' => :'String',
        :'css_url' => :'String',
        :'settings' => :'String',
        :'name_locale' => :'Hash<String, String>',
        :'description_locale' => :'Hash<String, String>',
        :'runtime' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'version',
        :'min_doc_space_version',
        :'description',
        :'license',
        :'author',
        :'home_page',
        :'plugin_name',
        :'scopes',
        :'image',
        :'url',
        :'css_url',
        :'settings',
        :'runtime'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::WebPluginDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::WebPluginDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      else
        self.version = nil
      end

      if attributes.key?(:'min_doc_space_version')
        self.min_doc_space_version = attributes[:'min_doc_space_version']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      else
        self.description = nil
      end

      if attributes.key?(:'license')
        self.license = attributes[:'license']
      else
        self.license = nil
      end

      if attributes.key?(:'author')
        self.author = attributes[:'author']
      else
        self.author = nil
      end

      if attributes.key?(:'home_page')
        self.home_page = attributes[:'home_page']
      else
        self.home_page = nil
      end

      if attributes.key?(:'plugin_name')
        self.plugin_name = attributes[:'plugin_name']
      else
        self.plugin_name = nil
      end

      if attributes.key?(:'scopes')
        self.scopes = attributes[:'scopes']
      else
        self.scopes = nil
      end

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      else
        self.image = nil
      end

      if attributes.key?(:'create_by')
        self.create_by = attributes[:'create_by']
      else
        self.create_by = nil
      end

      if attributes.key?(:'create_on')
        self.create_on = attributes[:'create_on']
      else
        self.create_on = nil
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      else
        self.enabled = nil
      end

      if attributes.key?(:'system')
        self.system = attributes[:'system']
      else
        self.system = nil
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      else
        self.url = nil
      end

      if attributes.key?(:'css_url')
        self.css_url = attributes[:'css_url']
      else
        self.css_url = nil
      end

      if attributes.key?(:'settings')
        self.settings = attributes[:'settings']
      else
        self.settings = nil
      end

      if attributes.key?(:'name_locale')
        if (value = attributes[:'name_locale']).is_a?(Hash)
          self.name_locale = value
        end
      end

      if attributes.key?(:'description_locale')
        if (value = attributes[:'description_locale']).is_a?(Hash)
          self.description_locale = value
        end
      end

      if attributes.key?(:'runtime')
        self.runtime = attributes[:'runtime']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @create_by.nil?
        invalid_properties.push('invalid value for "create_by", create_by cannot be nil.')
      end

      if @create_on.nil?
        invalid_properties.push('invalid value for "create_on", create_on cannot be nil.')
      end

      if @enabled.nil?
        invalid_properties.push('invalid value for "enabled", enabled cannot be nil.')
      end

      if @system.nil?
        invalid_properties.push('invalid value for "system", system cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @create_by.nil?
      return false if @create_on.nil?
      return false if @enabled.nil?
      return false if @system.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] create_by Value to be assigned
    def create_by=(create_by)
      if create_by.nil?
        fail ArgumentError, 'create_by cannot be nil'
      end

      @create_by = create_by
    end

    # Custom attribute writer method with validation
    # @param [Object] create_on Value to be assigned
    def create_on=(create_on)
      if create_on.nil?
        fail ArgumentError, 'create_on cannot be nil'
      end

      @create_on = create_on
    end

    # Custom attribute writer method with validation
    # @param [Object] enabled Value to be assigned
    def enabled=(enabled)
      if enabled.nil?
        fail ArgumentError, 'enabled cannot be nil'
      end

      @enabled = enabled
    end

    # Custom attribute writer method with validation
    # @param [Object] system Value to be assigned
    def system=(system)
      if system.nil?
        fail ArgumentError, 'system cannot be nil'
      end

      @system = system
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          version == o.version &&
          min_doc_space_version == o.min_doc_space_version &&
          description == o.description &&
          license == o.license &&
          author == o.author &&
          home_page == o.home_page &&
          plugin_name == o.plugin_name &&
          scopes == o.scopes &&
          image == o.image &&
          create_by == o.create_by &&
          create_on == o.create_on &&
          enabled == o.enabled &&
          system == o.system &&
          url == o.url &&
          css_url == o.css_url &&
          settings == o.settings &&
          name_locale == o.name_locale &&
          description_locale == o.description_locale &&
          runtime == o.runtime
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, version, min_doc_space_version, description, license, author, home_page, plugin_name, scopes, image, create_by, create_on, enabled, system, url, css_url, settings, name_locale, description_locale, runtime].hash
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
