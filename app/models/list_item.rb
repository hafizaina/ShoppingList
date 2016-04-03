class ListItem < ActiveRecord::Base

  #this model is only used for an explicit relationship

  belongs_to :list
  belongs_to :item

end
