-- Insert sample data into user_profile table
INSERT INTO user_profile (username, first_name, last_name, password, salt, description, profile_img)
VALUES
('pioli', 'Alessandro', 'Coli', 'password1', 'salt', 'il capo del db', 'pioli-propic.jpg'),
('sbobito', 'Dario', 'Berti', 'password2', 'salt', NULL, 'sbobito-propic.jpg'),
('mirco', 'Mirco', 'Terenzi', 'password3', 'salt', 'mi piacciono i gattini', 'mirco-propic.jpg'),
('example', 'Example', 'Profile', 'd30275eac88d1c1d5ce0334374221cbf811efb7458ad91e58c1d9f13b816acc2567370301d58561089253b6c1adb645f1ece0c69d88b5679d3190190805c2999', 'e372f1c3b92ad9571cb2e6a5a97c956d88e94be5523ae4766796332c413685d34aff99e795b00d349cf455bfb0f543f95a552a23669b4d66af56084cd3eaf230', 'Profile used as an example to test the functionality of the social network without creating a new profile', 'example.jpg'),
('tech_guru', 'Alex', 'Smith', 'password5', 'salt', 'Software engineer with a love for technology.', NULL),
('health_enthusiast', 'Sophia', 'Miller', 'password6', 'salt', 'Promoting a healthy lifestyle.', NULL),
('adventure_seeker', 'Ethan', 'Davis', 'password7', 'salt', 'Exploring the world one adventure at a time.', NULL),
('music_lover', 'Olivia', 'Clark', 'password8', 'salt', 'Passionate about music and concerts.', NULL),
('bookworm', 'Daniel', 'White', 'password9', 'salt', 'Avid reader and literature enthusiast.', NULL),
('fitness_freak', 'Ava', 'Wilson', 'password10', 'salt', 'Dedicated to fitness and well-being.', NULL),
('foodie_explorer', 'Mia', 'Martin', 'password11', 'salt', 'Exploring diverse cuisines and flavors.', NULL),
('coding_enthusiast', 'Liam', 'Thompson', 'password12', 'salt', 'Passionate about coding and programming.', NULL),
('nature_lover', 'Emma', 'Anderson', 'password13', 'salt', 'Connecting with nature and wildlife.', NULL);


-- Insert sample data into topic table
INSERT INTO topic (name)
VALUES
('Technology'),
('Art'),
('Science'),
('History'),
('Travel'),
('Music'),
('Cinema'),
('Cars'),
('Boats'),
('Nature'),
('Space'),
('Books'),
('Healthcare');

