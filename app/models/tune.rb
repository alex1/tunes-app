class Tune < ActiveRecord::Base
  attr_accessible :name, :path_to_mp3_fast, :path_to_mp3_slow, :path_to_ogg_fast, :path_to_ogg_slow, :path_to_wav_fast, :path_to_wav_slow
end
