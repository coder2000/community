class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.belongs_to :society

      t.timestamps
    end
  end
end
