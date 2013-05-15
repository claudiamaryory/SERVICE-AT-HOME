class Barrio < ActiveRecord::Base
  belongs_to :municipio
  attr_accessible :nombre, :municipio_id
end
