/*
    Title: CSINTSY Major Course Output 2: Expert System
    Group members:
    1. Nicolas, Aaron
    2. Yung Cheng, Adrian
    3. Guerra, Angelo
    4. Tuballa, Hans
    5. Salih, Shems

    A software implementation of Animal Guesser, a small-scale expert system.

    Inspired by: Andrei Horak's Expert System
    Github repository link: https://github.com/linkyndy/expert-systems
*/

main :-
  intro,
  reset_answers,
  find_animal(Animal),
  describe(Animal), nl.

intro :-
  write('Welcome to Animal Guesser!'), nl,
  write('Pick from these 20 animals and I will try to guess the correct animal by asking you questions!'), nl, nl,
  write('Elephant, Tiger, Lion, Giraffe, Penguin, Zebra, Kangaroo, Cheetah, Dolphin, Panda, Otter, Owl, Fox, Lemur, Sloth, Hedgehog, Bear, Hippopotamus, Gorilla, or Monkey'), nl, nl,
  write('To answer, input the number shown next to each answer, followed by a dot (.)'), nl, nl.


find_animal(Animal) :-
  animal(Animal), !.


% Store user answers to be able to track his progress
:- dynamic(progress/2).


% Clear stored user progress
% reset_answers must always return true; because retract can return either true
% or false, we fail the first and succeed with the second.
reset_answers :-
  retract(progress(_, _)),
  fail.
reset_answers.


% Rules for the knowledge base
animal(elephant):-
    animal_kingdom(mammal),
    animal_diet(herbivore),
    animal_features(has_trunk),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(tiger):-
    animal_kingdom(mammal),
    animal_diet(carnivore),
    animal_features(has_stripes),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(lion):-
    animal_kingdom(mammal),
    animal_diet(carnivore),
    animal_features(has_mane),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(giraffe):-
    animal_kingdom(mammal),
    animal_diet(herbivore),
    animal_features(has_long_neck),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(zebra):-
    animal_kingdom(mammal),
    animal_diet(herbivore),
    animal_features(has_stripes),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(kangaroo):-
    animal_kingdom(mammal),
    animal_diet(herbivore),
    animal_features(has_pouch),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(cheetah):-
    animal_kingdom(mammal),
    animal_diet(carnivore),
    animal_features(has_spots),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(panda):-
    animal_kingdom(mammal),
    animal_diet(omnivore),
    animal_features(has_black_and_white_fur),
	animal_sleep(not_nocturnal),
    animal_fly(no).

animal(otter):-
    animal_kingdom(mammal),
    animal_diet(carnivore),
    animal_features(has_webbed_feet),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(fox):-
    animal_kingdom(mammal),
    animal_diet(omnivore),
    animal_features(has_long_snouts),
    animal_sleep(nocturnal),
    animal_fly(no).

animal(lemur):-
    animal_kingdom(mammal),
    animal_diet(herbivore),
    animal_features(has_black_and_white_fur),
    animal_sleep(nocturnal),
    animal_fly(no).

animal(sloth):-
    animal_kingdom(mammal),
    animal_diet(herbivore),
    animal_features(has_slow_movement),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(hedgehog):-
    animal_kingdom(mammal),
    animal_diet(herbivore),
    animal_features(has_quills),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(bear):-
    animal_kingdom(mammal),
    animal_diet(omnivore),
    animal_features(has_long_snouts),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(hippopotamus):-
    animal_kingdom(mammal),
    animal_diet(herbivore),
    animal_features(has_a_great_bite_force),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(gorilla):-
    animal_kingdom(mammal),
    animal_diet(omnivore),
    animal_features(has_broad_chest),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(monkey):-
    animal_kingdom(mammal),
    animal_diet(omnivore),
    animal_features(has_similarities_to_humans),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(penguin):-
    animal_kingdom(bird),
    animal_diet(carnivore),
    animal_features(has_webbed_feet),
    animal_sleep(not_nocturnal),
    animal_fly(no).

animal(owl):-
    animal_kingdom(bird),
    animal_diet(carnivore),
    animal_features(has_silent_flight),
    animal_sleep(nocturnal),
    animal_fly(yes).

animal(dolphin):-
    animal_kingdom(aquatic),
    animal_diet(carnivore),
    animal_features(has_flippers),
    animal_sleep(not_nocturnal),
    animal_fly(no).


% Questions for the knowledge base
question(animal_kingdom) :-
    write('Is the animal a mammal, bird, or aquatic creature?'), nl.

question(animal_diet) :-
    write('Is the animal a Carnivore, Omnivore, or Herbivore?'), nl.

question(animal_features) :-
    write('What is the specific feature of this animal?'), nl.

question(animal_sleep) :-
    write('Is the animal nocturnal or not nocturnal?'), nl.

question(animal_fly) :-
    write('Does this animal fly'), nl.


% Answers for the knowledge base
answer(mammal) :-
    write('Mammal').

answer(bird) :-
    write('Bird').

answer(aquatic) :-
    write('Aquatic').

answer(carnivore) :-
    write('Carnivore').

answer(omnivore) :-
    write('Omnivore').

answer(herbivore) :-
    write('Herbivore').

answer(has_trunk) :-
    write('Animal has trunk').

answer(has_stripes) :-
    write('Animal has stripes').

answer(has_mane) :-
    write('Animal has mane').

answer(has_long_neck) :-
    write('Animal has long neck').

answer(has_pouch) :-
    write('Animal has pouch').

answer(has_spots) :-
    write('Animal has spots').

answer(has_black_and_white_fur) :-
    write('Animal has black and white fur').

answer(has_webbed_feet) :-
    write('Animal has webbed feet').

