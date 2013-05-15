class Cliente < ActiveRecord::Base
  belongs_to :barrio
  belongs_to :municipio
  attr_accessible :apellido, :celular, :direccion, :documento, :email, :nombre, :telefono
end
