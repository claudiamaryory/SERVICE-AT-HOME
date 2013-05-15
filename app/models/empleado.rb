class Empleado < ActiveRecord::Base
  attr_accessible :apellido, :celular, :documento, :email, :nombre, :telefono
end
