class Firstaid < ActiveRecord::Base
  belongs_to :symptom
  belongs_to :vital
  belongs_to :severity
end
