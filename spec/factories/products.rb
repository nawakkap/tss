# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    product_dtl_id "MyString"
    product_display_id "MyString"
    product_name_en "MyString"
    product_name_th "MyString"
    product_name_initial "MyString"
    color "MyString"
    size_detail "MyString"
    thickness 1.5
    thickness_min 1.5
    thickness_rep 1.5
    film_size 1.5
    est_weight 1.5
    est_weight_min 1.5
    actual_weight 1.5
    accounting_weight 1.5
    piece_per_pack 1
    piece_per_truck 1
    wage_per_kilo 1.5
    weight_display "MyString"
    in_production "MyString"
    perct_of_films 1.5
    default_vat "MyString"
    product_type "MyString"
  end
end
