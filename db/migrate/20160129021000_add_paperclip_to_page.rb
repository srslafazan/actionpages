class AddPaperclipToPage < ActiveRecord::Migration
  def change
  	add_attachment :pages, :image  
  end
end
