class Recording < ActiveRecord::Base
  belongs_to :user
  belongs_to :passage
  has_attached_file :file

  AUDIO_TYPES = [ 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3',
                  'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg',
                  'audio/x-mpegaudio' ]
  VIDEO_TYPES = [ 'video/mpeg' ]

  validates_attachment_size :file, less_than: 10.megabytes,
    message: 'must be less than 10 mb'
  validates_attachment_content_type :file,
    content_type: AUDIO_TYPES + VIDEO_TYPES

  before_save :assign_type

  def assign_type
    self.type = if AUDIO_TYPES.include? self.file_content_type
                  'AudioRecording'
                else
                  'VideoRecording'
                end
  end
end
