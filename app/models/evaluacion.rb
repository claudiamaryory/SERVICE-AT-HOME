class Evaluacion < ActiveRecord::Base
  belongs_to :empleado
  belongs_to :servicio
  attr_accessible :observacion
end
