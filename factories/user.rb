Factory.sequence :email do |n|
	"user#{n}@example.com"
end

Factory.define :user, :class => "MmUser" do |u|
	u.username "steve"
	u.email { Factory.next(:email) }
	u.password "foobar"
	u.password_confirmation {|user| user.password }
end

Factory.define :admin, :parent => :user do |u|
	u.permission_level "-1"
end