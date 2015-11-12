class Apoderado < ActiveRecord::Base
  validates :nombre, presence: true
  validates :telefono, length: { in:8..8 , message: "ingrese un número correcto ejemplo 123456789"}
end
