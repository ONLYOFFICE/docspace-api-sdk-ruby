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
  class SearchArea
    ACTIVE = "Active".freeze
    ARCHIVE = "Archive".freeze
    ANY = "Any".freeze
    RECENT_BY_LINKS = "RecentByLinks".freeze
    TEMPLATES = "Templates".freeze
    KNOWLEDGE = "Knowledge".freeze
    RESULT_STORAGE = "ResultStorage".freeze
    AI_AGENTS = "AiAgents".freeze
    FORMS = "Forms".freeze
    FORM_TEMPLATES = "FormTemplates".freeze

    def self.all_vars
      @all_vars ||= [ACTIVE, ARCHIVE, ANY, RECENT_BY_LINKS, TEMPLATES, KNOWLEDGE, RESULT_STORAGE, AI_AGENTS, FORMS, FORM_TEMPLATES].freeze
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
      return value if SearchArea.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #SearchArea"
    end
  end
end
