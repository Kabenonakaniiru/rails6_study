class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.string :name, null: false
      t.references :classification, null: false, foreign_key: true
      t.boolean :limited, null: false, default: false
      t.string :url
      t.string :note
      t.timestamps null: false, default: -> { 'NOW()' }
    end
  end
end
