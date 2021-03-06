#
# Cookbook Name:: znc
# Attributes:: default
#
# Copyright (c) 2011-2013, Seth Chisamore
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

default['znc']['install_method'] = 'package'

case node["platform"]
when "macosx"
  default['znc']['data_dir'] = '$HOME/.znc'
else
  default['znc']['data_dir'] = '/etc/znc'
  default['znc']['user'] = 'znc'
  default['znc']['group'] = 'znc'
end

default['znc']['conf_dir']        = "#{znc['data_dir']}/configs"
default['znc']['log_dir']         = "#{znc['data_dir']}/moddata/adminlog"
default['znc']['module_dir']      = "#{znc['data_dir']}/modules"
default['znc']['users_dir']       = "#{znc['data_dir']}/users"

default['znc']['port']            = "+7777"
default['znc']['irc_port']        = "+7777"
default['znc']['web_port']        = "+7777"
default['znc']['skin']            = "dark-clouds"
default['znc']['max_buffer_size'] = 500
default['znc']['modules']         = %w{ webadmin adminlog }

default['znc']['server_name']     = node['fqdn']
