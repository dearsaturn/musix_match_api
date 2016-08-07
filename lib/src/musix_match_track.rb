class MusixMatchTrack < MusixMatchApiConnection
  def search query:, page: 1
    response = request(
      method: :get,
      url: 'track.search',
      params: { q: query, page: page }
    )

    response.body.track_list
  end

  def search_lyrics query:, page: 1
    response = request(
      method: :get,
      url: 'track.search',
      params: { q_lyrics: query, page: page }
    )

    response.body.track_list
  end

  def get track_id:
    response = request(
      method: :get,
      url: 'track.get',
      params: { track_id: track_id }
    )

    response.body.track
  end

  def lyrics track_id:
    response = request(
      method: :get,
      url: 'track.lyrics.get',
      params: { track_id: track_id }
    )

    response.body.lyrics
  end

  def snippet track_id:
    response = request(
      method: :get,
      url: 'track.snippet.get',
      params: { track_id: track_id }
    )

    response
  end
end
