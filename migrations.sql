CREATE DATABASE quotes;

\c quotes


CREATE TABLE leslie (id SERIAL PRIMARY KEY, sentence TEXT, category VARCHAR(255), season INT, ep INT);

-- DATABASE --

INSERT INTO leslie (sentence, category, season, ep) VALUES ('(Leslie looks at painting of herself) Every great work of art contains a message, and the message of this painting is,''Get out of my way unless you want an arrow in your ass.''', 'gurl', 2, 15);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('I''m a feminist, okay? I would never ever go to a strip club. I''ve gone on record that if I had to have a stripper''s name, it would be Equality.', 'gurl', 2, 11);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('Uteruses before duderuses.', 'gurl',	2,	2);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('Ovaries before brovaries.', 'gurl', 2, 2);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('I am a goddess, a glorious female warrior.', 'gurl', 4, 4);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('I am big enough to admit that I am often inspired by myself.', 'inspo', 5, 3);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('We need to remember what''s important in life: friends, waffles, work. Or waffles, friends, work. Doesn''t matter, but work is third.', 'inspo',	3,	13);

INSERT INTO leslie (sentence, category, season, ep) VALUES('(Leslie speaking to her phone) Hey, Leslie. It''s Leslie. Hang in there. I love you. Bye.',	'inspo', 2,	22);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('I would like to be president someday, so no, I''ve not smoked marijuana. I ate a brownie once at a party in college. It was intense. It was kind of indescribable, actually. I felt like I was floating. Turns out there wasn''t any pot in the brownie. It was just an insanely good brownie.', 'inspo', 2,	2);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('The only way to beat the beast is to find the beast within.', 'inspo',	2,	10);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('No matter what I do, literally nothing bad can happen to me. I''m like a white male U.S. senator.', 'inspo',	6, 8);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('You are a beautiful, talented, brilliant, powerful musk ox.', 'inspo',	5, 6);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('I''m going to be direct and honest with you. I would like a glass of red wine and I''ll take the cheapest one you have because I can''t tell the difference.', 'inspo', 4, 1);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('You go big, or you go home.', 'inspo',	3, 1);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('(Drunk Leslie) I''m fart and I''m smunny and I''m a PRIZE.', 'inspo', 2,	4);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('(Points to mural) Yeah, this one''s a beauty. You know, in the 1880s, there were a few years that were pretty rough and tumble in Pawnee. This depicts kind of a famous fight between Reverend Bradley and Anna Beth Stevenson, a widowed mother of seven. The original title of this was "A Lively Fisting." But, you know, they had to change it. For obvious reasons.', 'laugh', 2,	3);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('The thing about youth culture is that I don''t understand it.', 'obs',	2,	1);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('(Talking about horrible dates) Uh, one time I accidentally drank an entire bottle of vinegar; I thought it was terrible wine. Once I went out with a guy who wore 3D glasses the entire evening. Oh, one time I rode in a sidecar on a guy''s motorcycle and the sidecar detached and went down a flight of stairs. Another time, I went to a really boring movie with a guy and while I was asleep, he tried to pull out one of my teeth. I literally woke up with his hand in my mouth. We went out a couple times after that but then it got weird.', 'men', 2,	4);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('What''s wrong with me? Why do good guys hate me and gross guys love me? Diagnose me, you''re a nurse.', 'men',	3, 10);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('Wanna hear something awful? He didn''t even know who Madeline Albright was.', 'men', 2,	3);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('Guys love it when you can show them you''re better than they are at something they love.', 'men',	2,	10);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('One person''s annoying is another''s inspiring and heroic.', 'obs', 6,	5);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('What I hear when I''m being yelled at is people caring loudly at me.', 'obs',	1,	1);

INSERT INTO leslie (sentence, category, season, ep) VALUES('I''m organizing my agenda. Wait, that doesn''t sound fun...jammin'' on my planner!', 'obs',	3, 10);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('Look, I don''t like to throw around the word ''butthead'' too often. If you call everybody a butthead then it kinda loses its impact. But I can say without hesitation that Tom is being a real dick.', 'obs',	4, 5);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('Ron: ''Leslie, what do we do when we get this angry?'' Leslie: ''We count backwards from 1,000 by sevens, and we think of warm brownies.', 'obs', 2,	23);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('I AM civil. He''s the stupid garbage head doo-doo face.', 'obs',	7, 1);
INSERT INTO leslie (sentence, category, season, ep) VALUES ('(To Tom) Every time I want you to shut up from now on.', 'obs', 3,	10);

INSERT INTO leslie (sentence, category, season, ep) VALUES (' I can''t kill the possum, ''cause it might be innocent. I can''t let the possum go, because it might be guilty. Can''t make a good soup, can''t do a handstand in a pool. Can''t spell the word lieutenant. There are a lot of cant''s in my life right now.', 'obs',	2,	18);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('He is attractive and charming, and his family employs half the town. But so what? I am a lifelong government bureaucrat who''s well-versed on the issues. And those are the kind of sexy qualifications that win elections.', 'obs',	4,	12);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('I slept seven hours, which is twice as long as I usually sleep so I''m a little disoriented.', 'obs',	3, 8);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('I''m gonna get drunk, and then I''m gonna order a 3 course meal where each course is made of dessert.', 'obs',	4,	17);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('Now if you''ll excuse me, I''m about to endorse 10 beers into my mouth because this has been an incredibly stressful evening.', 'obs',	4,	15);

INSERT INTO leslie (sentence, category, season, ep) VALUES ('Everything hurts and I''m dying.', 'obs', 4,	17);