-- Insert sample data into post table
INSERT INTO post (title, short_description, long_description, amount_requested, date, user, topic)
VALUES
('Tech Project 1', NULL, 'This is a sample tech project description.', 500, '2023-01-01', 1, 'Technology'),
('Art Exhibition 1', 'Join us for a mesmerizing art exhibition.', 'An event showcasing various artworks from talented artists.', 300, '2023-02-15', 2, 'Art'),
('History Symposium', 'Exploring historical events and their impact on society.', 'Join us for an informative symposium on significant historical moments.', 200, '2023-03-10', 3, 'History'),
('Science Fair', NULL, 'An exciting science fair featuring innovative projects and experiments.', 400, '2023-04-05', 4, 'Science'),
('Healthcare Workshop', 'Learn about maintaining a healthy lifestyle.', 'Join our workshop to discover tips for better healthcare.', 250, '2023-05-20', 5, 'Healthcare'),
('Artistic Creations', 'Express yourself through art!', 'An opportunity to showcase your artistic creations in a community event.', 350, '2023-06-15', 6, 'Art'),
('Tech Project 2', NULL, 'Collaborative tech project seeking support for development.', 600, '2023-07-01', 7, 'Technology'),
('Historical Lecture Series', 'Exploring different eras and historical figures.', 'A series of lectures on captivating historical topics.', 300, '2023-08-10', 8, 'History'),
('Science Symposium', NULL, 'Engage in discussions on cutting-edge scientific advancements.', 450, '2023-09-05', 9, 'Science'),
('Healthcare Awareness Campaign', 'Promoting awareness for a healthier community.', 'Join our campaign to spread awareness about healthcare.', 200, '2023-10-20', 10, 'Healthcare'),
('Art Gala Night', 'A night of art, culture, and entertainment.', 'Experience the beauty of diverse artworks in an elegant gala setting.', 400, '2023-11-15', 11, 'Art'),
('Tech Innovations Expo', NULL, 'Explore the latest technological innovations and breakthroughs.', 550, '2023-12-01', 12, 'Technology'),
('Historical Documentary Screening', 'Journey through significant historical events.', 'Join us for an enlightening documentary screening and discussion.', 250, '2023-01-10', 13, 'History'),
('Art Workshop: Abstract Painting', NULL, 'Learn the techniques of abstract painting from experienced artists.', '300', '2023-02-20', 1, 'Art'),
('Science Quiz Competition', 'Test your knowledge in a fun and challenging science quiz competition.', 'Exciting rounds covering various scientific disciplines.', 200, '2023-03-05', 2, 'Science'),
('Healthcare Symposium', 'An in-depth exploration of healthcare challenges and solutions.', 'Engage with experts and contribute to the healthcare discourse.', 350, '2023-04-15', 3, 'Healthcare'),
('Tech Talk: Future Trends', 'Stay ahead with insights into the future trends in technology.', 'Tech experts share their vision for the future in this engaging talk.', 250, '2023-05-01', 4, 'Technology'),
('Historical Walking Tour', 'Step back in time with a historical walking tour of significant landmarks.', 'Explore the history of the city with knowledgeable guides.', 300, '2023-06-10', 5, 'History'),
('Artisan Market: Local Creations', 'Support local artists and creators at this vibrant artisan market.', 'Discover unique handmade products and artistic treasures.', 400, '2023-07-15', 6, 'Art'),
('Health and Wellness Seminar', 'Empower yourself with knowledge about holistic health and wellness.', 'Experts share insights on nutrition, mindfulness, and overall well-being.', 300, '2023-08-01', 7, 'Healthcare'),
('Tech Hackathon', NULL, 'A coding marathon to solve real-world problems and showcase innovative solutions.', 500, '2023-09-05', 8, 'Technology'),
('Historical Costume Party', 'Travel through time by dressing up in historical costumes for a night of fun.', 'Experience the charm of different eras with themed music and activities.', 200, '2023-10-20', 9, 'History'),
('Science Exhibition for Kids', 'Inspire young minds with a hands-on science exhibition tailored for children.', 'Interactive displays and experiments for a day of scientific exploration.', 250, '2023-11-15', 10, 'Science'),
('Healthcare Charity Run', 'Run for a cause to support healthcare initiatives and community health projects.', 'A charity run promoting fitness and contributing to a healthier community.', 300, '2023-12-01', 11, 'Healthcare'),
('Art Photography Contest', 'Showcase your photography skills in this art-themed photography contest.', 'Capture the beauty of art in your photographs and win exciting prizes.', 400, '2023-01-10', 12, 'Art'),
('Tech Workshop: Artificial Intelligence Basics', 'Learn the fundamentals of AI and its applications in this interactive workshop.', 'Hands-on exercises and discussions led by industry experts.', 350, '2023-02-20', 13, 'Technology'),
('Historical Trivia Night', 'Test your knowledge with historical trivia questions and compete for prizes.', 'An evening filled with history, fun, and friendly competition.', 200, '2023-03-05', 1, 'History'),
('Science Outreach Program', 'Engage with the local community through interactive science demonstrations and activities.', 'Inspire interest in science and promote scientific curiosity.', 300, '2023-04-15', 2, 'Science'),
('Health and Fitness Expo', 'Explore the latest trends in health and fitness with informative sessions and product showcases.', 'Experts share tips for maintaining a healthy and active lifestyle.', 250, '2023-05-01', 3, 'Healthcare'),
('Artistic Mural Painting Project', 'Transform public spaces with vibrant murals created by local artists and volunteers.', 'A community-driven initiative to enhance the urban environment.', 400, '2023-06-10', 4, 'Art'),
('Tech Conference: Emerging Technologies', 'Stay updated on the latest breakthroughs in emerging technologies and their impact.', 'Industry leaders and experts share insights in this conference.', 500, '2023-07-15', 5, 'Technology'),
('Historical Book Club', 'Join a book club dedicated to exploring historical novels and non-fiction works.', 'Discuss and delve into the rich narratives of historical literature.', '200', '2023-08-01', 6, 'History'),
('Science Discovery Camp for Kids', 'A fun and educational camp for kids to explore the wonders of science.', 'Hands-on experiments, nature walks, and scientific adventures.', 350, '2023-09-05', 7, 'Science'),
('Healthcare Volunteer Day', 'Contribute to community health by participating in a healthcare volunteer day.', 'Assist in health screenings, education, and support for the local community.', 250, '2023-10-20', 8, 'Healthcare'),
('Art Workshop: Pottery Making', 'Unleash your creativity with a hands-on pottery-making workshop.', 'Guidance from experienced artists to create unique pottery pieces.', 300, '2023-11-15', 9, 'Art'),
('Tech Startup Pitch Event', 'A platform for tech startups to pitch their ideas and innovations to a panel of industry experts.', 'Networking opportunities and feedback for aspiring entrepreneurs.', 400, '2023-12-01', 10, 'Technology'),
('Historical Photography Exhibition', 'Explore historical moments through captivating photographs from different eras.', 'An exhibition showcasing the power of photography in preserving history.', 300, '2023-01-10', 11, 'History'),
('Science Documentary Screening', 'Discover the wonders of science through thought-provoking documentaries.', 'A curated selection of documentaries covering various scientific disciplines.', '250', '2023-02-20', 12, 'Science'),
('Healthcare Panel Discussion', 'Gain insights into healthcare challenges and solutions through a panel of experts.', 'Open discussions on current healthcare issues and future trends.', 350, '2023-03-05', 13, 'Healthcare'),
('Art Installation Project', 'Contribute to a community art installation project that reflects the diversity and creativity of the community.', 'A collaborative effort to enhance public spaces with art installations.', 400, '2023-04-15', 1, 'Art'),
('Tech Webinar: Cybersecurity Essentials', 'Stay informed about essential cybersecurity practices in this informative webinar.', 'Experts share tips and strategies to enhance online security.', 300, '2023-05-01', 2, 'Technology'),
('Historical Reenactment Festival', 'Step into the past with historical reenactments of key events and figures.', 'An immersive experience bringing history to life through performances and displays.', 350, '2023-06-10', 3, 'History'),
('Science Symposium on Climate Change', 'Explore the impact of climate change on scientific research and solutions.', 'Experts discuss climate-related challenges and innovations in science.', 250, '2023-07-15', 4, 'Science'),
('Health and Wellness Retreat', 'Escape to a peaceful retreat focused on holistic health and well-being.', 'Yoga sessions, nature walks, and wellness workshops for relaxation and rejuvenation.', 500, '2023-08-01', 5, 'Healthcare'),
('Artisan Market: Sustainable Creations', 'Promote sustainability with an artisan market featuring eco-friendly and sustainable creations.', 'Discover products that prioritize environmental consciousness.', 300, '2023-09-05', 6, 'Art'),
('Tech Workshop: Data Science Bootcamp', 'Dive into the world of data science with hands-on exercises and practical applications.', 'Learn essential data science skills from industry professionals.', 450, '2023-10-20', 7, 'Technology'),
('Historical Walking Tour: Industrial Revolution', 'Explore the impact of the Industrial Revolution on historical landscapes.', 'A guided walking tour highlighting key sites from the era of industrialization.', 250, '2023-11-15', 8, 'History'),
('Science Experiment Night for Kids', 'An interactive and fun-filled night for kids to conduct science experiments.', 'Encourage curiosity and creativity through hands-on scientific activities.', '200', '2023-12-01', 9, 'Science'),
('Healthcare Workshop: Mindful Living', 'Learn practical techniques for mindful living and mental well-being.', 'Experts guide participants in cultivating mindfulness for a healthier lifestyle.', 300, '2023-01-10', 10, 'Healthcare'),
('Art Festival: Diversity in Art', 'Celebrate the diversity of artistic expressions through a community art festival.', 'An inclusive event featuring artworks that reflect various cultures and perspectives.', 400, '2023-02-20', 11, 'Art');


