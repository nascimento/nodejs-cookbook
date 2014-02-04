#
# Cookbook Name:: nodejs
# Attributes:: nodejs
#
# Copyright 2010-2012, Promet Solutions
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
#

case node['platform_family']
  when "smartos"
    default['nodejs']['install_method'] = 'package'
  else
    default['nodejs']['install_method'] = 'source'
end

default['nodejs']['version'] = '0.10.25'
default['nodejs']['checksum'] = '46eef3b9d5475a2081dc2b2f7cf1f4c3a56824d1fc9b04e7ed1d7a88e8f6b36f'
default['nodejs']['checksum_linux_x64'] = '1dac61c21fa21e47fc6e799757569c6c3914897ca46fc8f4dd2c8f13f0400626'
default['nodejs']['checksum_linux_x86'] = '3f1fa0bb332b1354bca8d52d89e92c8884b6469a0f5fc3826ee72c2639279995'
default['nodejs']['dir'] = '/usr/local/nodejs'
default['nodejs']['npm'] = '1.3.5'
default['nodejs']['src_url'] = "http://nodejs.org/dist"
default['nodejs']['make_threads'] = node['cpu'] ? node['cpu']['total'].to_i : 2
default['nodejs']['check_sha'] = true

# Set this to true to install the legacy packages (0.8.x) from ubuntu/debian repositories; default is false (using the latest stable 0.10.x)
default['nodejs']['legacy_packages'] = false
