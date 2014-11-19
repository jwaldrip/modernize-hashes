require "modernize-hashes/version"

module ModernizeHashes
  extend self

  SUPPORTED_EXTENSIONS = %w{
  rb
  haml
  erb
  slim
  }

  def run!
    Dir["**/*"].select { |file| supported_extension? file }.each { |file| replace_hashes_in_file file }
  end

  def replace_hashes_in_file(file)
    replacements = File.open(file).read.gsub /:([a-z_]+)(\s+)?=>(\s+)?/, '\1: '
    File.open(file, 'w') { |f| f.write replacements }
  rescue => e
    raise e.class, "#{e.message} in #{file}"
  end

  def supported_extension?(file)
    SUPPORTED_EXTENSIONS.map { |e| ".#{e}" }.include? File.extname(file)
  end

end
