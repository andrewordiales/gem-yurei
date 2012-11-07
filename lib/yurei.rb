require 'rbconfig'
require 'fileutils'

module Yurei

  class << self
    
    def phantomjs_path
      bin_path = File.join vendor_path, 'phantomjs', '1.7.0', 'macosx', 'bin', 'phantomjs' 
    end

    def casperjs_path
      cj_path = File.join vendor_path, 'casperjs'
    end

    def vendor_path
      File.join base_path, 'vendor'
    end

    def base_path
      File.dirname(File.dirname(File.expand_path(__FILE__)))
    end

  end

end
