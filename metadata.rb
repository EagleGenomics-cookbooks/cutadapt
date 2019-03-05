name 'cutadapt'
maintainer 'Eagle Genomics Ltd'
maintainer_email 'chef@eaglegenomics.com'
license 'Apache-2.0'
description 'Installs/Configures cutadapt'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.3'
chef_version '>= 14.10'
supports 'ubuntu', '= 18.04'
source_url 'https://github.com/EagleGenomics-cookbooks/cutadapt'
issues_url 'https://github.com/EagleGenomics-cookbooks/cutadapt/issues'

depends 'magic_shell'
depends 'python_setup'
