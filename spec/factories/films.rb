# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :film do
    film_id "MyString"
    thickness "MyString"
    width 1.5
    weight 1.5
    unit 1
    film_status "MyString"
    product_dtl_id "MyString"
    slit_date "2013-05-25"
    populate_flag "MyString"
    populate_date "2013-05-25"
    film_price 1.5
  end
end
