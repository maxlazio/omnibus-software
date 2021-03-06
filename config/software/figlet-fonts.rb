#
# Copyright 2015 Chef Software, Inc.
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

name "figlet-fonts"
default_version "master"

dependency "figlet"

source git: "git://github.com/cmatsuoka/figlet-fonts"

relative_path "figlet-fonts-#{version}"

build do
  mkdir "#{install_dir}/share/figlet/fonts"
  copy "#{project_dir}/*/*.flc", "#{install_dir}/share/figlet/fonts/"
  copy "#{project_dir}/*/*.flf", "#{install_dir}/share/figlet/fonts/"
end
