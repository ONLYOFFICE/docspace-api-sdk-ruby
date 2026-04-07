# -*- encoding: utf-8 -*-

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

$:.push File.expand_path("../lib", __FILE__)
require "docspace-api-sdk/version"

Gem::Specification.new do |s|
  s.name        = "docspace-api-sdk"
  s.version     = DocspaceApiSdk::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ascensio System SIA <integration@onlyoffice.com> (https://www.onlyoffice.com)"]
  s.email       = ["support@onlyoffice.com"]
  s.homepage    = "https://www.onlyoffice.com"
  s.summary     = "Api Ruby Gem"
  s.description = "A simple Ruby SDK for integrating with the ONLYOFFICE DocSpace API"
  s.license     = "Apache-2.0"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = Dir.glob("**/*", File::FNM_DOTMATCH)
                       .select { |f| File.file?(f) }
                       .reject { |f| f.end_with?(".gem") || f.start_with?("pkg/", ".bundle/", "vendor/bundle/") }
  s.test_files    = s.files.grep(%r{\Aspec/})
  s.executables   = []
  s.require_paths = ["lib"]
end