-- Insert sample data into comments table
INSERT INTO comments (post, text, comment_id, user, responded_by)
VALUES
(1, 'Great project! I would love to contribute.', 1, 2, NULL),
(1, 'Thank you! Your support means a lot.', 2, 1, NULL),
(2, 'Amazing artwork! Can\'t wait to see it in person.', 1, 3, NULL),
(2, 'The colors used are fantastic. Well done!', 2, 4, NULL),
(3, 'Interesting topics to be discussed. Looking forward to it!', 1, 5, NULL),
(3, 'History is my favorite subject. I\'ll be there!', 2, 6, NULL),
(4, 'The experiments sound intriguing! Excited for the science fair.', 1, 7, NULL),
(5, 'I am definitely joining the workshop! Health is wealth.', 1, 8, NULL),
(5, 'This workshop is much needed. Count me in!', 2, 9, NULL),
(6, 'Looking forward to expressing myself through art!', 1, 10, NULL),
(7, 'I am interested in supporting collaborative tech projects. Let\'s connect!', 1, 11, NULL),
(7, 'Any specific technologies you\'ll be working on?', 2, 12, NULL),
(8, 'I love historical lectures! Will there be Q&A sessions?', 1, 13, NULL),
(9, 'The science symposium sounds intriguing. Can\'t wait!', 1, 1, NULL),
(9, 'Is there a schedule available for the symposium?', 2, 2, NULL),
(10, 'Healthcare awareness is crucial. Count me in for the campaign!', 1, 3, NULL),
(11, 'Looking forward to the art gala night! Any featured artists?', 1, 4, NULL),
(12, 'Excited for the Tech Innovations Expo! What companies will be present?', 1, 5, NULL),
(13, 'Historical documentaries are my favorite. Can\'t wait for the screening!', 1, 6, NULL),
(14, 'I am interested in joining the art workshop on abstract painting.', 1, 7, NULL),
(14, 'Is there a fee for the art workshop?', 2, 8, NULL),
(15, 'Science quiz competition sounds fun! What are the age groups?', 1, 9, NULL),
(15, 'I have kids who might be interested. Any specific topics for the quiz?', 2, 10, NULL),
(16, 'Looking forward to the Healthcare Symposium. Will there be panel discussions?', 1, 11, NULL),
(17, 'Tech Talk on future trends is right up my alley. Can\'t wait!', 1, 12, NULL),
(18, 'Historical walking tour is a great idea! Are there guided tours available?', 1, 13, NULL),
(18, 'I love history! Will there be information on the historical sites visited?', 2, 1, NULL),
(19, 'Artisan market for local creations is fantastic! Can artists apply to participate?', 1, 2, NULL),
(20, 'Health and Wellness Seminar - I am definitely attending!', 1, 3, NULL),
(21, 'Tech Hackathon sounds exciting! Any specific challenges announced?', 1, 4, NULL),
(22, 'Historical Costume Party - What\'s the dress code for the party?', 1, 5, NULL),
(23, 'Science Exhibition for Kids - I have kids who would love this!', 1, 6, NULL),
(23, 'Is there an age limit for participating in the kids\' science exhibition?', 2, 7, NULL),
(24, 'Healthcare Charity Run - Count me in for the charity run!', 1, 8, NULL),
(25, 'Art Photography Contest - Are there specific themes for the contest?', 1, 9, NULL),
(25, 'I am interested in submitting my photographs. How can I participate?', 2, 10, NULL),
(26, 'Tech Workshop on Artificial Intelligence - Is there a prerequisite for joining the workshop?', 1, 11, NULL),
(27, 'Historical Trivia Night - I love trivia! How can I participate?', 1, 12, NULL),
(28, 'Science Outreach Program - How can I volunteer for the program?', 1, 13, NULL),
(29, 'Health and Fitness Expo - I am interested in the wellness workshops.', 1, 1, NULL),
(30, 'Artistic Mural Painting Project - Count me in for the mural painting!', 1, 2, NULL),
(31, 'Tech Conference on Emerging Technologies - Any specific industries covered in the conference?', 1, 3, NULL),
(32, 'Historical Book Club - How can I join the book club?', 1, 4, NULL),
(33, 'Science Discovery Camp for Kids - Is there a registration process for the camp?', 1, 5, NULL),
(33, 'Can parents participate or observe during the science camp?', 2, 6, NULL),
(34, 'Healthcare Volunteer Day - I am interested in volunteering for the healthcare day.', 1, 7, NULL),
(35, 'Art Workshop on Pottery Making - Is there a fee for the pottery workshop?', 1, 8, NULL),
(36, 'Tech Startup Pitch Event - Can spectators attend the pitch event?', 1, 9, NULL),
(36, 'What criteria are considered for selecting pitches in the startup event?', 2, 10, NULL),
(37, 'Historical Photography Exhibition - How can photographers submit their works?', 1, 11, NULL),
(38, 'Science Documentary Screening - Any specific documentaries being screened?', 1, 12, NULL),
(39, 'Healthcare Panel Discussion - How can the audience participate in the discussion?', 1, 13, NULL),
(40, 'Art Installation Project - Can community members contribute to the art installation?', 1, 1, NULL),
(41, 'Tech Webinar on Cybersecurity Essentials - Is there a registration process for the webinar?', 1, 2, NULL),
(42, 'Historical Reenactment Festival - Can individuals participate in the reenactments?', 1, 3, NULL),
(43, 'Science Symposium on Climate Change - Will there be discussions on local climate issues?', 1, 4, NULL),
(44, 'Health and Wellness Retreat - How can individuals register for the retreat?', 1, 5, NULL),
(45, 'Artisan Market for Sustainable Creations - Can eco-friendly vendors apply for stalls?', 1, 6, NULL),
(46, 'Tech Workshop on Data Science Bootcamp - Any prerequisites for joining the bootcamp?', 1, 7, NULL),
(47, 'Historical Walking Tour: Industrial Revolution - Will there be guides providing historical insights?', 1, 8, NULL),
(48, 'Science Experiment Night for Kids - How can kids participate in the experiments?', 1, 9, NULL),
(48, 'Are there safety measures in place for the kids\' science experiment night?', 2, 10, NULL),
(49, 'Healthcare Workshop on Mindful Living - Can participants ask questions during the workshop?', 1, 11, NULL),
(50, 'Art Festival: Diversity in Art - Can local artists showcase their work in the festival?', 1, 12, NULL);


