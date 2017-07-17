class Seed

  def self.begin
    Breed.destroy_all
    seed = Seed.new
    seed.generate_breeds
  end

  def generate_breeds
    Breed.create!(
      name: "Ragdoll",
      origin: "America",
      common_name: "Ragdoll",
      characteristics: "The Ragdoll is a cat breed with blue eyes and a distinct colorpoint coat. It is a large and muscular semi-longhair cat with a soft and silky coat. Like all long haired cats, Ragdolls need grooming to ensure their fur does not mat.",
      image: "https://en.wikipedia.org/wiki/Ragdoll#/media/File:Ragdoll_from_Gatil_Ragbelas.jpg",
      fun_fact: "The extreme docility of some individuals has led to the myth that Ragdolls are pain resistant.",
      variations: "Colorpoint, Mitted, Bicolor, Tortoiseshell, Lynx",
      history: "Developed by American breeder Ann Baker in the 1960s, it is best known for its docile and placid temperament and affectionate nature. The name 'Ragdoll' is derived from the tendency of individuals from the original breeding stock to go limp and relaxed when picked up. Particularly popular in both the United Kingdom and the breed's native United States, ragdoll cats often are known as 'dog-like cats' or 'puppy-like cats' due to behaviors such as their tendency to follow people around, their ease at being physically handled, and their relative lack of aggression toward other pets."
    )
    Breed.create!(
      name: "British Shorthair",
      origin: "Great Britain",
      common_name: "British Shorthair",
      characteristics: "The British Shorthair is the pedigreed version of the traditional British domestic cat, with a distinctively chunky body, dense coat and broad face. The most familiar color variant is the 'British Blue', a solid blue-gray with copper eyes, medium tail, but the breed has also been developed in a wide range of other colours and patterns, including tabby and colorpoint.",
      image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Britishblue.jpg/800px-Britishblue.jpg",
      fun_fact: "They are slow to mature in comparison with most cat breeds, reaching full physical development at approximately three years of age.",
      variations: "Although the British Blue remains the most familiar variant, British Shorthairs have been developed in many other colours and patterns. Black, blue, white, red, cream, silver, golden and—most recently—cinnamon and fawn are accepted by all official standards, either solid or in colourpoint, tabby, shaded and bicolour patterns",
      history: "The origins of the British Shorthair most likely date back to the first century AD, making it one of the most ancient identifiable cat breeds in the world. It is thought that the invading Romans initially brought Egyptian domestic cats to Great Britain; these cats then interbred with the local European wildcat population. Over the centuries, their naturally isolated descendants developed into distinctively large, robust cats with a short but very thick coat, the better to withstand conditions on their native islands. Based on artists' representations, the modern British Shorthair is basically unchanged from this initial type.."
    )
    Breed.all.each do |b|
      puts "Made #{b.name}"
    end
  end
end


Seed.begin
