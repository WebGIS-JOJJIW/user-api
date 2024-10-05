class CreateRoles < ActiveRecord::Migration[7.2]
  def change
    create_table :roles do |t|
      t.string :name
      t.jsonb :permission_json, default: {}

      t.timestamps
    end
  end
end
