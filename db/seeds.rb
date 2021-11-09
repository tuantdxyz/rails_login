# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
# login: tuantd:123456

connection = ActiveRecord::Base.connection()

sql = <<-EOL
INSERT INTO users(name, password_digest, created_at,updated_at)
VALUES ('tuantd', '$2a$12$.akpLZiHAW8PDh2.KdlvceNvLcL8AufglDHP5iTgIj1JK/1tiaSP6', current_timestamp,current_timestamp);
EOL

sql.split(';').each do |s|
    connection.execute(s.strip) unless s.strip.empty?
end