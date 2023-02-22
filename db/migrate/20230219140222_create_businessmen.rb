class CreateBusinessmen < ActiveRecord::Migration[7.0]
  def change
    create_table :businessmen do |t|
       t.string :b_company
       t.string :b_name
       t.string :b_email
       t.integer :b_age
       t.integer :b_contact
      t.timestamps
    end
  end
end
