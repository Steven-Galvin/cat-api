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
    Breed.create!(
      name: "Siamese",
      origin: "Thailand",
      common_name: "Meezer",
      characteristics: "As a result of generations of selective breeding, they created increasingly long, fine-boned, narrow-headed cats; eventually the modern show Siamese was bred to be extremely elongated, with a lean, tubular body, long, slender legs, a very long, very thin tail that tapers gradually into a point and a long, wedge-shaped head topped by extremely large, wide-set ears.",
      image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Britishblue.jpg/800px-Britishblue.jpg",
      fun_fact: "Both a description and depiction of the Wichienmaat (Siamese cat) first appears in a collection of ancient manuscripts called the Tamra Maew (The Cat-Book Poems) thought to originate from the Ayutthaya Kingdom (1351 to 1767 AD). Over a dozen are now kept in the National Library of Thailand, while others have resurfaced outside of Thailand and are now in the British Library and National Library of Australia.",
      variations: "names for the traditional variety are 'Old-style Siamese', 'Classic Siamese', and 'Applehead' (originally a derogatory nickname coined by breeders of modern-type Siamese).",
      history: "By 1886, another pair (with kittens) was imported to the UK by Eva Forestier Walker (surnamed Vyvyan after 1887 marriage)[7] and her sister, Ada. Compared to the British Shorthair and Persian cats that were familiar to most Britons, these Siamese imports were longer and less 'cobby' in body types, had heads that were less rounded with wedge-shaped muzzles and had larger ears. These differences and the pointed coat pattern, which had not been seen before in cats by Westerners, produced a strong impression—one early viewer described them as 'an unnatural nightmare of a cat.' Over the next several years, fanciers imported a small number of cats, which together formed the base breeding pool for the entire breed in Britain. It is believed that most Siamese in Britain today are descended from about eleven of these original imports. In their early days in Britain, they were called the 'Royal Cat of Siam', reflecting reports that they had previously been kept only by Siamese royalty"
    )
    Breed.create!(
      name: "Persian cat",
      origin: "Iran",
      common_name: "Persian Longhair",
      characteristics: "The Persian cat is a long-haired breed of cat characterized by its round face and short muzzle.",
      image: "https://en.wikipedia.org/wiki/Persian_cat#/media/File:Shaded_silver_Persian_Cat_Missionhill_Cosmic_Rainstorm.jpg",
      fun_fact: "In Middle East they are widely known as Iranian cat and in Iran they are known as Shirazi cat.The first documented ancestors of the Persian were imported into Italy from Iran (Persia) around 1620.",
      variations: "The Cat Fanciers' Association (CFA), of the United States, groups the breed into four coat-pattern divisions, but differently: solid, silver and golden (including chinchilla and shaded variants, and blued subvariants), shaded and smoke (with several variations of each, and a third sub-categorization called shell), tabby (only classic, mackerel, and patched [spotted], in various colors), parti-color (in four classes, tortoiseshell, blue-cream, chocolate tortie, and lilac-cream, mixed with other colors), calico and bi-color (in around 40 variations, broadly classified as calico, dilute calico, and bi-color), and Himalayan (white-to-fawn body with point coloration on the head, tail and limbs, in various tints). CFA base colors are white, black, blue, red, cream, chocolate, and lilac. There are around 140 named CFA coat patterns for which the Himalayan qualifies, and 20 for the Himalayan sub breed. These coat patterns encompass virtually all of those recognized by CFA for cats generally. Any Persian permissible in TICA's more detailed system would probably be accepted in CFA's, simply with a more general name, though the organizations do not mix breed registries.",
      history: "The first Persian cat was presented at the first organized cat show, in 1871 in the Crystal Palace in London, England, organized by Harrison Weir. As specimens closer to the later established Persian conformation became the more popular types, attempts were made to differentiate it from the Angora. The first breed standard (then called a points of excellence list) was issued in 1889 by cat show promoter Weir. He stated that the Persian differed from the Angora in the tail being longer, hair more full and coarse at the end and head larger, with less pointed ears. Not all cat fanciers agreed with the distinction of the two types, and in the 1903 work The Book of the Cat, Francis Simpson states that 'the distinctions, apparently with hardly any difference, between Angoras and Persians are of so fine a nature that I must be pardoned if I ignore the class of cat commonly called Angora'."
    )
    Breed.create!(
      name: "Maine Coon",
      origin: "America",
      common_name: "Gentle giants",
      characteristics: "The Maine Coon is one of the largest domesticated breeds of cat. It has a distinctive physical appearance and valuable hunting skills.",
      image: "https://en.wikipedia.org/wiki/Maine_Coon#/media/File:Maine_Coon_cat_by_Tomitheos.JPG",
      fun_fact: "It is one of the oldest natural breeds in North America, specifically 'native' to the state of Maine (though the feline was simply introduced there), where it is the official state cat.",
      variations: "Maine Coons can have any colors that other cats have. Colors indicating crossbreeding, such as chocolate, lavender, the Siamese pointed patterns or the 'ticked' patterns, are not accepted by some breed standards (the 'ticked' pattern, for example, is accepted by TICA). The most common pattern seen in the breed is brown tabby. All eye colors are accepted under breed standards, with the exception of the occurrence of blue-colored or odd-eyes (i.e. two eyes of different colors) in cats possessing coat colors other than white.",
      history: "The ancestral origins of the Maine Coon are unknown — there are only speculation and folk tales. One such folk tale involves Marie Antoinette, the Queen of France, who was executed in 1793. The story goes that before her death, Antoinette attempted to escape France with the help of Captain Samuel Clough. She loaded Clough's ship with her most prized possessions, including six of her favorite Turkish Angora cats. Although she did not make it to the United States, her pets safely reached the shores of Wiscasset, Maine, where they bred with other short-haired breeds and developed into the modern breed of the Maine Coon."
    )
    Breed.create!(
      name: "American Shorthair",
      origin: "America",
      common_name: "American Shorthair",
      characteristics: "Although it is not an extremely athletic cat, the American Shorthair has a large, powerfully-built body. According to the breed standard of the Cat Fanciers' Association, the American Shorthair is a true breed of working cat. They have round faces and short ears.",
      image: "https://en.wikipedia.org/wiki/American_Shorthair#/media/File:14_years_old_american_shorthair.jpg",
      fun_fact: "The American Shorthair (ASH) is a breed of domestic cat believed to be descended from European cats brought to North America by early settlers to protect valuable cargo from mice and rats.",
      variations: "The American Shorthair is recognized in more than eighty different colors and patterns ranging from the brown-patched tabby to the blue-eyed white, the shaded silvers, smokes and cameos to the calico van, and many colors in between. Some even come in deep tones of black, brown, or other blends and combinations. Generally, only cats showing evidence of crossbreeding resulting in the colors chocolate, sable, lavender, lilac, or the point-restricted pattern of the Siamese family are disqualified from being shown.",
      history: "When settlers sailed from Europe to North America, they carried cats on board (ships' cats) to protect the stores from mice—for instance, the cats that came over on the Mayflower with the Pilgrims to hunt rats on the ship and in the colony. Many of these cats landed in the New World, interbred, and developed special characteristics to help them cope with their new life and climate. Early in the 20th century, a selective breeding program was established to develop the best qualities of these cats."
    )
    Breed.create!(
      name: "Abyssinian cat",
      origin: "Egypt",
      common_name: "Abyssinian cat",
      characteristics: "The Abyssinian is a slender, fine-boned, medium-sized cat. The head is moderately wedge shaped, with a slight break at the muzzle, and nose and chin ideally forming a straight vertical line when viewed in profile. They have alert, relatively large pointed ears. The notably expressive eyes are almond shaped and are gold, green, hazel or copper depending on coat color. The legs should be long in proportion to a graceful body, with small oval paws; the tail is likewise long and tapering.",
      image: "https://en.wikipedia.org/wiki/Abyssinian_cat#/media/File:Gustav_chocolate.jpg",
      fun_fact: "The 2008 study The Ascent of Cat Breeds: Genetic Evaluations of Breeds and Worldwide Random-bred Populations by Lipinski et al. conducted at UC Davis by the team led by leading feline geneticist Dr Leslie Lyons found that the Abyssinian has a low level of genetic diversity, a heterozygosity value of 0.45 within a range of 0.34-0.69 for all breeds studied, and has genetic markers common to both Southeast Asian and Western breeds indicating that cats from both Asia and Europe were used to create the breed.",
      variations: "Abyssinian kittens are born with dark coats that gradually lighten as they mature, usually over several months. The adult coat should not be excessively short and is ideally fine, dense and close-lying, silky to the touch. The ticked or agouti effect that is the trademark of the breed—genetically a variant of the tabby pattern—should be uniform over the body, although the ridge of the spine and tail, back of the hind legs and the pads of the paws are always noticeably darker. Each hair has a light base with three or four bands of additional color growing darker towards the tip. The base colour should be as clear as possible; any extensive intermingling with grey is considered a serious fault. A tendency to white on the chin is common but likewise must be minimal. The typical tabby M-shaped marking is often found on the forehead.",
      history: "The Abyssinian cat as it is known today was bred in Great Britain. The name 'Abyssinian' refers to Ethiopia, in reference to widely-spread stories of British soldiers deployed to North Africa in the nineteenth century returning home with kittens purchased from local traders. Despite its temperment, this breed has a charming history."
    )
    Breed.create!(
      name: "Burmese cat",
      origin: "Thailand",
      common_name: "Burmese cat",
      characteristics: "The two standards differ mainly in head and body shape. The British or traditional ideal tends toward a more slender, long-bodied cat with a wedge-shaped head, large pointed ears, long tapering muzzle and moderately almond-shaped eyes. The legs should likewise be long, with neat oval paws. The tail tapers to medium length. The American (also called 'contemporary') Burmese is a noticeably stockier cat, with a much broader head, round eyes and distinctively shorter, flattened muzzle; the ears are wider at the base. Legs and tail should be proportionate to the body, medium-length, and the paws also rounded.",
      image: "https://en.wikipedia.org/wiki/Burmese_cat#/media/File:Blissandlucky11.jpg",
      fun_fact: "Most modern Burmese are descendants of one female cat called Wong Mau, which was brought from Burma to America in 1930 and bred with American Siamese.",
      variations: "Originally, all Burmese cats were dark brown (sable), but are now available in a wide variety of colours; formal recognition of these also varies by standard.",
      history: "In 1871, Harrison Weir organised a cat show at the Crystal Palace. A pair of Siamese cats were on display that closely resembled modern American Burmese cats in build, thus probably similar to the modern Tonkinese breed. The first attempt to deliberately develop the Burmese in the late 19th century in Britain resulted in what were known as Chocolate Siamese rather than a breed in their own right; this view persisted for many years, encouraging crossbreeding between Burmese and Siamese in an attempt to more closely conform to the Siamese build. The breed thus slowly died out in Britain."
    )
    Breed.create!(
      name: "Bengal cat",
      origin: "America",
      common_name: "Leopard cat",
      characteristics: "The Bengal is a domestic cat breed developed to act like exotic jungle cats such as leopards, ocelots, margays and clouded leopards.",
      image: "https://en.wikipedia.org/wiki/Bengal_cat#/media/File:Bangie_the_Bengal_Cat.jpg",
      fun_fact: "Bengal cats have 'wild-looking' markings, such as large spots, rosettes, and a light/white belly, and a body structure reminiscent of the leopard cat.",
      variations: "Bengal cats are generally a bright orange to light brown colour, although pale or off-white 'snow' Bengals also exist, and are popular among owners.",
      history: "The earliest mention of a confirmed ALC × domestic cross was in 1934, in a Belgian scientific journal, and in 1941, a Japanese cat publication printed an article about one that was kept as a pet. Jean Mill (née Sugden), the person who was later a great influence on the development of the modern Bengal breed, submitted a term paper for her genetics class at UC Davis on the subject of crossbreeding cats in 1946."
    )
    Breed.create!(
      name: "Sphynx cat",
      origin: "Toronto",
      common_name: "Hairless cat",
      characteristics: "The Sphynx is a breed of cat known for its lack of coat (fur).",
      image: "https://en.wikipedia.org/wiki/Sphynx_cat#/media/File:Sphinx2_July_2006.jpg",
      fun_fact: "Sphynxes are known for their extroverted behavior. They display a high level of energy, intelligence, curiosity, and affection for their owners. They are one of the more dog-like breeds of cats, frequently greeting their owners at the door and friendly when meeting strangers.",
      variations: "Their skin is the color that their fur would be, and all the usual cat markings (solid, point, van, tabby, tortie, etc.) may be found on Sphynx skin.",
      history: "Although hairless cats have been reported throughout history, breeders in Europe have been working on the Sphynx breed since the early 1960s. Two different sets of hairless felines discovered in North America in the 1970s provided the foundation cats for what was shaped into the existing Sphynx breed."
    )
    Breed.create!(
      name: "Exotic Shorthair",
      origin: "America",
      common_name: "Exotic Shorthair",
      characteristics: "The Exotic Shorthair is a breed of cat developed to be a short-haired version of the Persian. The Exotic is similar to the Persian in many ways, including temperament and conformation, a flat nose and face with the exception of the short dense coat.",
      image: "https://en.wikipedia.org/wiki/Exotic_Shorthair#/media/File:Brown_Exotic_Shorthair_Kitten.jpg",
      fun_fact: "Because of the regular use of Persian as outcrosses, some Exotics may carry a copy of the recessive longhair gene. When two such cats mate, there is a 1 in 4 chance of each offspring being longhaired. Ironically, longhaired Exotics are not considered Persians by CFA.",
      variations: "All Persian colors are recognized.",
      history: "In the late 1950s, the Persian was used as an outcross by some American Shorthair (ASH) breeders. This was done in secret in order to improve their body type, and crosses were also made with the Russian Blue and the Burmese. The crossbreed look gained recognition in the show ring, but unhappy American Shorthair breeders successfully produced a new breed standard that would disqualify ASH that showed signs of crossbreeding. One ASH breeder who saw the potential of the Persian/ASH cross proposed and eventually managed to get the Cat Fanciers' Association judge and American Shorthair breeder Jane Martinke to recognize them as a new breed in 1966, under the name Exotic Shorthair."
    )
    Breed.create!(
      name: "Russian Blue",
      origin: "Russia",
      common_name: "Russian Blue",
      characteristics: "The Russian Blue is a cat breed that comes in colors varying from a light shimmering silver to a darker, slate grey. They develop close bonds with their owners and are sought out as pets due to their personalities, beauty and coat. It is their short, dense coat which has been the hallmark of the Russian breed for more than a century. The dense coat stands out from the body and one can draw patterns in the coat that will stay until one smoothes them out again.",
      image: "https://upload.wikimedia.org/wikipedia/commons/7/7b/Cat_Janna.jpg",
      fun_fact: "The Russian Blue is a naturally occurring breed that may have originated in the port of Arkhangelsk, Russia.",
      variations: "Russian Whites and Russian Blacks",
      history: "They are also sometimes called Archangel Blues. It is believed that sailors took Russian Blues from the Archangel Isles to Great Britain and Northern Europe in the 1860s. The first recorded appearance outside of Russia was in 1875 at the Crystal Palace in England, as the Archangel Cat. The Russian Blue competed in a class including all other blue cats until 1912, when it was given its own class."
    )
    Breed.all.each do |b|
      puts "Made #{b.name}"
    end
  end
end


Seed.begin
