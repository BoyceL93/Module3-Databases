require 'artist_repository'

RSpec.describe ArtistRepository do
    def reset_artists_table
        seed_sql = File.read('spec/seeds_music_library.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
        connection.exec(seed_sql)
    end

    before(:each) do
        reset_artists_table
    end

    it "returns all artists" do
        repo = ArtistRepository.new
        artists = repo.all
        expect(artists.length).to eq(3)
        expect(artists.first.name).to eq('Mac Miller')
        expect(artists.first.genre).to eq('Hip Hop/Rap')
    end

    it "returns a single artist record" do
        repo = ArtistRepository.new
        artist = repo.find
        exopect(artists).to eq 


end