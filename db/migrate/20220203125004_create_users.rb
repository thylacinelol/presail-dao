class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :public_key, null: false, index: true

      t.timestamps
    end
  end
end