-- Insert sample data into donation table
INSERT INTO donation (user, post, amount)
VALUES
(3, 1, 50),
(13, 1, 500),
(4, 2, 20),
(5, 3, 30),
(6, 4, 25),
(7, 5, 40),
(8, 6, 35),
(9, 7, 50),
(10, 8, 20),
(11, 9, 30),
(12, 10, 15),
(1, 11, 40),
(2, 12, 55),
(3, 13, 25),
(4, 14, 30),
(5, 15, 15),
(6, 16, 35),
(7, 17, 25),
(8, 18, 40),
(9, 19, 45),
(10, 20, 30),
(11, 21, 50),
(12, 22, 25),
(13, 23, 30),
(1, 24, 40),
(2, 25, 35),
(3, 26, 45),
(4, 27, 25),
(5, 28, 30),
(6, 29, 20),
(7, 30, 35);


-- Insert sample data into follow table
INSERT INTO follow (follower, followed)
VALUES
(1, 2),
(2, 1),
(3, 4),
(4, 3),
(5, 6),
(6, 5),
(7, 8),
(8, 7),
(9, 10),
(10, 9),
(11, 12),
(12, 11),
(13, 1),
(1, 3),
(2, 4),
(3, 5),
(4, 1),
(5, 7),
(6, 8),
(7, 9),
(8, 10),
(9, 11),
(10, 12),
(11, 13),
(12, 1),
(13, 2),
(1, 4),
(2, 5),
(3, 6),
(4, 2);


