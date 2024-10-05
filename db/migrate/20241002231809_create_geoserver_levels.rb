class CreateGeoserverLevels < ActiveRecord::Migration[7.2]
  def change
    create_table :geoserver_levels do |t|
      t.string :geoserver_level
      t.string :geoserver_username
      t.string :geoserver_password

      t.timestamps
    end

    add_reference :users, :geoserver_level, foreign_key: {on_delete: :restrict}
  end
end
