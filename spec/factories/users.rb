FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    # Use `sequence` method in a factory to get a counter of
    # how many times the factory was used as argument to its
    # passed in block. This especially useful when dealing with
    # a column that has a unique validation.
    sequence(:email) { |n| Faker::Internet.email.sub("@", "-#{n}@") }
    # email { Faker::Internet.email } # This is what initially put in but the uniqueness
    # of the email validation fails
    password { "supersecret" }
  end
end