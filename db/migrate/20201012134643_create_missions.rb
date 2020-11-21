class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.string :name, null: false
      t.references :classification, null: false, foreign_key: true
      t.boolean :limited, null: false, default: false
      t.string :url
      t.string :note
      t.integer :n1_1, null: false, limit: 1, default: 0
      t.integer :n1_2, null: false, limit: 1, default: 0
      t.integer :n1_3, null: false, limit: 1, default: 0
      t.integer :n1_4, null: false, limit: 1, default: 0
      t.integer :n1_5, null: false, limit: 1, default: 0
      t.integer :n1_6, null: false, limit: 1, default: 0
      t.integer :n2_1, null: false, limit: 1, default: 0
      t.integer :n2_2, null: false, limit: 1, default: 0
      t.integer :n2_3, null: false, limit: 1, default: 0
      t.integer :n2_4, null: false, limit: 1, default: 0
      t.integer :n2_5, null: false, limit: 1, default: 0
      t.integer :n3_1, null: false, limit: 1, default: 0
      t.integer :n3_2, null: false, limit: 1, default: 0
      t.integer :n3_3, null: false, limit: 1, default: 0
      t.integer :n3_4, null: false, limit: 1, default: 0
      t.integer :n3_5, null: false, limit: 1, default: 0
      t.integer :n4_1, null: false, limit: 1, default: 0
      t.integer :n4_2, null: false, limit: 1, default: 0
      t.integer :n4_3, null: false, limit: 1, default: 0
      t.integer :n4_4, null: false, limit: 1, default: 0
      t.integer :n4_5, null: false, limit: 1, default: 0
      t.integer :n5_1, null: false, limit: 1, default: 0
      t.integer :n5_2, null: false, limit: 1, default: 0
      t.integer :n5_3, null: false, limit: 1, default: 0
      t.integer :n5_4, null: false, limit: 1, default: 0
      t.integer :n5_5, null: false, limit: 1, default: 0
      t.integer :n6_1, null: false, limit: 1, default: 0
      t.integer :n6_2, null: false, limit: 1, default: 0
      t.integer :n6_3, null: false, limit: 1, default: 0
      t.integer :n6_4, null: false, limit: 1, default: 0
      t.integer :n6_5, null: false, limit: 1, default: 0
      t.integer :n7_1, null: false, limit: 1, default: 0
      t.integer :n7_2_1, null: false, limit: 1, default: 0
      t.integer :n7_2_2, null: false, limit: 1, default: 0
      t.integer :n7_3_1, null: false, limit: 1, default: 0
      t.integer :n7_3_2, null: false, limit: 1, default: 0
      t.timestamps null: false, default: -> { 'NOW()' }
    end

    reversible do |dir|
      dir.up do
        # CHECK制約を追加
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n1_1 CHECK (0 <= n1_1 AND n1_1 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n1_2 CHECK (0 <= n1_2 AND n1_2 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n1_3 CHECK (0 <= n1_3 AND n1_3 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n1_4 CHECK (0 <= n1_4 AND n1_4 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n1_5 CHECK (0 <= n1_5 AND n1_5 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n1_6 CHECK (0 <= n1_6 AND n1_6 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n2_1 CHECK (0 <= n2_1 AND n2_1 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n2_2 CHECK (0 <= n2_2 AND n2_2 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n2_3 CHECK (0 <= n2_3 AND n2_3 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n2_4 CHECK (0 <= n2_4 AND n2_4 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n2_5 CHECK (0 <= n2_5 AND n2_5 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n3_1 CHECK (0 <= n3_1 AND n3_1 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n3_2 CHECK (0 <= n3_2 AND n3_2 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n3_3 CHECK (0 <= n3_3 AND n3_3 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n3_4 CHECK (0 <= n3_4 AND n3_4 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n3_5 CHECK (0 <= n3_5 AND n3_5 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n4_1 CHECK (0 <= n4_1 AND n4_1 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n4_2 CHECK (0 <= n4_2 AND n4_2 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n4_3 CHECK (0 <= n4_3 AND n4_3 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n4_4 CHECK (0 <= n4_4 AND n4_4 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n4_5 CHECK (0 <= n4_5 AND n4_5 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n5_1 CHECK (0 <= n5_1 AND n5_1 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n5_2 CHECK (0 <= n5_2 AND n5_2 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n5_3 CHECK (0 <= n5_3 AND n5_3 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n5_4 CHECK (0 <= n5_4 AND n5_4 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n5_5 CHECK (0 <= n5_5 AND n5_5 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n6_1 CHECK (0 <= n6_1 AND n6_1 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n6_2 CHECK (0 <= n6_2 AND n6_2 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n6_3 CHECK (0 <= n6_3 AND n6_3 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n6_4 CHECK (0 <= n6_4 AND n6_4 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n6_5 CHECK (0 <= n6_5 AND n6_5 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n7_1 CHECK (0 <= n7_1 AND n7_1 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n7_2_1 CHECK (0 <= n7_2_1 AND n7_2_1 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n7_2_2 CHECK (0 <= n7_2_2 AND n7_2_2 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n7_3_1 CHECK (0 <= n7_3_1 AND n7_3_1 <= 99);'
        execute 'ALTER TABLE missions ADD CONSTRAINT check_missions_n7_3_2 CHECK (0 <= n7_3_2 AND n7_3_2 <= 99);'
      end

      dir.down do
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n1_1;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n1_2;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n1_3;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n1_4;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n1_5;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n1_6;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n2_1;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n2_2;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n2_3;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n2_4;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n2_5;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n3_1;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n3_2;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n3_3;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n3_4;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n3_5;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n4_1;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n4_2;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n4_3;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n4_4;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n4_5;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n5_1;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n5_2;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n5_3;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n5_4;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n5_5;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n6_1;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n6_2;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n6_3;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n6_4;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n6_5;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n7_1;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n7_2_1;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n7_2_2;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n7_3_1;'
        execute 'ALTER TABLE missions DROP CONSTRAINT check_missions_n7_3_2;'
      end
    end
  end
end
