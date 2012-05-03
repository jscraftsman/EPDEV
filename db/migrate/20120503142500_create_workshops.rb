class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :title
      t.text :info_page
      t.string :form_page
      t.string :paypal_link

      t.timestamps
    end
  end
end
