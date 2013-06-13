class Coil < ActiveRecord::Base
  establish_connection "tssapp"
  set_table_name "prd_coil_information"
  self.primary_keys = [:coil_id, :coil_lot_no, :po_id]
  
  has_many :coil_film_mapping, :foreign_key => [:coil_id, :coil_lot_no, :po_id]
  
  attr_accessible :coil_id, :coil_lot_no, :coil_received_date, :coil_status, :po_id, :thickness, :weight, :width, :actual_slitted_date, :time, :machine, :remark
  
  default_scope order("coil_received_date DESC")
  
  scope :past3month, lambda {
    where(:coil_received_date => 90.days.ago.beginning_of_day..Date.yesterday.end_of_day)
  }
  
  def self.slitted_n_days(n)
    coils = []
    
    films = Film.where(:slit_date => n.days.ago.beginning_of_day..Date.today.end_of_day)
    films.each do |f|
      if f.coil_film_mapping.slit_sub_no == 1 and f.coil_film_mapping.coil.coil_status == '2'
        coils << f.coil_film_mapping.coil
      end
    end
    
    return coils
  end
end
