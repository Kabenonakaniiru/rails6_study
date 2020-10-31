class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.string :name, null: false
      t.references :classification, null: false, foreign_key: true
      t.boolean :limited, null: false, default: false
      t.string :url
      t.string :note
      t.integer :N1_1, null: false, limit: 1, default: 0
      t.integer :N1_2, null: false, limit: 1, default: 0
      t.integer :N1_3, null: false, limit: 1, default: 0
      t.integer :N1_4, null: false, limit: 1, default: 0
      t.integer :N1_5, null: false, limit: 1, default: 0
      t.integer :N1_6, null: false, limit: 1, default: 0
      t.integer :N2_1, null: false, limit: 1, default: 0
      t.integer :N2_2, null: false, limit: 1, default: 0
      t.integer :N2_3, null: false, limit: 1, default: 0
      t.integer :N2_4, null: false, limit: 1, default: 0
      t.integer :N2_5, null: false, limit: 1, default: 0
      t.integer :N3_1, null: false, limit: 1, default: 0
      t.integer :N3_2, null: false, limit: 1, default: 0
      t.integer :N3_3, null: false, limit: 1, default: 0
      t.integer :N3_4, null: false, limit: 1, default: 0
      t.integer :N3_5, null: false, limit: 1, default: 0
      t.integer :N4_1, null: false, limit: 1, default: 0
      t.integer :N4_2, null: false, limit: 1, default: 0
      t.integer :N4_3, null: false, limit: 1, default: 0
      t.integer :N4_4, null: false, limit: 1, default: 0
      t.integer :N4_5, null: false, limit: 1, default: 0
      t.integer :N5_1, null: false, limit: 1, default: 0
      t.integer :N5_2, null: false, limit: 1, default: 0
      t.integer :N5_3, null: false, limit: 1, default: 0
      t.integer :N5_4, null: false, limit: 1, default: 0
      t.integer :N5_5, null: false, limit: 1, default: 0
      t.integer :N6_1, null: false, limit: 1, default: 0
      t.integer :N6_2, null: false, limit: 1, default: 0
      t.integer :N6_3, null: false, limit: 1, default: 0
      t.integer :N6_4, null: false, limit: 1, default: 0
      t.integer :N6_5, null: false, limit: 1, default: 0
      t.integer :N7_1, null: false, limit: 1, default: 0
      t.integer :N7_2_1, null: false, limit: 1, default: 0
      t.integer :N7_2_2, null: false, limit: 1, default: 0
      t.integer :N7_3_1, null: false, limit: 1, default: 0
      t.integer :N7_3_2, null: false, limit: 1, default: 0
      t.timestamps null: false, default: -> { 'NOW()' }
    end

    reversible do |dir|
      dir.up do
        # CHECK制約を追加
        execute <<-SQL
          ALTER TABLE missions ADD CONSTRAINT check_N1_1 CHECK (0 <= N1_1 AND N1_1 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N1_2 CHECK (0 <= N1_2 AND N1_2 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N1_3 CHECK (0 <= N1_3 AND N1_3 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N1_4 CHECK (0 <= N1_4 AND N1_4 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N1_5 CHECK (0 <= N1_5 AND N1_5 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N1_6 CHECK (0 <= N1_6 AND N1_6 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N2_1 CHECK (0 <= N2_1 AND N2_1 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N2_2 CHECK (0 <= N2_2 AND N2_2 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N2_3 CHECK (0 <= N2_3 AND N2_3 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N2_4 CHECK (0 <= N2_4 AND N2_4 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N2_5 CHECK (0 <= N2_5 AND N2_5 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N3_1 CHECK (0 <= N3_1 AND N3_1 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N3_2 CHECK (0 <= N3_2 AND N3_2 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N3_3 CHECK (0 <= N3_3 AND N3_3 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N3_4 CHECK (0 <= N3_4 AND N3_4 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N3_5 CHECK (0 <= N3_5 AND N3_5 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N4_1 CHECK (0 <= N4_1 AND N4_1 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N4_2 CHECK (0 <= N4_2 AND N4_2 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N4_3 CHECK (0 <= N4_3 AND N4_3 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N4_4 CHECK (0 <= N4_4 AND N4_4 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N4_5 CHECK (0 <= N4_5 AND N4_5 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N5_1 CHECK (0 <= N5_1 AND N5_1 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N5_2 CHECK (0 <= N5_2 AND N5_2 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N5_3 CHECK (0 <= N5_3 AND N5_3 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N5_4 CHECK (0 <= N5_4 AND N5_4 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N5_5 CHECK (0 <= N5_5 AND N5_5 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N6_1 CHECK (0 <= N6_1 AND N6_1 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N6_2 CHECK (0 <= N6_2 AND N6_2 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N6_3 CHECK (0 <= N6_3 AND N6_3 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N6_4 CHECK (0 <= N6_4 AND N6_4 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N6_5 CHECK (0 <= N6_5 AND N6_5 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N7_1 CHECK (0 <= N7_1 AND N7_1 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N7_2_1 CHECK (0 <= N7_2_1 AND N7_2_1 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N7_2_2 CHECK (0 <= N7_2_2 AND N7_2_2 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N7_3_1 CHECK (0 <= N7_3_1 AND N7_3_1 <= 99);
          -- ALTER TABLE missions ADD CONSTRAINT check_N7_3_2 CHECK (0 <= N7_3_2 AND N7_3_2 <= 99);
        SQL
      end
      dir.down do
        execute <<-SQL
          ALTER TABLE missions DROP CONSTRAINT check_N1_1;
          -- ALTER TABLE missions DROP CONSTRAINT check_N1_2;
          -- ALTER TABLE missions DROP CONSTRAINT check_N1_3;
          -- ALTER TABLE missions DROP CONSTRAINT check_N1_4;
          -- ALTER TABLE missions DROP CONSTRAINT check_N1_5;
          -- ALTER TABLE missions DROP CONSTRAINT check_N1_6;
          -- ALTER TABLE missions DROP CONSTRAINT check_N2_1;
          -- ALTER TABLE missions DROP CONSTRAINT check_N2_2;
          -- ALTER TABLE missions DROP CONSTRAINT check_N2_3;
          -- ALTER TABLE missions DROP CONSTRAINT check_N2_4;
          -- ALTER TABLE missions DROP CONSTRAINT check_N2_5;
          -- ALTER TABLE missions DROP CONSTRAINT check_N3_1;
          -- ALTER TABLE missions DROP CONSTRAINT check_N3_2;
          -- ALTER TABLE missions DROP CONSTRAINT check_N3_3;
          -- ALTER TABLE missions DROP CONSTRAINT check_N3_4;
          -- ALTER TABLE missions DROP CONSTRAINT check_N3_5;
          -- ALTER TABLE missions DROP CONSTRAINT check_N4_1;
          -- ALTER TABLE missions DROP CONSTRAINT check_N4_2;
          -- ALTER TABLE missions DROP CONSTRAINT check_N4_3;
          -- ALTER TABLE missions DROP CONSTRAINT check_N4_4;
          -- ALTER TABLE missions DROP CONSTRAINT check_N4_5;
          -- ALTER TABLE missions DROP CONSTRAINT check_N5_1;
          -- ALTER TABLE missions DROP CONSTRAINT check_N5_2;
          -- ALTER TABLE missions DROP CONSTRAINT check_N5_3;
          -- ALTER TABLE missions DROP CONSTRAINT check_N5_4;
          -- ALTER TABLE missions DROP CONSTRAINT check_N5_5;
          -- ALTER TABLE missions DROP CONSTRAINT check_N6_1;
          -- ALTER TABLE missions DROP CONSTRAINT check_N6_2;
          -- ALTER TABLE missions DROP CONSTRAINT check_N6_3;
          -- ALTER TABLE missions DROP CONSTRAINT check_N6_4;
          -- ALTER TABLE missions DROP CONSTRAINT check_N6_5;
          -- ALTER TABLE missions DROP CONSTRAINT check_N7_1;
          -- ALTER TABLE missions DROP CONSTRAINT check_N7_2_1;
          -- ALTER TABLE missions DROP CONSTRAINT check_N7_2_2;
          -- ALTER TABLE missions DROP CONSTRAINT check_N7_3_1;
          -- ALTER TABLE missions DROP CONSTRAINT check_N7_3_2;
        SQL
      end
    end
  end
end
