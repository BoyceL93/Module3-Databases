require_relative 'lib/database_connection'

DatabaseConnection.connect('music_library_test')

sql = 'SELECT id, title FROM albums;'
result = DatabaseConnection.exec_params(sql, [])

result.each do |record|
    p record
end

