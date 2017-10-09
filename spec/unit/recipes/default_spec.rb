#
# Cookbook Name:: cutadapt
# Spec:: default
#
# Copyright (c) 2016 Eagle Genomics Ltd, Apache License, Version 2.0.

require 'spec_helper'

describe 'cutadapt::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
