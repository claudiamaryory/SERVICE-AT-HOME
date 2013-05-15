class CalificacionServicio < ActiveRecord::Base
  belongs_to :cliente
  attr_accessible :observacion
end