answer(has_slow_movement) :-
    write('Animal has slow movement').

answer(has_quills) :-
    write('Animal has quills').

answer(has_flippers) :-
	write('Animal has flippers').

answer(has_long_snouts) :-
    write('Has Long Snouts').

answer(has_similarities_to_humans) :-
    write('Has similarities to humans').

answer(has_silent_flight) :-
    write('Has silent flight').

answer(has_broad_chest) :-
    write('Has broad chest').

answer(has_great_bite_force) :-
    write('Has great bite force').

answer(nocturnal) :-
    write('Is nocturnal').

answer(not_nocturnal) :-
    write('Is not nocturnal').

answer(yes) :-
    write('The animal flies').

answer(no) :-
    write('The animal does not fly').


% Descriptions of Animals
describe(elephant) :-
  write('Elephant'), nl,
  write('a large plant-eating mammal that has a multipurpose tool which is its trunk!').

describe(tiger) :-
  write('Tiger'), nl,
  write('a carnivorous mammal that is known for its ferocity and stripes').

describe(lion) :-
  write('Lion'), nl,
  write('a carnivorous mammal that is known for its pride, leadership, and its gorgeous mane').

describe(giraffe) :-
  write('Giraffe'), nl,
  write('a large plant-eating mammal that is know for its long neck').

describe(zebra) :-
  write('Zebra'), nl,
  write('a medium sized plant-eating mammal, known to move in groups and has black and white stripes').

describe(kangaroo) :-
  write('Kangaroo'), nl,
  write('a medium sized plant-eating mammal that has a pouch in where they place their young').

describe(cheetah) :-
  write('Cheetah'), nl,
  write('a carnivorous mammal that is known for its fast speed').

describe(panda) :-
  write('Panda'), nl,
  write('an omnivore that is well known in China, and has black and white fur').

describe(otter) :-
  write('Otter'), nl,
  write('a small land mammal, that has webbed feet, is flexible and is fast in the water').

describe(fox) :-
  write('Fox'), nl,
  write('a small omnivorous nocturnal mammal that are similar to domestic dogs and cayotes ').

describe(lemur) :-
  write('Lemur'), nl,
  write('a small plant-eating mammal that has a stripped tail').

describe(sloth) :-
  write('Sloth'), nl,
  write('a small plant-eating mammal that is known to be very slow').

describe(hedgehog) :-
  write('Hedgehog'), nl,
  write('a small plant-eating mammal that has quills to protect itself').

describe(bear) :-
  write('Bear'), nl,
  write('an omnivorous mammal that has the ability to fish, climb trees, and run very fast').

describe(hippopotamus) :-
  write('Hippopotamus'), nl,
  write('a large plant-eating mammal that has a strong bite force').

describe(gorilla) :-
  write('Gorilla'), nl,
  write('an omnivorous mammal that has similarities to a monkey, but is bigger and stronger').

describe(monkey) :-
  write('Monkey'), nl,
  write('an omnivorous mammal that is said to have similarities to a human').

describe(penguin) :-
  write('Penguin'), nl,
  write('a small carnivorous bird that could not fly, and is usually seen in icy cold places').

describe(owl) :-
  write('Owl'), nl,
  write('a small carnivorous bird which is known to be silent hunters, as they fly without sound').

describe(dolphin) :-
  write('Dolphin'), nl,
  write('an aquatic carnivore which is known for its intelligence and friendliness towards humans').
             

% Assigns an answer to questions from the knowledge base
animal_kingdom(Answer) :-
    progress(animal_kingdom, Answer).
animal_kingdom(Answer) :-
    \+ progress(animal_kingdom, _),
    ask(animal_kingdom, Answer, [mammal, bird, aquatic]).

animal_diet(Answer) :-
    progress(animal_diet, Answer).
animal_diet(Answer) :-
    \+ progress(animal_diet, _),
    ask(animal_diet, Answer, [carnivore, omnivore, herbivore]).

animal_features(Answer) :-
    progress(animal_features, Answer).
animal_features(Answer) :-
    \+ progress(animal_features, _),
    ask(animal_features, Answer, [has_trunk, has_stripes, has_mane, has_long_neck, has_pouch, has_spots, has_black_and_white_fur, has_webbed_feet, has_slow_movement, has_quills, has_great_bite_force, has_similarities_to_humans, has_silent_flight, has_flippers, has_long_snouts, has_broad_chest]).

animal_sleep(Answer) :-
    progress(animal_sleep, Answer).
animal_sleep(Answer) :-
    \+ progress(animal_sleep, _),
    ask(animal_sleep, Answer, [nocturnal, not_nocturnal]).

animal_fly(Answer) :-
    progress(animal_fly, Answer).
animal_fly(Answer) :-
    \+ progress(animal_fly, _),
    ask(animal_fly, Answer, [yes, no]).


% Outputs a nicely formatted list of answers
% [First|Rest] is the Choices list, Index is the index of First in Choices
answers([], _).
answers([First|Rest], Index) :-
  write(Index), write(' '), answer(First), nl,
  NextIndex is Index + 1,
  answers(Rest, NextIndex).


% Parses an Index and returns a Response representing the "Indexth" element in
% Choices (the [First|Rest] list)
parse(0, [First|_], First).
parse(Index, [First|Rest], Response) :-
  Index > 0,
  NextIndex is Index - 1,
  parse(NextIndex, Rest, Response).


% Asks the Question to the user and saves the Answer
ask(Question, Answer, Choices) :-
  question(Question),
  answers(Choices, 0),
  read(Index),
  parse(Index, Choices, Response),
  asserta(progress(Question, Response)),
  Response = Answer.