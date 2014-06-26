require 'RMagick'
require 'pathname'

path = File.expand_path("./files_to_convert")

puts "#{path}"

files = Dir.glob(path + "/*.*")

files.each do |file|
  file_name = Pathname.new(file).basename

  img = Magick::Image::read(file).first
  img.format = 'JPEG'
  #thumb = img.resize_to_fit(125, 125)
  img.write("./converted_files/demo_compressed.jpg") { self.quality = 100 }

  break

end
