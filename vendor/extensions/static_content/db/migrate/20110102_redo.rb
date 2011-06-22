class Redo < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.string :slug

      t.timestamps
    end
  
    change_table :pages do |t|
      t.boolean :show_in_header, :default => false, :null => false
      t.boolean :show_in_footer, :default => false, :null => false
      t.string  :foreign_link
      t.integer :position, :default => 1, :null => false
      Page.all(:order => "updated_at ASC").each_with_index{|page,x| page.update_attribute(:position, x+1)}

    end
    add_column :pages, :visible, :boolean
    Page.update_all :visible => true 
    change_column :pages, :visible, :boolean, :default=> true
    add_index(:pages, :slug)
    add_column :pages, :meta_keywords, :string
    add_column :pages, :meta_description, :string
    add_column :pages, :layout, :string
    add_column :pages, :show_in_sidebar, :boolean, :default=> false, :null=>false
  end
end

