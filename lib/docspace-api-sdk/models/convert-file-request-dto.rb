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
  # What to convert, where to keep the result, and the parameters the document service is handed. Everything below the  first two fields is the contract of the document service itself, named and shaped exactly as it names it, so that  the portal passes the request on rather than translating it. What the portal can read off the file - its format,  its name and the key of its revision - is not asked for and cannot be overridden.
  class ConvertFileRequestDto < ApiModelBase
    # The id of the portal file to convert, as reported by a folder listing such as `GET api/2.0/files/{folderId}`.
    attr_accessor :file_id

    # The id of the folder to save the converted file in, as reported by a folder listing such as  `GET api/2.0/files/{folderId}`.
    attr_accessor :folder_id

    # The encoding of a csv or txt source, as a code page number: 1251 for Cyrillic, 65001 for UTF-8, and so on.  Leaving it out lets the document service guess, which garbles non-latin text.
    attr_accessor :code_page

    # The character separating the values of a csv source: 0 - none, 1 - tab, 2 - semicolon, 3 - colon, 4 - comma,  5 - space.
    attr_accessor :delimiter

    # The layout of forms printed as pdf documents or images.
    attr_accessor :document_layout

    # How the text of a pdf, xps or oxps source is read back.
    attr_accessor :document_renderer

    # The extension of the format to convert to, without the dot. The formats a source can become are listed under  `extsConvertible` in `GET api/2.0/files/settings`, keyed by the source extension, both with a leading dot there.
    attr_accessor :outputtype

    # The password of the source document, for a document that is protected with one.
    attr_accessor :password

    # The culture code whose currency, date and time formats a spreadsheet converted to PDF is shown in.
    attr_accessor :region

    # How a thumbnail is fitted, when the target format is an image.
    attr_accessor :thumbnail

    # How a spreadsheet is laid out on the page, when it is converted to PDF.
    attr_accessor :spreadsheet_layout

    # The PDF settings, used when the target format is PDF.
    attr_accessor :pdf

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_id' => :'fileId',
        :'folder_id' => :'folderId',
        :'code_page' => :'codePage',
        :'delimiter' => :'delimiter',
        :'document_layout' => :'documentLayout',
        :'document_renderer' => :'documentRenderer',
        :'outputtype' => :'outputtype',
        :'password' => :'password',
        :'region' => :'region',
        :'thumbnail' => :'thumbnail',
        :'spreadsheet_layout' => :'spreadsheetLayout',
        :'pdf' => :'pdf'
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
        :'file_id' => :'Integer',
        :'folder_id' => :'Integer',
        :'code_page' => :'Integer',
        :'delimiter' => :'Integer',
        :'document_layout' => :'ConvertDocumentLayoutRequest',
        :'document_renderer' => :'ConvertDocumentRendererRequest',
        :'outputtype' => :'String',
        :'password' => :'String',
        :'region' => :'String',
        :'thumbnail' => :'ConvertThumbnailRequest',
        :'spreadsheet_layout' => :'ConvertSpreadsheetLayoutRequest',
        :'pdf' => :'ConvertPdfRequest'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'folder_id',
        :'code_page',
        :'delimiter',
        :'outputtype',
        :'password',
        :'region',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DocspaceApiSdk::ConvertFileRequestDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DocspaceApiSdk::ConvertFileRequestDto`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'file_id')
        self.file_id = attributes[:'file_id']
      else
        self.file_id = nil
      end

      if attributes.key?(:'folder_id')
        self.folder_id = attributes[:'folder_id']
      end

      if attributes.key?(:'code_page')
        self.code_page = attributes[:'code_page']
      end

      if attributes.key?(:'delimiter')
        self.delimiter = attributes[:'delimiter']
      end

      if attributes.key?(:'document_layout')
        self.document_layout = attributes[:'document_layout']
      end

      if attributes.key?(:'document_renderer')
        self.document_renderer = attributes[:'document_renderer']
      end

      if attributes.key?(:'outputtype')
        self.outputtype = attributes[:'outputtype']
      else
        self.outputtype = nil
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'thumbnail')
        self.thumbnail = attributes[:'thumbnail']
      end

      if attributes.key?(:'spreadsheet_layout')
        self.spreadsheet_layout = attributes[:'spreadsheet_layout']
      end

      if attributes.key?(:'pdf')
        self.pdf = attributes[:'pdf']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @file_id.nil?
        invalid_properties.push('invalid value for "file_id", file_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @file_id.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] file_id Value to be assigned
    def file_id=(file_id)
      if file_id.nil?
        fail ArgumentError, 'file_id cannot be nil'
      end

      @file_id = file_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          file_id == o.file_id &&
          folder_id == o.folder_id &&
          code_page == o.code_page &&
          delimiter == o.delimiter &&
          document_layout == o.document_layout &&
          document_renderer == o.document_renderer &&
          outputtype == o.outputtype &&
          password == o.password &&
          region == o.region &&
          thumbnail == o.thumbnail &&
          spreadsheet_layout == o.spreadsheet_layout &&
          pdf == o.pdf
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [file_id, folder_id, code_page, delimiter, document_layout, document_renderer, outputtype, password, region, thumbnail, spreadsheet_layout, pdf].hash
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
