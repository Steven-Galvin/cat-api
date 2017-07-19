FactoryGirl.define do
  factory :user do
    
  end
  factory(:breed) do
    name('Kitty Cat')
    origin("Thailand")
    common_name("Bengal Cat")
    characteristics("Super cool spotted cat")
    image("http://cdn3-www.cattime.com/assets/uploads/2011/12/file_2706_bengal-cat-breed-picture.jpg")
    fun_fact("Really cool cat with really cool facts")
    variations("Lots of em")
    history("This is just filler text about how cool this cat is for being related to big wild cats.")
  end
end
