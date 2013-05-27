class Film < ActiveRecord::Base
  establish_connection "tssapp"
  set_table_name "prd_film_information"
  self.primary_keys = [:film_id]
  
  has_one :coil_film_mapping, :foreign_key => [:film_id]
  
  attr_accessible :film_id, :film_price, :film_status, :populate_date, :populate_flag, :product_dtl_id, :slit_date, :thickness, :unit, :weight, :width
  
  default_scope order("slit_date DESC")
  
  scope :past3month, lambda {
    where(:slit_date => 90.days.ago.beginning_of_day..Date.yesterday.end_of_day)
  }
end
