# frozen_string_literal: true

#
# Copyright 2014, Deutsche Telekom AG
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

name 'os-hardening'
maintainer 'Artem Sidorenko'
maintainer_email 'artem@posteo.de'
license 'Apache-2.0'
description 'Installs and configures operating system hardening'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '4.1.2'
source_url 'https://github.com/dev-sec/chef-os-hardening'
issues_url 'https://github.com/dev-sec/chef-os-hardening/issues'

chef_version '>= 14'

supports 'amazon'
supports 'ubuntu', '>= 16.04'
supports 'debian', '>= 9.0'
supports 'centos', '>= 6.0'
supports 'redhat', '>= 6.0'
supports 'oracle', '>= 6.4'
supports 'fedora', '>= 28.0'
supports 'suse'
supports 'opensuseleap', '>= 42.1'

recipe 'os-hardening::default', 'harden the operating system (all recipes)'
recipe 'os-hardening::limits', 'prevent core dumps'
recipe 'os-hardening::login_defs', 'harden /etc/login.defs'
recipe 'os-hardening::minimize_access', 'enforce minimal file permissions'
recipe 'os-hardening::pam', 'configure sane values for PAM'
recipe 'os-hardening::profile', 'harden settings in /etc/profile.d'
recipe 'os-hardening::securetty', 'limit the allowed TTYs for root login'
recipe 'os-hardening::suid_sgid', 'reduce SUID and SGID bits in the filesystem'
recipe 'os-hardening::sysctl', 'set sane sysctl values'
