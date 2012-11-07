require 'rbconfig'
require 'fileutils'

module Yurei

  class << self

    def phantomjs_path
      bin_path = File.join vendor_path, 'phantomjs', '1.7.0'

      case platform
        when 'linux' then
          bin_path = File.join bin_path, 'linux-x86_64', 'bin', 'phantomjs'
        when 'darwin' then
          bin_path = File.join bin_path, 'macosx', 'bin', 'phantomjs'
      end

      bin_path
    end

    def casperjs_path
      File.join vendor_path, 'casperjs'
    end

    def vendor_path
      File.join base_path, 'vendor'
    end

    def base_path
      File.dirname(File.dirname(File.expand_path(__FILE__)))
    end

    def platform
      case RbConfig::CONFIG['host_os'].downcase
        when /linux/  then 'linux'
        when /darwin/ then 'darwin'
        else 'unsupported'
      end
    end

  end

end
