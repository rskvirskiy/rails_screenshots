class CreatePreviews < ActiveRecord::Migration
  def change
    create_table :previews do |t|
      t.string :image
      t.string :title
    end
  end
end
