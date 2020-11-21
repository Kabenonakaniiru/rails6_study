class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.integer :level, null: false, limit: 1, default: 1
      t.string :name, null: false, limit: 3
      t.string :column_name, null: false, limit: 6
    end

    reversible do |dir|
      dir.up do
        # CHECK制約を追加
        execute 'ALTER TABLE areas ADD CONSTRAINT check_areas_level CHECK (1 <= level AND level <= 3);'
      end

      dir.down do
        execute 'ALTER TABLE areas DROP CONSTRAINT check_areas_level;'
      end
    end
  end
end
