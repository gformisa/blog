class Comment < ApplicationRecord
  belongs_to :article # This line defines a belongs_to association between the Comment model and the Article model.
end
