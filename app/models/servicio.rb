class Servicio < ActiveRecord::Base
  belongs_to :calificacion_servicio
  belongs_to :solicitud_servicio
  belongs_to :cliente
  belongs_to :reprogramacion
  attr_accessible :fecha, :hora
end
