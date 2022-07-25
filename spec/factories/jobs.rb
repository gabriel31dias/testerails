FactoryBot.define do
  factory :job do
    title { "MyString" }
    description { "MyString" }
    start_date { "2022-07-21" }
    end_date { "2022-07-21" }
    status { "" }
    skills { "MyString" }
    recruiter_id { 1 }
  end
end
