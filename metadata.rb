name 'cutadapt'
maintainer 'Eagle Genomics'
maintainer_email 'chef@eaglegenomics.com'
license 'Apache v2.0'
description 'Installs/Configures cutadapt'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.2'

source_url 'https://github.com/EagleGenomics-cookbooks/cutadapt'
issues_url 'https://github.com/EagleGenomics-cookbooks/cutadapt/issues'

supports 'ubuntu', '= 14.04'
supports 'centos', '= 6.5'

depends 'build-essential'
depends 'magic_shell'
depends 'python'
depends 'apt'
