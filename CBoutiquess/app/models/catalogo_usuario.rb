class CatalogoUsuario < ActiveRecord::Base
  has_many :users
end
