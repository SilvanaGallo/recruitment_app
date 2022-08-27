class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true
      t.boolean :accepted

      t.timestamps
    end
  end
end
