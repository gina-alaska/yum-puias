require 'spec_helper'

describe 'yum-puias::default' do
  context 'yum-puias::default uses default attributes' do
    let(:chef_run) do
      ChefSpec::Runner.new do |node|
        node.set['yum']['puias-core']['managed'] = true
        node.set['yum']['puias-addons']['managed'] = true
        node.set['yum']['puias-unsupported']['managed'] = true
        node.set['yum']['puias-computational']['managed'] = true
      end.converge(described_recipe)
    end

    %w{
      puias-core
      puias-addons
      puias-unsupported
      puias-computational
      }.each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(chef_run).to create_yum_repository(repo)
      end
    end

  end
end