-- Insert sample data into likes table
INSERT INTO likes (user, post)
VALUES
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 4),
(9, 5),
(10, 5),
(11, 6),
(12, 7),
(13, 8),
(1, 9),
(2, 9),
(3, 10),
(4, 11),
(5, 12),
(6, 13),
(7, 14),
(8, 15),
(9, 15),
(10, 16),
(11, 17),
(12, 18),
(13, 18),
(1, 19),
(2, 20),
(3, 21),
(4, 22),
(5, 23),
(6, 23),
(7, 24),
(8, 25),
(9, 25),
(10, 26),
(11, 27),
(12, 28),
(13, 29),
(1, 30),
(2, 31),
(3, 32),
(4, 33),
(5, 33),
(6, 34),
(7, 35),
(8, 36),
(9, 36),
(10, 37),
(11, 38),
(12, 39),
(13, 40),
(1, 41),
(2, 42),
(3, 43),
(4, 44),
(5, 45),
(6, 46),
(7, 47),
(8, 48),
(9, 49),
(10, 50),
(11, 1),
(12, 2),
(13, 3),
(1, 4),
(2, 5),
(3, 6),
(4, 7),
(5, 8),
(6, 9),
(7, 10),
(8, 11),
(9, 12),
(10, 13),
(11, 14),
(12, 15),
(13, 16),
(1, 17),
(2, 18),
(3, 19),
(4, 20),
(5, 21),
(6, 22),
(7, 23),
(8, 24);


