class Product < ActiveRecord::Base
  establish_connection "tssapp"
  set_table_name "prd_product_detail"
  self.primary_keys = [:product_dtl_id]
  
  has_many :slit_spec, :foreign_key => [:product_dtl_id]
  
  attr_accessible :accounting_weight, :actual_weight, :color, :default_vat, :est_weight, :est_weight_min, :film_size, :in_production, :perct_of_films, :piece_per_pack, :piece_per_truck, :product_display_id, :product_dtl_id, :product_name_en, :product_name_initial, :product_name_th, :product_type, :size_detail, :thickness, :thickness_min, :thickness_rep, :wage_per_kilo, :weight_display
end
