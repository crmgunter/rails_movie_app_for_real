class Film < ApplicationRecord
    include HTTParty
    base_uri'http://www.omdbapi.com/?i=tt3896198&apikey=a18bcafd'

    def self.generate(api_id)
        film = find_by api_id: api_id
        return film unless film.nil?

        response = get("/#{api_id}")

        create!(
            title: response["title"],
            genre: response['Genre'],
            year: response['Year'],
            synopsis: response['Plot'],
            photo: response['poster'],
            api_id: api_id
        )
    end

end
