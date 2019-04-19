USE cassistant;

INSERT INTO user (email, nickname) VALUES
  ('alice@iful.edu.ua', 'Alice'),
  ('bob@iful.edu.ua', 'Bob'),
  ('casey@iful.edu.ua', 'Casey'),
  ('den@iful.edu.ua', 'Den'),
  ('ember@iful.edu.ua', 'Ember');


INSERT INTO conference (id, name, info) VALUES
  (1, 'Modern Programming in Java', 'Fancie Java Conference'),
  (2, 'Cat ipsum', 'Hide when guests come over lick sellotape find empty spot in cupboard and sleep all day Cat ipsum dolor sit amet, hiding behind the couch until lured out by a feathery toy yet hide at bottom of staircase to trip human. I bet my nine lives on you-oooo-ooo-hooo ask to be pet then attack owners hand eat plants, meow, and throw up because i ate plants meow all night, massacre a bird in the living room and then look like the cutest and most innocent animal on the planet but jump up to edge of bath, fall in then scramble in a mad panic to get out so toy mouse squeak roll over. Sniff sniff gimme attention gimme attention gimme attention gimme attention gimme attention gimme attention just kidding i don''t want it anymore meow bye. Leave hair on owner''s clothes. Kitty scratches couch bad kitty. Chase red laser dot i will ruin the couch with my claws. Fight own tail ignore the squirrels, you''ll never catch them anyway. Shred all toilet paper and spread around the house human is washing you why halp oh the horror flee scratch hiss bite but leave fur on owners clothes purr while eating kitten is playing with dead mouse yet headbutt owner''s knee or munch on tasty moths. Spit up on light gray carpet instead of adjacent linoleum refuse to come home when humans are going to bed; stay out all night then yowl like i am dying at 4am purr while eating or fall over dead (not really but gets sypathy) so terrorize the hundred-and-twenty-pound rottweiler and steal his bed, not sorry. Find a way to fit in tiny box purr when being pet and playing with balls of wool and scratch my tummy actually i hate you now fight me yet lick arm hair so make meme, make cute face. Open the door, let me out, let me out, let me-out, let me-aow, let meaow, meaow!. Cat not kitten around attack like a vicious monster and attack the dog then pretend like nothing happened plays league of legends and love and coo around boyfriend who purrs and makes the perfect moonlight eyes so i can purr and swat the glittery gleaming yarn to him (the yarn is from a $125 sweater). Mouse show belly ooh, are those your $250 dollar sandals? lemme use that as my litter box spread kitty litter all over house. Chase ball of string get suspicious of own shadow then go play with toilette paper. Pretend you want to go out but then don''t intently stare at the same spot mark territory, or destroy house in 5 seconds, run outside as soon as door open. Lick left leg for ninety minutes, still dirty give attitude, but lick face hiss at owner, pee a lot, and meow repeatedly scratch at fence purrrrrr eat muffins and poutine until owner comes back. Dead stare with ears cocked stares at human while pushing stuff off a table disappear for four days and return home with an expensive injury; bite the vet so grab pompom in mouth and put in water dish but litter kitter kitty litty little kitten big roar roar feed me. Cough as lick i the shoes make muffins. Scratch leg; meow for can opener to feed me purr when being pet hunt by meowing loudly at 5am next to human slave food dispenser so i''m going to lap some water out of my master''s cup meow hiss at vacuum cleaner swat at dog. Curl up and sleep on the freshly laundered towels hide at bottom of staircase to trip human for stretch, always ensure to lay down in such a manner that tail can lightly brush human''s nose so sleep in the bathroom sink. Give me attention or face the wrath of my claws curl up and sleep on the freshly laundered towels tuxedo cats always looking dapper mesmerizing birds or meowwww tickle my belly at your own peril i will pester for food when you''re in the kitchen even if it''s salad stare at guinea pigs. Scratch at the door then walk away. Sit in box trip owner up in kitchen i want food purr like an angel loved it, hated it, loved it, hated it i like cats because they are fat and fluffy, cat not kitten around . Bite nose of your human unwrap toilet paper so tuxedo cats always looking dapper yet howl on top of tall thing for i vomit in the bed in the middle of the night eat all the power cords. Furrier and even more furrier hairball scratch my tummy actually i hate you now fight me and pee on walls it smells like breakfast for prance along on top of the garden fence, annoy the neighbor''s dog and make it bark yet i shredded your linens for you. Sun bathe.'),
  (3, 'Фантастичні звірі і де їх шукати', 'Aмерикансько-британське фентезі режисера Девіда Єйтса, зняте на основі однойменної книги Джоан Роулінг, яка виступила в ролі автора сценарію та продюсера стрічки. Кінокартина є приквелом серії фільмів про Гаррі Поттера. Прем''єра відбулася 10 листопада 2016 року у Нью-Йорку. В українському прокаті фільм стартував 17 листопада 2016 року. Стрічка отримала 5 номінацій на премію БАФТА, отримавши нагороду за найкращу роботу художника-постановника, та 2 номінації на премію «Оскар», здобувши нагороду в категорії Найкращий дизайн костюмів.');

