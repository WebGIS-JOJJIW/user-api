# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Role.find_or_create_by!(name: 'admin')
Role.find_or_create_by!(name: 'user')

GeoserverLevel.find_or_create_by!(geoserver_level:'level1', geoserver_username:"geoserver_user1", geoserver_password:"geoserver_pwd1")
GeoserverLevel.find_or_create_by!(geoserver_level:'level2', geoserver_username:"geoserver_user2", geoserver_password:"geoserver_pwd2")
GeoserverLevel.find_or_create_by!(geoserver_level:'level3', geoserver_username:"geoserver_user3", geoserver_password:"geoserver_pwd3")

User.find_or_create_by!(login_name: 'admin') do |user|
  user.password = 'admin'
  user.password_confirmation = 'admin'
  user.role_id = 1
  user.geoserver_level_id = 1
end

User.find_or_create_by!(login_name: 'user') do |user|
  user.password = 'user'
  user.password_confirmation = 'user'
  user.role_id = 2
  user.geoserver_level_id = 2
end

User.find_or_create_by!(login_name: 'user2') do |user|
  user.password = 'user2'
  user.password_confirmation = 'user2'
  user.role_id = 2
  user.geoserver_level_id = 3
end