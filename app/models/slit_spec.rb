class SlitSpec < ActiveRecord::Base
  establish_connection "tssapp"
  set_table_name "prd_slit_specification"
  self.primary_keys = [:slit_spec_id, :slit_sub_no]
  
  has_many :coil_film_mapping, :foreign_key => [:slit_spec_id, :slit_sub_no]
  belongs_to :product, :foreign_key => [:product_dtl_id]
  
  attr_accessible :product_dtl_id, :ratio, :remark, :slit_qty, :slit_spec_id, :slit_sub_no, :slit_thickness, :slit_width, :type
end
