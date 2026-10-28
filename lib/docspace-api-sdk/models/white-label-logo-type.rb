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
  class WhiteLabelLogoType
    LightSmall = 1.freeze
    LoginPage = 2.freeze
    Favicon = 3.freeze
    DocsEditor = 4.freeze
    DocsEditorEmbed = 5.freeze
    LeftMenu = 6.freeze
    AboutPage = 7.freeze
    Notification = 8.freeze
    SpreadsheetEditor = 9.freeze
    SpreadsheetEditorEmbed = 10.freeze
    PresentationEditor = 11.freeze
    PresentationEditorEmbed = 12.freeze
    PdfEditor = 13.freeze
    PdfEditorEmbed = 14.freeze
    DiagramEditor = 15.freeze
    DiagramEditorEmbed = 16.freeze

    def self.all_vars
      @all_vars ||= [LightSmall, LoginPage, Favicon, DocsEditor, DocsEditorEmbed, LeftMenu, AboutPage, Notification, SpreadsheetEditor, SpreadsheetEditorEmbed, PresentationEditor, PresentationEditorEmbed, PdfEditor, PdfEditorEmbed, DiagramEditor, DiagramEditorEmbed].freeze
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
      return value if WhiteLabelLogoType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #WhiteLabelLogoType"
    end
  end
end
