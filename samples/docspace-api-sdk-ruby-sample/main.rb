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


require 'bundler/setup'
require 'docspace-api-sdk'

DocspaceApiSdk.configure do |config|
  config.scheme = 'http'
  config.host = 'localhost:8092'
  config.base_path = ''
end

begin
  auth_api = DocspaceApiSdk::Authentication::AuthenticationApi.new
  auth_request = DocspaceApiSdk::AuthRequestsDto.new(
    user_name: 'example@onlyoffice.com',
    password: '11111111'
  )

  auth_response = auth_api.authenticate_me(auth_requests_dto: auth_request)
  token = auth_response.response.token

  DocspaceApiSdk.configure do |config|
    config.access_token = token
  end

  folders_api = DocspaceApiSdk::Files::FoldersApi.new
  my_folder = folders_api.get_my_folder
  parent_folder_id = my_folder.response.current.id

  create_folder_payload = DocspaceApiSdk::CreateFolder.new(title: 'SDK Sample Folder')
  created_folder = folders_api.create_folder(parent_folder_id, create_folder_payload)

  puts "Created folder ID: #{created_folder.response.id}"
rescue DocspaceApiSdk::ApiError => e
  puts "API error: #{e}"
rescue StandardError => e
  puts "Unexpected error: #{e.message}"
end
