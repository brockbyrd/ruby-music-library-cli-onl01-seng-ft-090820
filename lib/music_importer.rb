class MusicImporter

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
  end

  def import
# <<<<<<< HEAD
    self.files.each do |filename|
      Song.create_from_filename(filename)
    end
# =======
# <<<<<<< HEAD
    files.each{|file| Song.create_from_filename(file)}
# =======
    self.files.each{|file| Song.create_from_filename(file)}
# >>>>>>> 0a597d5898ffd979df7f7735bd5366f411c723f4
# >>>>>>> 77dd17c22ef8c0620ed9c3ba34ed6cb7c519c391
  end

end
