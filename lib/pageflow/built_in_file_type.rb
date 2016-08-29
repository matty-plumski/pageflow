module Pageflow
  module BuiltInFileType
    # Factory methods to decouple Pageflow initializers from concrete
    # file type classes, making more transparent which file types are
    # available as built-ins.
    def self.image
      FileType.new(model: 'Pageflow::ImageFile',
                   editor_partial: 'pageflow/editor/image_files/image_file',
                   collection_name: 'image_files',
                   top_level_type: true)
    end

    def self.video
      FileType.new(model: 'Pageflow::VideoFile',
                   editor_partial: 'pageflow/editor/video_files/video_file',
                   collection_name: 'video_files',
                   top_level_type: true)
    end

    def self.audio
      FileType.new(model: 'Pageflow::AudioFile',
                   editor_partial: 'pageflow/editor/audio_files/audio_file',
                   collection_name: 'audio_files',
                   top_level_type: true)
    end
  end
end
