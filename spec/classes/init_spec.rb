require 'spec_helper'
describe 'vlc' do

  context 'with defaults for all parameters' do
    it { should contain_class('vlc') }
  end
end
