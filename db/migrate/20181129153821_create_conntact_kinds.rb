class CreateConntactKinds < ActiveRecord::Migration[5.2]
  def change
    create_table :conntact_kinds do |t|
      t.references :contact, foreign_key: true
      t.references :kind, foreign_key: true

      t.timestamps
    end
  end
end
