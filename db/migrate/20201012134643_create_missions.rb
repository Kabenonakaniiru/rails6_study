class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.string :name, null: false
      t.references :classification, null: false, foreign_key: true
      t.boolean :limited, null: false, default: false
      t.string :url
      t.string :note
      t.timestamps null: false, default: -> { 'NOW()' }
      t.integer 'N1-1', null: false, limit: 1, default: 0
      t.integer 'N1-2', null: false, limit: 1, default: 0
      t.integer 'N1-3', null: false, limit: 1, default: 0
      t.integer 'N1-4', null: false, limit: 1, default: 0
      t.integer 'N1-5', null: false, limit: 1, default: 0
      t.integer 'N1-6', null: false, limit: 1, default: 0
      t.integer 'N2-1', null: false, limit: 1, default: 0
      t.integer 'N2-2', null: false, limit: 1, default: 0
      t.integer 'N2-3', null: false, limit: 1, default: 0
      t.integer 'N2-4', null: false, limit: 1, default: 0
      t.integer 'N2-5', null: false, limit: 1, default: 0
      t.integer 'N3-1', null: false, limit: 1, default: 0
      t.integer 'N3-2', null: false, limit: 1, default: 0
      t.integer 'N3-3', null: false, limit: 1, default: 0
      t.integer 'N3-4', null: false, limit: 1, default: 0
      t.integer 'N3-5', null: false, limit: 1, default: 0
      t.integer 'N4-1', null: false, limit: 1, default: 0
      t.integer 'N4-2', null: false, limit: 1, default: 0
      t.integer 'N4-3', null: false, limit: 1, default: 0
      t.integer 'N4-4', null: false, limit: 1, default: 0
      t.integer 'N4-5', null: false, limit: 1, default: 0
      t.integer 'N5-1', null: false, limit: 1, default: 0
      t.integer 'N5-2', null: false, limit: 1, default: 0
      t.integer 'N5-3', null: false, limit: 1, default: 0
      t.integer 'N5-4', null: false, limit: 1, default: 0
      t.integer 'N5-5', null: false, limit: 1, default: 0
      t.integer 'N6-1', null: false, limit: 1, default: 0
      t.integer 'N6-2', null: false, limit: 1, default: 0
      t.integer 'N6-3', null: false, limit: 1, default: 0
      t.integer 'N6-4', null: false, limit: 1, default: 0
      t.integer 'N6-5', null: false, limit: 1, default: 0
      t.integer 'N7-1', null: false, limit: 1, default: 0
      t.integer 'N7-2-1', null: false, limit: 1, default: 0
      t.integer 'N7-2-2', null: false, limit: 1, default: 0
      t.integer 'N7-3-1', null: false, limit: 1, default: 0
      t.integer 'N7-3-2', null: false, limit: 1, default: 0
    end
  end
end
