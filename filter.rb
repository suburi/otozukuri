module Filter
  def distortion(waves, clip = 0, level = 0.7)
    waves.map do |wave|
      if wave > 0
        wave > clip ? clip : wave
      else
        wave < -clip ? -clip : wave
      end
      wave * level
    end
  end
end
