class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :login_name, index: true
      t.string :password_digest
      t.references :role, foreign_key: {on_delete: :restrict}

      t.timestamps
    end
  end
end
