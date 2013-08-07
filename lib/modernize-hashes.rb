require "modernize-hashes/version"

module ModernizeHashes
  extend self

  def run!
    Dir["**/*.rb"].each do |file|
      replacements = File.open(file).read.gsub /:([a-z_]+)(\s+)?=>(\s+)?/, '\1: '
      File.open file, 'w' do |f|
        f.write replacements
      end
    end
  end

end
