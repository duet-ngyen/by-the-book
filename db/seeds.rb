
# Authors

author_list = [
    ["Eloisa James", "eloisa_james@gmail.com","http://res.cloudinary.com/dtls0k5em/image/upload/v1435051321/authors/Eloisa_James.png","USA", 1962, "Eloisa James is the pen name of Mary Bly (born 1962). She is a tenured professor of English Literature at Fordham University who also writes best-selling Regency romance novels under her pen name.

	She is the daughter of poet Robert Bly and short-story author Carol Bly."],
    ["Julie Pottinger", "julie@yahoo.com","http://res.cloudinary.com/dtls0k5em/image/upload/v1435051375/authors/Julia_Quinn.jpg","USA",1970,"Julia Quinn is the pseudonym used by Julie Pottinger (born Julie Cotler in 1970), a best-selling American historical romance author, who says she chose her pseudonym so her Regency romances would be on bookshelves next to those of the successful romance writer Amanda Quick. Her novels have been translated into 26 foreign languages, and she has appeared on the New York Times Bestseller List 18 times."],
    ["Connie Brockway","connie@outlook.com","http://res.cloudinary.com/dtls0k5em/image/upload/v1435051392/authors/Connie_Brockway.jpg", 1954,"Connie Brockway (born December 16, 1954) is a best-selling American author of over twenty historical and contemporary romance novels since 1994." ],
    ["Donald Hodges","donald@hodges.com","",1965,"About Donald Hodges"],
    ["Ross Gandy","ross@gandy.com","",1966, "About Ross Gandy"],
    ["Veronica Roth","veronica@roth.com","",1988,"Veronica Roth is an American novelist and short story writer known for her debut New York Times bestselling Divergent trilogy, consisting of Divergent, Insurgent, and Allegiant; and Four: A Divergent "]
]

author_list.each do |author_name, author_email, author_avatar, author_country, author_birth, author_about|
  Author.create(name: author_name, email: author_email, remote_avatar_url: author_avatar,
                country: author_country, birth: author_birth, about: author_about)
end


# Books
book_eloisa = [
    ["Four Nights with the Duke", "HarperCollins", 2015, "9780062223920", 7.99,
     "http://res.cloudinary.com/dtls0k5em/image/upload/v1435053651/books/Four_Nights_with_the_Duke.jpg", "Eloisa James returns with another fabulous romance in her New York Times bestselling Desperate Duchesses series!<br/>
	As a young girl, Emilia Gwendolyn Carrington told the annoying future Duke of Pindar that she would marry any man in the world before him—so years later she is horrified to realize that she has nowhere else to turn.<br/>
	Evander Septimus Brody has his own reasons for agreeing to Mia's audacious proposal, but there's one thing he won't give his inconvenient wife: himself.<br/>
	Instead, he offers Mia a devil's bargain . . . he will spend four nights a year with her. Four nights, and nothing more. And those only when she begs for them.<br/>
	Which Mia will never do.<br/>
	Now Vander faces the most crucial challenge of his life: he must seduce his own wife in order to win her heart—and no matter what it takes, this is the one battle he can't afford to lose." ],
    ["The Lady Most Likely...", "HarperCollins", 2010, "9780062037411", 8.99, "http://res.cloudinary.com/dtls0k5em/image/upload/v1435063973/rakhio04fu9h8ggjwyup.jpg",
    "Three of the brightest stars ofhistorical romance invite you to a party at the countryhome of the Honorable Marquess of Finchley<br/>
	Hugh Dunne, the Earl of Briarly, needs a wife, so his sisterhands him a list of delectable damsels and promises to invite them—and a few other gentlemen—to her country house for whatis sure to be the event of the season.<br/>
	Hugh will have time to woo whichever lady he most desires . . .Unless someone else snatches her first.<br/>
	The invitation list includes:<br/>
	The horse-mad but irresistibly handsome Earl of Briarly<br/>
	The always outspoken Miss Katherine Peyton<br/>
	The dashing war hero Captain Neill Oakes<br/>
	The impossibly beautiful (and painfully shy) Miss Gwendolyn Passmore<br/>
	The terribly eligible new Earl of Charters<br/>
	The widowed Lady Georgina Sorrell (who has no plans to marry, ever)<br/>
	And your hostess, Lady Carolyn Finchley, an irrepressiblematchmaker who plans to find the lady most likely . . .to capture her brother’s untamed heart."]
]

book_eloisa.each do |book_title, book_publisher, book_year, book_isbn, book_price, book_img, book_description|
  Author.find(1).books.create(title: book_title, publisher: book_publisher, year: book_year,
                              isbn: book_isbn, price: book_price, remote_imgbook_url: book_img, description: book_description)
end
Book.find_by(isbn: "9780062037411").authors << Author.find_by(email: "julie@yahoo.com")



book_roth = [["Divergent","HarperCollins",2011,"9780062077011", 5.99, "http://res.cloudinary.com/dtls0k5em/image/upload/v1435049244/kf5uafc65udxcgxdr9ye.jpg",
              "Now includes an excerpt from the upcoming Four: A Divergent Collection.<br/>
<br/>This first book in Veronica Roth's #1 New York Times bestselling Divergent trilogy is the novel the inspired the major motion picture starring Shailene Woodley, Theo James, and Kate Winslet. This dystopian series set in a futuristic Chicago has captured the hearts of millions of teen and adult readers.
<br/>Perfect for fans of the Hunger Games and Maze Runner series, Divergent and its sequels, Insurgent and Allegiant, are the gripping story of a dystopian world transformed by courage, self-sacrifice, and love. Fans of the Divergent movie will find the book packed with just as much emotional depth and exhilarating action as the film, all told in beautiful, rich language."]]

book_roth.each do |book_title, book_publisher, book_year, book_isbn, book_price, book_img, book_description|
  Author.find_by(email:"veronica@roth.com").books.create(title: book_title, publisher: book_publisher, year: book_year,
                              isbn: book_isbn, price: book_price, remote_imgbook_url: book_img, description: book_description)
end

book_gandy = [[
    "Private Vegas","Random House", 2015, "9781448108428",12.78,"http://res.cloudinary.com/dtls0k5em/image/upload/v1435049269/tby4z9hz8ybk6e5b4pgn.jpg",
    "Jack Morgan, head of Private Investigations, the global PI agency of the rich and famous, is being pushed to the limit. His car has been firebombed, his ex is dating someone else, and his twin brother is still out to destroy him.
<br/>But Private doesn’t rest, and nor do its clients: not the LAPD who need Private’s help catching two scumbags with diplomatic immunity, and not the client who has just confessed to murdering his wife."
]]

book_gandy.each do |book_title, book_publisher, book_year, book_isbn, book_price, book_img, book_description|
  Author.find_by(email:"ross@gandy.com").books.create(title: book_title, publisher: book_publisher, year: book_year,
                                                         isbn: book_isbn, price: book_price, remote_imgbook_url: book_img, description: book_description)
end


book_donald = [
    ["Deep Republicanism","Lexington Books", 2003, "9780739130001", 34.99,"http://res.cloudinary.com/dtls0k5em/image/upload/v1435049291/aszj9qipvwz8wcjkb6x4.jpg",
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
    ["Mexico, the End of the Revolution", "ABC-CLIO", 2001, "9780313390531", 36.96,"http://res.cloudinary.com/dtls0k5em/image/upload/v1435049314/npd8qoovkltxgfgbzvos.jpg",
     'This study reveals how the social pact, formalized during the armed stage of the Mexican Revolution (1910-20) and implemented during the second stage (1920-40), was upset during the third or arrested stage (1940-70) when the bureaucrat-professionals at the helm opted for intensive economic development by taking the capitalist road. Although momentarily revived during yet a fourth stage of revolution (1970-82), this social pact was subsequently betrayed from within by the official party of the Revolution and undermined from without by the operation of economic forces behind the scenes. In this first book on the complete history of the Mexican Revolution, Hodges and Gandy reveal that, along with the end of its social pact, Mexico passed out of its former nationalist and capitalist orbit to enter the new professional societies and global order fathered by the transnationals.
From 1920 to 1970, Mexico\'s bureaucrat-professionals hung onto political power while native capitalists continued to flourish. In response, Mexico\'s workers and peasants staged strikes against the nationalized sector and fomented guerrilla wars. Concessions were then made to this group until, beginning in 1982, the social pact was again eroded at the expense, not only of the popular sectors, but also of the capitalists. The economic surplus was redistributed away from owners and into the pockets of professionals. That was the Revolution\'s last gasp before it was officially put to rest in 2000 with the official party\'s defeat at the polls. Hodges and Gandy challenge the current belief that Mexico\'s economic system is still capitalist by presenting statistical evidence that shows how the chief beneficiaries of the economy are no longer the providers of capital, but instead the providers of professional services.
']
]

book_donald.each do |book_title, book_publisher, book_year, book_isbn, book_price, book_img, book_description|
  Author.find_by(email:"donald@hodges.com").books.create(title: book_title, publisher: book_publisher, year: book_year,
                              isbn: book_isbn, price: book_price, remote_imgbook_url: book_img, description: book_description)
end
Book.find_by(isbn: "9780313390531").authors << Author.find_by(email: "ross@gandy.com")


#Categories

literature_and_fiction = Category.create(category_title: "Literature & Fiction")
literature_and_fiction.books << Book.find_by(isbn: "9780062223920")
literature_and_fiction.books << Book.find_by(isbn: "9780062037411")
literature_and_fiction.books << Book.find_by(isbn: "9780062077011")
literature_and_fiction.books << Book.find_by(isbn: "9781448108428")

music = Category.create(category_title: "Music")
music.books << Book.find_by(isbn: "9780739130001")
music.books << Book.find_by(isbn: "9780313390531")
music.books << Book.find_by(isbn: "9781448108428")


test = Category.create(category_title: "Test")

