class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        @music_files = Dir.entries(@path).drop(2)
    end

    def import
        self.files.each {|files| Song.new_by_filename(files)}
    end
end