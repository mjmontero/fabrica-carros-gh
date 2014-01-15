FactoryGirl.define do

  factory :car_picture, class: "Picture" do
    association :imageable, factory: :car
    name "Foto carro"
  end

  factory :car_part_picture, class: "Picture" do
    association :imageable, factory: :car_part
    name "Foto carro"
  end

end