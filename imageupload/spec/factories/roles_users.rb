# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :roles_user, :class => 'RolesUsers' do
    role_id 1
    user_id 1
  end
end
