# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :coil do
    coil_id "MyString"
    coil_lot_no 1
    po_id "MyString"
    thickness "MyString"
    width 1.5
    weight 1.5
    coil_received_date "2013-05-25"
    coil_status "MyString"
  end
end
