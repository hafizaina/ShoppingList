class List < ActiveRecord::Base

  has_many :list_items, foreign_key: "list_title"

end
