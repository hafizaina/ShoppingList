class Item < ActiveRecord::Base

  belongs_to :list, foreign_key: "list_title"

end
