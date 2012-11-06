require 'rbconfig'
require 'fileutils'

module Yurei

  class << self
    
    def phantomjs_path
      bin_path = File.join vendor_path, 'phantomjs', '1.7.0', 'macosx', 'bin', 'phantomjs' 
    end

    def vendor_path
      File.join File.dirname(__FILE__), '..', 'vendor'
    end

  end

end
