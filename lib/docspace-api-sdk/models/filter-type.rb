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
  class FilterType
    None = 0.freeze
    FilesOnly = 1.freeze
    FoldersOnly = 2.freeze
    DocumentsOnly = 3.freeze
    PresentationsOnly = 4.freeze
    SpreadsheetsOnly = 5.freeze
    ImagesOnly = 7.freeze
    ByUser = 8.freeze
    ByDepartment = 9.freeze
    ArchiveOnly = 10.freeze
    ByExtension = 11.freeze
    MediaOnly = 12.freeze
    FillingFormsRooms = 13.freeze
    EditingRooms = 14.freeze
    CustomRooms = 17.freeze
    PublicRooms = 20.freeze
    Pdf = 22.freeze
    PdfForm = 23.freeze
    VirtualDataRooms = 24.freeze
    DiagramsOnly = 25.freeze
    AiRooms = 26.freeze

    def self.all_vars
      @all_vars ||= [None, FilesOnly, FoldersOnly, DocumentsOnly, PresentationsOnly, SpreadsheetsOnly, ImagesOnly, ByUser, ByDepartment, ArchiveOnly, ByExtension, MediaOnly, FillingFormsRooms, EditingRooms, CustomRooms, PublicRooms, Pdf, PdfForm, VirtualDataRooms, DiagramsOnly, AiRooms].freeze
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
      return value if FilterType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #FilterType"
    end
  end
end
