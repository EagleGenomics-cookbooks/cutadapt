# cutadapt


Description
===========
This Cookbook to installs cutadapt.

cutadapt removes adapter sequences from high-throughput sequencing data. 
This is usually necessary when the read length of the sequencing machine 
is longer than the molecule that is sequenced, for example when 
sequencing microRNAs.

https://code.google.com/p/cutadapt/

Requirements
============

## Platform:

* Centos 6.5
* RHEL 6.5

Notes
=====
The file is unzipped in /usr/local/qualimap_[VERSION] which contains the qulimap executable.
A symbolic is created in /usr/local/bin to this file, which you can access as long as /usr/local/bin
is in your PATH. 

Usage
=====
Simply include the recipe wherever you would like it installed, such as a run list (recipe[cutadapt]) or a cookbook (include_recipe 'cutadapt')

## Testing
To test the recipe we use chef test kitchen:

kitchen converge default-centos65 

kitchen login default-centos65

kitchen verify default-centos65

kitchen destroy default-centos65

License and Authors
===================

* Authors:: Bart Ailey (<chef@eaglegenomics.com>)
* Authors:: Dan Barrel (<chef@eaglegenomics.com>)
* Authors:: Nick James (<chef@eaglegenomics.com>)

Copyright:: 2015, Eagle Genomics Ltd
    
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
    
ToDo
====

Package install for Ubuntu.

