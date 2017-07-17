class Seed

  def self.begin
    seed = Seed.new
    seed.generate_quotes
  end

  def generate_breeds
    breed = Breed.create!(
      name: "Ragdoll",
      origin: "America",
      common_name: "Ragdoll",
      characteristics: "The Ragdoll is a cat breed with blue eyes and a distinct colorpoint coat. It is a large and muscular semi-longhair cat with a soft and silky coat. Like all long haired cats, Ragdolls need grooming to ensure their fur does not mat.",
      image: "https://en.wikipedia.org/wiki/Ragdoll#/media/File:Ragdoll_from_Gatil_Ragbelas.jpg",
      fun_fact: "The extreme docility of some individuals has led to the myth that Ragdolls are pain resistant.",
      variations: "Colorpoint, Mitted, Bicolor, Tortoiseshell, Lynx",
      history: "Developed by American breeder Ann Baker in the 1960s, it is best known for its docile and placid temperament and affectionate nature. The name 'Ragdoll' is derived from the tendency of individuals from the original breeding stock to go limp and relaxed when picked up. Particularly popular in both the United Kingdom and the breed's native United States, ragdoll cats often are known as 'dog-like cats' or 'puppy-like cats' due to behaviors such as their tendency to follow people around, their ease at being physically handled, and their relative lack of aggression toward other pets."
    )
    puts "Seed success #{breed.name}"
  end
end


Seed.begin
