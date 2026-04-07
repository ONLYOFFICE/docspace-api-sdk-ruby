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
  class FileType
    Unknown = 0.freeze
    Archive = 1.freeze
    Video = 2.freeze
    Audio = 3.freeze
    Image = 4.freeze
    Spreadsheet = 5.freeze
    Presentation = 6.freeze
    Document = 7.freeze
    Pdf = 10.freeze
    Diagram = 11.freeze

    def self.all_vars
      @all_vars ||= [Unknown, Archive, Video, Audio, Image, Spreadsheet, Presentation, Document, Pdf, Diagram].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if FileType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #FileType"
    end
  end
end
