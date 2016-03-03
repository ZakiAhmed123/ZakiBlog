class AddFieldsToPersonalBlog < ActiveRecord::Migration
  def change
    change_table :personal_blogs do |t|
      t.string :title
      t.string :author
      t.string :subtitle
    end
  end
end
