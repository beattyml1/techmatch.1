FactoryGirl.define do
  factory :job do
    title "MyString"
    hook "MyString"
    description "MyText"
    company nil
    user nil
    must_haves "MyString"
    love_to_haves "MyString"
    nice_to_haves "MyString"
    max_salary "9.99"
    min_years_experience 1
  end
end
