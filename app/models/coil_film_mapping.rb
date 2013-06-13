class CoilFilmMapping < ActiveRecord::Base
  establish_connection "tssapp"
  set_table_name "prd_coil_film_mapping"
  self.primary_keys = [:coil_id, :coil_lot_no, :po_id, :film_id]
  
  belongs_to :coil, :foreign_key => [:coil_id, :coil_lot_no, :po_id]
  belongs_to :film, :foreign_key => [:film_id]
  belongs_to :slitter_production, :foreign_key => [:film_id]
  belongs_to :slit_spec, :foreign_key => [:slit_spec_id, :slit_sub_no]
  
  attr_accessible :coil_group_code, :coil_id, :coil_lot_no, :film_id, :po_id, :slit_spec_id, :slit_sub_no
  
end
