require 'album'

class AlbumRepository

    def all
        albums = []
        sql = 'SELECT title, release_year, artist_id FROM albums;'
        result = DatabaseConnection.exec_params(sql, [])

        result.each do |record|
            album = Album.new
            album.title = record['title']
            album.release_year = record['release_year']
            album.artist_id = record['artist_id']

            albums << album
        end

        return albums
    end

    def find(artist_id)

    end

    def create(album)
    end
end
