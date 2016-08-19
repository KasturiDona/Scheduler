xml.instruct! :xml, :version => '1.1'
xml.table do
  @details.each do |detail|
    xml.row do
      xml.event_id detail['event_id']
      xml.event_date detail['event_date']
      xml.utc_event_date detail['utc_event_date']
      xml.duration detail['duration']
      xml.program_id detail['program_id']
      xml.title detail['title']
      xml.movie detail['movie']
      xml.series detail['series']
      xml.classification detail['classification']
      xml.warnings detail['warnings']
      xml.year_production detail['year_production']
      xml.country detail['country']
      xml.language detail['language']
      xml.genre detail['genre']
      xml.sub_genre detail['sub_genre']
      xml.episode_id detail['episode_id']
      xml.series_number detail['series_number']
      xml.episode_number detail['episode_number']
      xml.episode_title detail['episode_title']
      xml.synopsis detail['synopsis']
      xml.director detail['director']
      xml.main_cast detail['main_cast']
      xml.synopsis detail['synopsis']
    end
  end
end
