class Municipio < ActiveRecord::Base
	has_many :barrios
  attr_accessible :nombre
end