-- Insert sample data into files table 
INSERT INTO files (post, name, file_id)
VALUES
(1, 'example1.jpg', 1),
(1, 'example2.png', 2),
(1, 'example3.jpg', 3),
(1, 'example4.jpg', 4),
(2, 'example.jpg', 1),
(3, 'example1.jpg', 1),
(4, 'example2.png', 1),
(5, 'example3.jpg', 1),
(6, 'example4.jpg', 1),
(7, 'example4.jpg', 1),
(8, 'example3.jpg', 1),
(9, 'example2.png', 1),
(9, 'example1.jpg', 2),
(8, 'example2.png', 2),
(8, 'example.jpg', 3),
(12, 'example.jpg', 1),
(13, 'example1.jpg', 1),
(14, 'example2.png', 1),
(15, 'example3.jpg', 1),
(16, 'example4.jpg', 1),
(17, 'example4.jpg', 1),
(18, 'example3.jpg', 1),
(19, 'example2.png', 1),
(19, 'example1.jpg', 2),
(18, 'example2.png', 2),
(18, 'example.jpg', 3),
(32, 'example.jpg', 1),
(33, 'example1.jpg', 1),
(34, 'example2.png', 1),
(35, 'example3.jpg', 1),
(36, 'example4.jpg', 1),
(37, 'example4.jpg', 1),
(38, 'example3.jpg', 1),
(39, 'example2.png', 1),
(39, 'example1.jpg', 2),
(38, 'example2.png', 2),
(38, 'example.jpg', 3),
(22, 'example.jpg', 1),
(23, 'example1.jpg', 1),
(24, 'example2.png', 1),
(25, 'example3.jpg', 1),
(26, 'example4.jpg', 1),
(27, 'example4.jpg', 1),
(28, 'example3.jpg', 1),
(29, 'example2.png', 1),
(29, 'example1.jpg', 2),
(28, 'example2.png', 2),
(28, 'example.jpg', 3),
(42, 'example.jpg', 1),
(43, 'example1.jpg', 1),
(44, 'example2.png', 1),
(45, 'example3.jpg', 1),
(46, 'example4.jpg', 1),
(47, 'example4.jpg', 1),
(48, 'example3.jpg', 1),
(49, 'example2.png', 1),
(49, 'example1.jpg', 2),
(48, 'example2.png', 2),
(48, 'example.jpg', 3);