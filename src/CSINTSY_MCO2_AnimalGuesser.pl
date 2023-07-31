% Facts about animals and their characteristics
animal(elephant).
animal(tiger).
animal(lion).
animal(giraffe).
animal(penguin).
animal(zebra).
animal(kangaroo).
animal(cheetah).
animal(dolphin).
animal(panda).
animal(otter).
animal(owl).
animal(fox).
animal(lemur).
animal(sloth).
animal(hedgehog).
animal(bear).
animal(hippopotamus).
animal(gorilla).
animal(monkey).

mammal(elephant).
mammal(tiger).
mammal(lion).
mammal(giraffe).
mammal(zebra).
mammal(kangaroo).
mammal(cheetah).
mammal(panda).
mammal(otter).
mammal(fox).
mammal(lemur).
mammal(sloth).
mammal(hedgehog).
mammal(bear).
mammal(hippopotamus).
mammal(gorilla).
mammal(monkey).

bird(penguin).
bird(owl).

aquatic(dolphin).

% Predicates to define some characteristics
has_trunk(elephant).
has_stripes(tiger).
has_mane(lion).
has_long_neck(giraffe).
has_tail(zebra).
has_pouch(kangaroo).
has_spots(cheetah).
has_black_and_white_fur(panda).
has_webbed_feet(otter).
nocturnal(owl).
nocturnal(fox).
nocturnal(lemur).
nocturnal(bat).
nocturnal(raccoon).

% Relationships
eats(lion, zebra).
eats(lion, giraffe).
eats(tiger, kangaroo).
eats(cheetah, gazelle).
eats(owl, mouse).
eats(owl, small_bird).
eats(bear, salmon).
eats(bear, berries).
eats(gorilla, fruits).
eats(gorilla, leaves).
eats(dolphin, fish).
eats(fox, rabbit).
eats(fox, chicken).

% Rules for inferring some properties based on facts
carnivore(X) :- mammal(X), eats(X, _).

herbivore(X) :- mammal(X), not(carnivore(X)).

omnivore(X) :- mammal(X), bird(X).

can_fly(X) :- bird(X).

is_nocturnal(X) :- nocturnal(X).

% Rule to determine if an animal is a mammal or bird or aquatic
is_mammal(X) :- mammal(X).
is_bird(X) :- bird(X).
is_aquatic(X) :- aquatic(X).

% Additional characteristics and rules
has_feathers(X) :- bird(X).

is_large(X) :- mammal(X), not(bird(X)), (has_trunk(X); has_long_neck(X)).

is_small(X) :- mammal(X), not(bird(X)), not(is_large(X)).

has_aquatic_lifestyle(X) :- aquatic(X), not(mammal(X)).

has_mammals_as_prey(X) :- carnivore(X), eats(X, Prey), mammal(Prey).

% Additional relationships
eats(owl, mouse).
eats(gorilla, leaves).

% Negation in rules
not_nocturnal(X) :- animal(X), not(nocturnal(X)).