class CreateProposals < ActiveRecord::Migration[7.0]
  def change
    create_table :proposals do |t|
      t.string :title, null: false
      t.text :description

      t.references :author, foreign_key: { to_table: :users }, index: true

      t.timestamps
    end
  end
end
