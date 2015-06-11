
# Authors

author_list = [
    ["Eloisa James", "eloisa_james@gmail.com","authors/Eloisa_James.png","USA", 1962, "Eloisa James is the pen name of Mary Bly (born 1962). She is a tenured professor of English Literature at Fordham University who also writes best-selling Regency romance novels under her pen name.

	She is the daughter of poet Robert Bly and short-story author Carol Bly."],
    ["Julie Pottinger", "julie@yahoo.com","authors/Julia_Quinn.jpg","USA",1970,"Julia Quinn is the pseudonym used by Julie Pottinger (born Julie Cotler in 1970), a best-selling American historical romance author, who says she chose her pseudonym so her Regency romances would be on bookshelves next to those of the successful romance writer Amanda Quick. Her novels have been translated into 26 foreign languages, and she has appeared on the New York Times Bestseller List 18 times."],
    ["Connie Brockway","connie@outlook.com","authors/Connie_Brockway.jpg", 1954,"Connie Brockway (born December 16, 1954) is a best-selling American author of over twenty historical and contemporary romance novels since 1994." ],
    ["Donald Hodges","donald@hodges.com","",1965,"About Donald Hodges"],
    ["Ross Gandy","ross@gandy.com","",1966, "About Ross Gandy"],
]

author_list.each do |author_name, author_email, author_avatar, author_country, author_birth, author_about|
  Author.create(name: author_name, email: author_email, avatar: author_avatar,
                country: author_country, birth: author_birth, about: author_about)
end


# Books

book_eloisa = [
    ["Four Nights with the Duke", "HarperCollins", 2015, "9780062223920", 7.99,
     "books/Four_Nights_with_the_Duke.jpg", "Eloisa James returns with another fabulous romance in her New York Times bestselling Desperate Duchesses series!
	As a young girl, Emilia Gwendolyn Carrington told the annoying future Duke of Pindar that she would marry any man in the world before him—so years later she is horrified to realize that she has nowhere else to turn.
	Evander Septimus Brody has his own reasons for agreeing to Mia's audacious proposal, but there's one thing he won't give his inconvenient wife: himself.
	Instead, he offers Mia a devil's bargain . . . he will spend four nights a year with her. Four nights, and nothing more. And those only when she begs for them.
	Which Mia will never do.
	Now Vander faces the most crucial challenge of his life: he must seduce his own wife in order to win her heart—and no matter what it takes, this is the one battle he can't afford to lose." ],
    ["The Lady Most Likely...", "HarperCollins", 2010, "9780062037411", 8.99, "books/The_Lady_Most Likely.jpg",
    "Three of the brightest stars ofhistorical romance invite you to a party at the countryhome of the Honorable Marquess of Finchley
	Hugh Dunne, the Earl of Briarly, needs a wife, so his sisterhands him a list of delectable damsels and promises to invite them—and a few other gentlemen—to her country house for whatis sure to be the event of the season.
	Hugh will have time to woo whichever lady he most desires . . .Unless someone else snatches her first.
	The invitation list includes:
	The horse-mad but irresistibly handsome Earl of Briarly
	The always outspoken Miss Katherine Peyton
	The dashing war hero Captain Neill Oakes
	The impossibly beautiful (and painfully shy) Miss Gwendolyn Passmore
	The terribly eligible new Earl of Charters
	The widowed Lady Georgina Sorrell (who has no plans to marry, ever)
	And your hostess, Lady Carolyn Finchley, an irrepressiblematchmaker who plans to find the lady most likely . . .to capture her brother’s untamed heart."]
]


book_eloisa.each do |book_title, book_publisher, book_year, book_isbn, book_price, book_img, book_description|
  Author.find(1).books.create(title: book_title, publisher: book_publisher, year: book_year,
                              isbn: book_isbn, price: book_price, imgbook: book_img, description: book_description)
end

Book.find_by(isbn: "9780062037411").authors << Author.find_by(email: "julie@yahoo.com")
Book.find_by(isbn: "9780062037411").authors <<  Author.find_by(email: "connie@outlook.com")


book_donald = [
    ["Deep Republicanism","Lexington Books", 2003, "9780739130001", 34.99,"http://i3.ebkimg.com/previews/000/000466/000466978/000466978-hq-168-80.jpg",
    'Deep Republicanism: Prelude to Professionalism establishes the importance of
 Machiavelli\'s radical republican agenda in understanding the major revolutions of
the modern world.
Donald Hodges\'s nuanced analysis of The Discourse of Livy reveals a subversive
republicanism in Machiavelli\'s theorizing that is at odds with the demoliberalism
often perceived as the work\'s primary political agenda. Hodges follows this strand
of republicanism through history, providing a fascinating account of how these two
political philosophies vied with each other throughout much of modern history in
conflicts that culminated in the Russian and American Revolutions. A unique treatment
of Machiavelli\'s political agenda, its implementation by numerous historical actors,
 and its legacy, professionalism,Deep Republicanism examines aspects of Machiavelli\'s
 work that have often been overlooked. It also sheds light on Machiavelli himself, whose
famously devious and crafty writing style was partly motivated by his political
vulnerability in fifteenth century Florence. Hodges\'s study is both a novel
examination of the historical influence of Machiavelli\'s thought and a testament
to the enduring power, influence, and subtlety of one of the best-known Western
political philosophers.'],
    ["Mexico, the End of the Revolution", "ABC-CLIO", 2001, "9780313390531", 36.96,"http://i1.ebkimg.com/previews/000/000496/000496726/000496726-hq-168-80.jpg",
     'This study reveals how the social pact, formalized during the armed stage of the Mexican Revolution (1910-20) and implemented during the second stage (1920-40), was upset during the third or arrested stage (1940-70) when the bureaucrat-professionals at the helm opted for intensive economic development by taking the capitalist road. Although momentarily revived during yet a fourth stage of revolution (1970-82), this social pact was subsequently betrayed from within by the official party of the Revolution and undermined from without by the operation of economic forces behind the scenes. In this first book on the complete history of the Mexican Revolution, Hodges and Gandy reveal that, along with the end of its social pact, Mexico passed out of its former nationalist and capitalist orbit to enter the new professional societies and global order fathered by the transnationals.
From 1920 to 1970, Mexico\'s bureaucrat-professionals hung onto political power while native capitalists continued to flourish. In response, Mexico\'s workers and peasants staged strikes against the nationalized sector and fomented guerrilla wars. Concessions were then made to this group until, beginning in 1982, the social pact was again eroded at the expense, not only of the popular sectors, but also of the capitalists. The economic surplus was redistributed away from owners and into the pockets of professionals. That was the Revolution\'s last gasp before it was officially put to rest in 2000 with the official party\'s defeat at the polls. Hodges and Gandy challenge the current belief that Mexico\'s economic system is still capitalist by presenting statistical evidence that shows how the chief beneficiaries of the economy are no longer the providers of capital, but instead the providers of professional services.
']
]

book_donald.each do |book_title, book_publisher, book_year, book_isbn, book_price, book_img, book_description|
  Author.find_by(email:"donald@hodges.com").books.create(title: book_title, publisher: book_publisher, year: book_year,
                              isbn: book_isbn, price: book_price, imgbook: book_img, description: book_description)
end

Book.find_by(isbn: "9780313390531").authors << Author.find_by(email: "ross@gandy.com")


#Categories

literature_and_fiction = Category.create(category_title: "Literature & Fiction")
literature_and_fiction.books << Book.find_by(isbn: "9780062223920")
literature_and_fiction.books << Book.find_by(isbn: "9780062037411")

music = Category.create(category_title: "Music")
music.books << Book.find_by(isbn: "9780739130001")
music.books << Book.find_by(isbn: "9780313390531")
