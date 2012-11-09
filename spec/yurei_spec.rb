
require 'spec_helper'

describe Yurei do

  describe '#platform' do

    it 'returns unsupported on non Mac or Linux OS' do
      RbConfig::CONFIG.stub!(:[]).with('host_os').and_return("something")
      Yurei.platform.should == 'unsupported'
    end

    it 'returns linux when host OS is linux' do
      RbConfig::CONFIG.stub!(:[]).with('host_os').and_return("linux")
      Yurei.platform.should == 'linux'
    end

  end

  describe '#phantomjs_path' do

    it 'returns linux path' do
      RbConfig::CONFIG.stub!(:[]).with('host_os').and_return("linux")
      Yurei.phantomjs_path.should =~ /linux/
    end

  end

end