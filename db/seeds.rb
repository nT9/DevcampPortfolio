User.create!(
  email: "test@test.com",
  password: "testing",
  password_confirmation: "testing",
  name: "Admin Bot",
  roles: "site_admin",
)

puts "1 Admin user created"

User.create!(
  email: "test0@test.com",
  password: "testing",
  password_confirmation: "testing",
  name: "Test Bot",
)

puts "1 Regular user created"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"  
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "gibberish",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby Rails",
    body: "moar gibberish",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "moar gibberish",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end


puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}",
  )
end

puts "3 technologies created"