INSERT INTO topic (id, date_time, name, speaker, summary, conference_id) VALUES
  (1, '2019-05-05 10:15:00', 'Java Collections in a Nutshell', 'James Gosling', 'The Java collections framework is a set of classes and interfaces that implement commonly reusable collection data structures. Although referred to as a framework, it works in a manner of a library.', 1),
  (2, '2019-05-05 12:20:00', 'Java For Dummies', 'Mike Sheridan', 'Java is a general-purpose programming language that is class-based, object-oriented, and specifically designed to have as few implementation dependencies as possible.', 1),
  (3, '2019-05-06 10:00:00', 'Java For Advanced', 'Patrick Naughton', 'Java applications are typically compiled to "bytecode" that can run on any Java virtual machine (JVM) regardless of the underlying computer architecture. The syntax of Java is similar to C and C++, but it has fewer low-level facilities than either of them. ', 1),

  (4, '2019-06-01 10:00:00', 'Коти-вояки: пророцтва починаються', 'Ерін Гантер', 'Серія Warriors була написана британськими письменницями Кейт Кері, Черіт Болдрі, Тай Сазерленд у співавторстві з редактором Вікторією Холмс і під загальним псевдонімом Ерін Гантер. Серія видається у Великій Британії з 2003 року і дотепер. За цей час вона потрапила до списку світових бестселерів за версією «Нью-Йорк Таймс» і стала популярною у багатьох країнах світу. Згодом назву першої серії було змінено на «Коти-вояки: пророцтва починаються».', 2),
  (5, '2019-06-01 12:30:00', 'Коти-вояки: Вогонь і крига', 'Кіт Рудько', 'Продовження історії хатнього котика Рудька, який став вояком Громового Клану диких котів. Полювання у лісових хащах, ночівля під зоряним небом і повна свобода, яку ніхто не обмежує… Про що ще можна мріяти? Та чомусь Вогнесерд все частіше згадує своє минуле. Там були любов, тепло, ласка, а зараз навколо нього — байдужість і нерозуміння. Чи стане він врешті своїм для Клану, за який ладен віддати власне життя?', 2),

  (6, '2019-06-01 8:30:00', 'Fantastic Beasts and Where To Find Them', 'Ньютон «Ньют» Артеміс Фідо Скамандер', 'Some creatures in the series are ordinary animals, but may be imbued with magical properties. Owls, for example, deliver mail and have the ability to find the recipient regardless of their location. Other animals such as cats, frogs and rats do not necessarily have magical abilities.', 3),
  (7, '2019-06-01 10:00:00', 'Розумні чарівні істоти', 'Порпентіна «Тіна» Ґольдштейн', 'Magizoology (a portmanteau of "magic" and "zoology") is the study of magical creatures. A person who studies Magizoology is known as a magizoologist. There are magizoologists who work in the Ministry of Magic, particularly in the Department for the Regulation and Control of Magical Creatures.', 3),
  (8, '2019-06-01 12:00:00', 'Read books or DIE!', 'Ґелерт Ґріндельвальд', 'Magical creatures are an aspect of the fictional wizarding world contained in the Harry Potter series by J. K. Rowling. Throughout the seven books of the series, Harry and his friends come across many of these creatures on their adventures, as well as in the Care of Magical Creatures class at Hogwarts.', 3),
  (9, '2019-06-01 14:30:00', 'Regulation and classification', 'Персіваль Ґрейвз', 'The Department for the Regulation and Control of Magical Creatures of the Ministry of Magic is responsible for overseeing and regulating magical creatures. It is divided into three divisions: the Beast Division, the Being Division, and the Spirit Division.', 3);

INSERT INTO question (id, author_email, body, rate, topic_id) VALUES
  (1, 'alice@iful.edu.ua', 'Why is it faster to process a sorted array than an unsorted array?', 3, 1),
  (2, 'bob@iful.edu.ua', 'Differences between HashMap and Hashtable?', 1, 1),
  (3, 'bob@iful.edu.ua', 'How do I efficiently iterate over each entry in a Java Map?', 3, 1),

  (4, 'bob@iful.edu.ua', 'How do I generate random integers within a specific range in Java?', 4, 2),
  (5, 'casey@iful.edu.ua', 'How do I read / convert an InputStream into a String in Java?', 1, 2),

  (6, 'alice@iful.edu.ua', 'Хто це все написав?', 1, 4),
  (7, 'den@iful.edu.ua', 'Чи стане він врешті своїм для Клану, за який ладен віддати власне життя?', 7, 5),

  (8, 'alice@iful.edu.ua', 'Це конференція по Джаві, або що я тут роблю?', 1, 6),
  (9, 'ember@iful.edu.ua', 'Іклань (Fang) - це величезний чорний пес-вовкодав, господарем якого був Рубеус Геґрід - ключник Гоґвортсу?', 3, 6),
  (10, 'ember@iful.edu.ua', 'Хто переклав Crookshanks як Криволапик?', 3, 6),
  (11, 'ember@iful.edu.ua', 'Хто господар Фенікса Фоукс?', 3, 6),

  (12, 'ember@iful.edu.ua', 'Чому вовкулака при повному місяць перетворюється на вовка?', 3, 7),

  (13, 'alice@iful.edu.ua', 'Хто круче Дементор чи Василіск?', 3, 8),
  (14, 'alice@iful.edu.ua', 'Курс вищої математики круче. Це вам не якась там магія!', 5, 8),
  (15, 'alice@iful.edu.ua', 'В світі Гаррі Поттера існує 10 порід Драконів. Слабо назвати всіх?', 4, 8),
  (16, 'alice@iful.edu.ua', 'Навіщо ти залишив на стіні школи символ смертельних реліквій?', 4, 8),
  (17, 'alice@iful.edu.ua', 'Чи любов Дамблдора була взаємною?', 4, 8);

