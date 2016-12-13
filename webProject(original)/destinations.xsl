<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
  <xsl:template match = "/">
    
<html lang="en" >
<head>
    <title>
        BonVoyage
    </title>
    <meta charset="UTF-8"/>
    <link href="destinationsStyle.css" rel="stylesheet" type="text/css"/>
    <meta name="viewport" content="width=device-width, initial scare=1.8"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/cycle2.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script>
          $(document).ready(function(){
              $("button").click(function(){
                $("#comments_form").toggle();
                });
                $("#comments_form").hide();
              });
        </script>

    <script>

        function _(x){return document.getElementById(x);}

        var ba, bi=0, intrvl;

        var bca =
            ["<h2>London</h2><div class='city'><div id='london'><p>As a city that consistently mixes the old world with the enchantingly present day, London is an atypical English city that – in spite of its multinational jumble of culture – just couldn't be anyplace however the UK. Dark taxicabs and red pay phones are dabbed among whole areas of curry house and sporadic manors, which you land at by rattling underground prepare or typical twofold decker transport. There's even a corner - Camden - that is painted in distinctive technicolor and infrequently offers anything that could be depicted as neighborhood.</p></div></div>",

                "<h2>Edinburgh</h2><div class='city'><div id='edinburgh'><p>Hung crosswise over overgrown fells and disregarding the uneven waters of the North Atlantic, Edinburgh is a beautiful city in a striking area. Towered over by the taking off fortifications of the peak château, the city winds its way through cobbled, medieval paths, spread out around the Illustrious Mile and its unlimited shops tucked in the midst of the elaborate regal structures, Known as the city that inspired Dr Jekyll and Mr. Hyde. </p></div></div>",
            "<h2>Belfast</h2><div class='city'><div id='belfast'><p>Hung crosswise over overgrown fells and disregarding the uneven waters of the North Atlantic, Edinburgh is a beautiful city in a striking area. Towered over by the taking off fortifications of the peak château, the city winds its way through cobbled, medieval paths, spread out around the Illustrious Mile and its unlimited shops tucked in the midst of the elaborate regal structures, Known as the city that inspired Dr Jekyll and Mr. Hyde.        </p></div></div>"];

        function bubbles(bi){
            _("bubblecontent").style.opacity = 0;
            for(var i=0; i = ba.length ; i++){ <!--for(var i=0; i = ba.length ; i++){-->
                ba[i].style.background = "rgba(0,0,0,.1)";
            }
            ba[bi].style.background = "#999";
            setTimeout(function(){
                _("bubblecontent").innerHTML = bca[bi];
                _("bubblecontent").style.opacity = 1;
            }, 300);
        }
																			
        function bubbleSlide(){
            bi++;
            if(bi == ba.length){
                bi = 0;
            }

            bubbles(bi);
        }
        window.addEventListener("load", function(){

            ba = _("bubbles").children;

            intrvl = setInterval(bubbleSlide, 5000);
        });
    </script>
    <script>
         $(document).ready(function(){
             $('#sidebarbtn').click(function(){
                 $('#container').toggleClass('visible');
             });
         });
    </script>
    <script>
        $(document).ready(function(){
            $('#sidebarbtn').click(function(){
                $('#sidebarbtn').toggleClass('visible');
            });
        });
    </script>


    <style>

        #bubbles{
            width:auto;
            margin:0 auto;
            text-align:center; }
        #bubbles > div{
            display:inline-block;
            width:10px;
            height:10px;
            margin:24px 10px 0 10px;
            background:rgba(0,0,0,.1);
            text-align:center;
            border:2px solid #999;
            border-radius:100%;
            font-size:17px;
            text-decoration:none;
            transition: background 0.3s linear 0s; cursor:pointer; }
        #bubblecontent{
            transition:opacity 0.3s linear 0s;
            font-family: Arial;}
        #bubblecontent > h2
        { text-align:center;
            color: #cf5a30; }
        .city {

            color: #ffffff;
            height: 100%;

            font-size: medium;
        }


    </style>

</head>



<body class="body">

    <div id="container">
        <ul>
        <li><a href="index.php">Main</a></li>
        <li><a href="#eucontent">Europe</a></li>
        <li><a href="#ukcontent">United Kingdom</a></li>
        <li><a href="#italycontent">Italy</a></li>
        <li><a href="#spaincontent">Spain</a></li>
        <li><a href="#francecontent">France</a></li>
        <li><a href="#germanycontent"> Germany</a></li>
        <li><a href="#netherlandscontent">Netherlands</a></li>
        <li><a href="#irelandcontent">Ireland</a></li>
        <li><a href="#belgiumcontent">Belgium</a></li>
        <li><a href="#turkeycontent">Turkey</a></li>
        <li><a href="#polandcontent">Poland</a></li>

        <!-- line for navigational tabs-->
        </ul>
    </div>
    <div id="sidebarbtn">
        <span></span>
        <span></span>
        <span></span>
    </div>


<div class="sect" id="sectblank">
<div id="slideshow" class="cycle-slideshow"
     data-cycle-fx="fade"
     data-cycle-timeout="5000">

    <img src="images/mkImages/1.jpg" alt=""/>
    <img src="images/mkImages/3.jpg" alt=""/>
    <img src="images/mkImages/4.jpg" alt=""/>
    <img src="images/mkImages/5.jpg" alt=""/>
    <img src="images/mkImages/6.jpg" alt=""/>
    <img src="images/mkImages/7.jpg" alt=""/>
</div>
</div>
<div id="pager">


</div>




<div class="sect secteu">

    <div class="mainContent">
        <div class="content">
            <article id="eucontent">

                <div>
                    <p>Why Europe?</p>
                </div>

                <p>
                    The west has the social glory of previous empires, the Places of Parliament in London, the rich yet dreamlike specialty of Barcelona and the 'mainstays of development' in the disintegrating structures of Athens (also the delights of old-world Rome). Toward the east you'll locate a world rising quick from the leftovers of socialism, and favored with the natural magnificence of the Romanian wide open and a forcing gothic look crossed with bohemian oddity in lovely Prague.

                    There are encounters you'll always remember, similar to dawn over Stonehenge on the longest day of the year, looked at to the pacey beats of radicals, or the delicate sprinkle of your gondola weaving down the watery boulevards of Venice. For nature fans, the taking off pinnacles of the Alps and the Pyrenees take skiers' and climbers' breath away. With a little good fortune, you can pant at the ghostly common lights of northernmost Norway, or swim with turtles off the rural coastlines of Greece.

                    For cutting edge pandemonium, Germany's lager corridors, the glamour and style of Monaco's gambling clubs and a large group of summer music celebrations offer nightlife you'll always remember; focal Europe's cold Christmas markets place you in occasional soul, while liberal Amsterdam gives you a chance to twist the principles without breaking them. Prior in the day, Belgium's mussels, Italy's frozen yogurt, Spain's broiled child squid and the delicate Cepelinai dumplings of Lithuania will all make them bother the gourmet specialist for formulas.
                    With The Colosseum, The Kremlin, The Eiffel Tower and all the melodic charms of a customary Irish bar, and extending from the sunny shoreline of Portugal to the scanty Ural Heaps of focal Russia, Europe takes in 50 nations, more than 200 dialects and an inconceivable cluster of the world's most renowned locales, making this social behemoth many voyager's fantasy goal. Getting around is simple, with long separation transports, spending carriers and Euro rail passes that'll keep you jumping through nations in abundance.
                </p>
            </article>


        </div>
    </div>


</div>


<div class="sect sect1">

    <div class="mainContent">
        <div class="content">
            <div id="ukcontent">

                <div>
                    <p>United Kingdom</p>
                </div>
                <p>
                    A political union of Britain, Scotland, Wales and Northern Ireland,
                    the UK has an astounding mix of societies to offer.
                    It's no more drawn out the universe of top caps and strolling sticks;
                    rather you'll discover a land saturated with heavenly history,
                    and home to a vivacious music scene and beguiling field.
                    London is the place to go for both music and a great deal of those scandalous locales.
                    Stroll around the Places of Parliament and Huge Ben, Up in Scotland,
                    the magnificence of Edinburgh and famous grit of Glasgow are both enormous draws.
                    Make a beeline for the good countries to discover natural manors,
                    ancient estates.Northern Ireland is a flight (or boat ride) away,
                    however justified regardless of the bother for the magnificence of Belfast.
                </p>
							
							<div id="post_form">
			<form id = "form1" action = "form.php" method = "POST" >
				Post:
				<br/>
				<textarea rows="4" cols="50" type = "text" name="post_description">Input text Here </textarea>
				<br/>

			<input type = "submit" form = "form1" />

			</form>
      
    <table>
      
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='United Kingdom']">
            <td><b>Username</b>:<xsl:value-of select = "../post/post_username"/></td>
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='United Kingdom']">
            <td><b>Post:</b><xsl:value-of select = "../post/post_description"/></td>
        </xsl:for-each>
      </tr>
		</table>      
    
    </div>
   
    <div id='showPost'></div><br/>
    <button name = "button">Write Comments</button>
   
      
    
    
    <div id = "comments_form">
			
			<table>
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='United Kingdom']">
            <td><b>Username:</b><xsl:value-of select = "../post/comments/comments_username"/></td>      
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='United Kingdom']">          
            <td><b>Rating:</b><xsl:value-of select = "../post/comments/post_ratings"/></td>            
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='United Kingdom']">
            <td><b>Comments:</b><xsl:value-of select = "../post/comments/comments"/></td>
        </xsl:for-each>
      </tr>
      
      
		</table>
						
      <form id = "form2" action = "form2.php" method = "POST" >
        Rate:
        <br/>
        <select name = "ratings" form = "form2">
          <option value = "1">1</option>
          <option value = "2">2</option>
          <option value = "3">3</option>
          <option value = "4">4</option>
          <option value = "5">5</option>
          
        </select>
        <br/>
        
        Comments:
        <br/>
      <textarea rows="4" cols="50" type = "text" name="comments">Input text Here </textarea>
      <br/>
      <input type = "submit" form = "form2" />
     </form>
      
    </div>
                <div id="bubblebox">
                    <div id="bubbles">
                        <div onclick="bubbles(0); clearInterval(intrvl);" style="background:#999;"></div>
                        <div onclick="bubbles(1); clearInterval(intrvl);"></div>
                        <div onclick="bubbles(2); clearInterval(intrvl);"></div>
                    </div>
                    <div id="bubblecontent">
                        <h2>London</h2>
                        <p>
                            As a city that consistently mixes the old world with the enchantingly present day, London is an atypical English city that – in spite of its multinational jumble of culture – just couldn't be anyplace however the UK. Dark taxicabs and red pay phones are dabbed among whole areas of curry house and sporadic manors, which you land at by rattling underground prepare or typical twofold decker transport. There's even a corner - Camden - that is painted in distinctive technicolor and infrequently offers anything that could be depicted as neighborhood.
                        </p>

                    </div>
                </div>
            </div>


        </div>
    </div>
</div>


<div class="sect sect2">
    <div class="mainContent">
        <div class="content">
            <article id="italycontent">

                <div>
                    <p>Italy</p>
                </div>
                <p>
                    In capital Rome you'll discover copious hints of the Roman Domain in the Colosseum and the innumerable disintegrating landmarks spread all through the city. Vatican City, a little nation inside the city's limits, rouses guests with the specialty of the Sistine House of prayer, the love of St Subsides and the historical backdrop of the Vatican Exhibition halls, and additionally the harlequin hues and staunch mien of the renowned Swiss Watch. At that point there's the Trevi Wellspring, the Spanish Strides, the Supreme Gatherings, Piazza Navona…

                    Sentimental people will discover riding the rising waters of Venice and investigating its renaissance design an overwhelming draw, venturing out of their inn specifically onto a bending longboat. In as much as they stay away from the undeniably regular floods, that is. Florence, and its unlimited columns of red-roofed houses aren't a long ways behind.
                </p>
							
							<div id="post_form">
			<form id = "form1" action = "form.php" method = "POST" >
				Post:
				<br/>
				<textarea rows="4" cols="50" type = "text" name="post_description">Input text Here </textarea>
				<br/>

			<input type = "submit" form = "form1" />

			</form>
      
    <table>
      
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='Italy']">
            <td><b>Username</b>:<xsl:value-of select = "../post/post_username"/></td>
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='Italy']">
            <td><b>Post:</b><xsl:value-of select = "../post/post_description"/></td>
        </xsl:for-each>
      </tr>
		</table>      
    
    </div>
   
    <div id='showPost'></div><br/>
    <button name = "button">Write Comments</button>
   
      
    
    
    <div id = "comments_form">
			
			<table>
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='Italy']">
            <td><b>Username:</b><xsl:value-of select = "../post/comments/comments_username"/></td>      
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='Italy']">          
            <td><b>Rating:</b><xsl:value-of select = "../post/comments/post_ratings"/></td>            
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='Italy']">
            <td><b>Comments:</b><xsl:value-of select = "../post/comments/comments"/></td>
        </xsl:for-each>
      </tr>
      
      
		</table>
						
      <form id = "form2" action = "form2.php" method = "POST" >
        Rate:
        <br/>
        <select name = "ratings" form = "form2">
          <option value = "1">1</option>
          <option value = "2">2</option>
          <option value = "3">3</option>
          <option value = "4">4</option>
          <option value = "5">5</option>
          
        </select>
        <br/>
        
        Comments:
        <br/>
      <textarea rows="4" cols="50" type = "text" name="comments">Input text Here </textarea>
      <br/>
      <input type = "submit" form = "form2" />
     </form>
      
    </div>
							
            </article>

        </div>
    </div>
</div>

<div class="sect sect3">
    <div class="mainContent">
        <div class="content">
            <article id="spaincontent">

                <div>
                    <p>Spain</p>
                </div>
                <p>
                    As a famously showy corner of what Europeans joyfully consider as 'sunbathing domain',
                    Spain is home to an inviting blend of Mediterranean culture and its own particular interesting
                    (and frequently conflicting) standards). As the enthusiastic country home to flamenco and bull battling in a few corners,
                    and in addition awesome fish and strong alcoholic espresso, this is a nation that is just as tempting off the beaten track as on,
                    so much so that an Englishman as of late invested months sitting by a telephone confine a 'social examination'.
                    We can't help supposing it was more for no particular reason... Investigate cosmopolitan Barcelona,
                    lounge on the shorelines of Andalucía and climb among the rough pinnacles of the Pyrenees.
                    Retaining the way of life is a basic part of a Spanish trek; you'll need to get used to lunchtime rests, olives with each feast.
                </p>
            </article>

        </div>
    </div>
</div>

<div class="sect sect4">
    <div class="mainContent">
        <div class="content">
            <article id="francecontent">

                <div>
                    <p>France</p>
                </div>
                <p>
                    From the notorious structures and tasteful cooking styles of Paris to the vineyards of Champagne, most voyagers are more than mindful of France's amazing (and sentimental) resume, and as of now have the nation of culture high on their voyaging hit list.

                    Paris doesn't disillusion for sure, with the greatness of the Seine (and it's scandalously partitioned east and west banks), the class of Notre Lady and the sentiment of nightfall over the Eiffel Tower. Best of all, it's not only the locales that are captivating.

                </p>
							<div id="post_form">
			<form id = "form1" action = "form.php" method = "POST" >
				Post:
				<br/>
				<textarea rows="4" cols="50" type = "text" name="post_description">Input text Here </textarea>
				<br/>

			<input type = "submit" form = "form1" />

			</form>
      
    <table>
      
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='France']">
            <td><b>Username</b>:<xsl:value-of select = "../post/post_username"/></td>
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='France']">
            <td><b>Post:</b><xsl:value-of select = "../post/post_description"/></td>
        </xsl:for-each>
      </tr>
		</table>      
    
    </div>
   
    <div id='showPost'></div><br/>
    <button name = "button">Write Comments</button>
   
      
    
    
    <div id = "comments_form">
			
			<table>
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='France']">
            <td><b>Username:</b><xsl:value-of select = "../post/comments/comments_username"/></td>      
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='France']">          
            <td><b>Rating:</b><xsl:value-of select = "../post/comments/post_ratings"/></td>            
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="/destinations/country/name[text()='France']">
            <td><b>Comments:</b><xsl:value-of select = "../post/comments/comments"/></td>
        </xsl:for-each>
      </tr>
      
      
		</table>
						
      <form id = "form2" action = "form2.php" method = "POST" >
        Rate:
        <br/>
        <select name = "ratings" form = "form2">
          <option value = "1">1</option>
          <option value = "2">2</option>
          <option value = "3">3</option>
          <option value = "4">4</option>
          <option value = "5">5</option>
          
        </select>
        <br/>
        
        Comments:
        <br/>
      <textarea rows="4" cols="50" type = "text" name="comments">Input text Here </textarea>
      <br/>
      <input type = "submit" form = "form2" />
     </form>
      
    </div>

                <div class="city">
                        <h2>Paris</h2>
                        <p>
                            It's difficult to picture a city more famous than Paris. With a bewildering aggregate love of workmanship, engineering and great antiquated sentiment - and additionally an overwhelming new rap scene - the city has such a large number of measurements that will need to organize. Fortunately for you, you'd need to try not to see something more extraordinary than your regular city. The French capital is scholarly and tasteful, home to apparently the world's most prestigious cooking, and scattered generously with immediately conspicuous points of interest and strikingly significant destinations.

                            The Eiffel Tower (and it's overwhelming eatery) and Notre Woman have been at the focal point of such a variety of bits of composing it appears to be practically unnecessary to portray them.

                        </p>

                    </div>
            </article>

        </div>
    </div>
</div>

<div class="sect sect5">
    <div class="mainContent">
        <div class="content">
            <article id="germanycontent">

                <div>
                    <p>Germany</p>
                </div>
                <p>
                    A place that is known for dynamic urban communities and sensitive, manor covered wide open, Germany blends the old and the new into a tantalizing touristic mix. From the Lederhosen and plentiful, maturing brew lobbies to the world capital of techno and streets without speed limits, there are few who won't discover something to love.
                    In case you're a city sort, Berlin's reality class galleries, insuppressible techno parties (in case you're a substantial move aficionado, Berlin's decadent yearly 'Love Parade' is most likely your concept of paradise) and look at the narrowing city partition and what's left of the Berlin Divider. Munich has it's own motivation, gladly saturated with Bavarian culture and overflowing with conventional lederhosen-filled lager corridors. Once per year, Oktoberfest comes to town, and appears to carry a large portion of the world with it. Welcome to another relentless, lager swilling German gathering.

                </p>
                <div class="city">
                    <h2>Berlin</h2>
                    <p>
                        Berlin is the capital of Germany, and the biggest city by populace. It has a universal notoriety for being a to a great degree tolerant and liberal center point of innovation, with a wide assortment of exhibition halls, design, and sights like the Berlin Divider.
                        Today, next to no remaining parts of the Divider. The city has quickly conquer its notoriety since the fall of the Divider toward the end of the Frosty War, and now is also called a worldwide hotspot for gathering creatures and form appears. While the city is generally youthful by European models, just going back to the thirteenth century, it has gathered a notoriety the greater part of its own throughout the years.

                    </p>

                </div>
            </article>

        </div>
    </div>
</div>

<div class="sect sect6">
    <div class="mainContent">
        <div class="content">
            <article id="netherlandscontent">

                <div>
                    <p> Netherlands</p>
                </div>
                <p>
                    The Netherlands is the place where there is windmills, whores and lawful medications. In any event that is the thing that you presumably definitely think about the nation, yet those are only the feature producers: what for the most part shocks is that this little corner of Europe is overwhelmingly lovely. Yes, capital Amsterdam is an indulgent play area where you can do things you wouldn't dream of doing at home, and yes it has its own particular sex exhibition hall. Among the lanes of Europe's most tolerant city, be that as it may, are tranquil, winding trenches, cobbled paths, patio nurseries of clear tulips and a glorious building brimming with the works of Van Gogh. So no, it's not only for gathering creatures and stag evenings, however most guests wind up in a café, or floating through the shady area of town at some stage (only for diversion estimation obviously – don't have a go at taking photos!).   </p>
                <div class="city">
                    <h2>Amsterdam</h2>
                    <p>
                        We as a whole comprehend what goes through the normal youthful personality when it hears the word 'Amsterdam'. It may be the liberal home of medications and prostitution, yet the Dutch capital is likewise a delightful corner of the world; a place where traditional music and channels, forcing design and aesthetic historical centers are as much a piece of life as any of the city's all the more outstanding distractions. Amsterdam vacationer spot is around Zeedijk range and it's acclaimed with the called " Seedy area of town", such a variety of bars and delight things all blended in one in Damrak territory.
                    </p>

                </div>
            </article>


        </div>
    </div>
</div>

<div class="sect sect7">
    <div class="mainContent">
        <div class="content">
            <article id="irelandcontent">

                <div>
                    <p>Ireland</p>
                </div>
               <p>
                   Ireland - home of numerous well known essayists, artists, vocalists and music, of St Patrick, Guinness, bourbon and a unimaginably huge number of outstanding bars – can be stormy, now and again even devastate, yet never not exactly uncommonly fun. Ireland has profited significantly from its EU enrollment, and nearby all the old conventions – the late night bar singalongs and little however perfectly picturesque cultivating groups – you'll discover the island of Ireland is moving with the circumstances.    </p>
                <div class="city">
                    <h2>Dublin</h2>
                    <p>
                        The temple Bar locale is at the heart of it. The Irish are a vivaciously friendly group, and the cobbled roads of Sanctuary Bar have gatherings after quite a while, local people empowered on Dublin Straight fish and slurping half quart after 16 ounces of 'The Dark Stuff' (Guinness) while listening to the twanging hints of customary Irish music, and combining in the scan for a late night 'secure' to keep the party moving until day break.
                    </p>

                </div>
            </article>


        </div>
    </div>
</div>
<div class="sect sect8">
    <div class="mainContent">
        <div class="content">
            <article id="belgiumcontent">

                <div>
                    <p>Belgium</p>
                </div>
                <p>One of the establishing individuals from the European Union, Belgium has for quite some time been viewed as one of the junction of Europe, where the Germanic and Latin societies meet. The nation is known globally for its solid lagers, its waffles and chocolates, its landscape, and its casual perspectives on governmental issues, religion, sexuality, and life by and large.
                    The Romans gave Belgium its name when they made the area of Gallia Belgica in the principal century BC. Throughout the years the nation has seen a changing line of rulers from a few distinct nations until the establishing of the nation in 1830. From that point forward the nation has been a sacred government and parliamentary majority rules system and a herald in European mix through the Benelux and the EU, has made ready for other European nations to follow afterward.


                </p>
                <div class="city">
                    <h2>Brussels</h2>
                    <p>
                        As the creative heart of the EU, Brussels is fundamentally multicultural, a vibe that is just highlighted an inclination that the city's dependably been partitioned – half French, half Flemish - however both parts appear to make the most of their mussels and take their 'pomme frites' with a strange and heavy side of mayonnaise.
                        The Belgian capital even has an African quarter where you can nibble on dried caterpillars, however the more evident elements are in the winding medieval back roads of the lower city and the stately structures and streets of the upper half.
                    </p>

                </div>
            </article>

        </div>
    </div>
</div>

<div class="sect sect9">
    <div class="mainContent">
        <div class="content">
            <article id="turkeycontent">

                <div>
                    <p>Turkey</p>
                </div>
                <p>
                    A standout amongst the most essential nations as far as area as an extension amongst Europe and Asia, and a standout amongst the most socially critical nations with a history going back to ancient circumstances, Turkey straddles the crevice amongst Asia and Europe along the Dark Ocean, the Mediterranean Ocean, and the Aegean Ocean, while in the meantime offering outskirts to Bulgaria, Greece, Armenia, Azerbaijan, Georgia, Syria, Iraq, and Iran. The nation as it exists today was initially framed in 1923. It is a boundless cluster of various geology, and the atmosphere ranges from run of the mill beach front territories along the coastlines of the Mediterranean, Aegean, and the Dark Oceans, while the outskirt along the south close Syria is abandon, and parts of the inside are forested and precipitous.
                </p>
                <div class="city">
                    <h2>Istanbul</h2>
                    <p>
                        Istanbul is likely one of the most smoking goals in the 21st century with regards to the European-Asian side of the world. Alongside being the most populated city in Turkey, Istanbul has been one of the significant focus purposes of the world for truly a great many years. Once known as Constantinople and Byzantium, and home to one of the last Roman stations for a thousand years before it was vanquished by the Footrest ruler Sultan Mehmed II and thusly turning out to be a piece of a Muslim country, Istanbul is one of those mysterious goals that brags close legendary history and legends which encompass the engineering and pervade the guest with a feeling of ponder, and a practically ethereal out-of-this-world vibe that can't be coordinated anyplace else on the planet.
                    </p>

                </div>
            </article>

        </div>
    </div>
</div>



<div class="sect sect10">
    <div class="mainContent">
        <div class="content">
            <article id="polandcontent">

                <div>
                    <p>Poland</p>
                </div>
                <p>
                    One of the Baltic countries in Focal Europe flanked by Belarus, the Czech Republic, Germany, Lithuania, Russia, Slovakia, and the Ukraine, Poland figures out how to emerge among the rest with its rich history, astonishing farmland, and its unmistakable social interest. From its first settlement in Biskupin at some point before the seventh century BC, to its Roman roots, and the possible brilliant time amid the fourteenth through the sixteenth century when its kingdom extended from the Baltic to the Dark and Adriatic oceans, Poland has for some time been a standard of strength inside the locale. But then, for a nation with such a respectable legacy, Poland has been invade a larger number of times than most, because of its key area in Europe. It has seen more than its share of war, yet the nation has bounced back over and over as of recently it stands, pleased and straight, as it walks into the 21st century.
                </p>
                <div class="city">
                    <h2>Warsaw</h2>
                    <p>
                        Warsaw has a shockingly old-world climate to it. It's especially unanticipated as Poland's capital was transformed into a substantial store of rubble by the Second World War, and has been revamped in established style by its pleased subjects, and bewildering accomplishment of triumph despite assorted qualities that still characterizes the local's character from various perspectives: unyielding, dynamic and high accomplishing.

                        In spite of their retrogressive looking design misuses, the natives of Warsaw are famously ground breaking, and the capital has turned out to be hard to coordinate regarding contemporary excitement, with a fortunate nightlife and hyper music scene.

                    </p>

                </div>
            </article>

        </div>
    </div>
</div>



<footer class="mainFooter">
    <p>Copyright stuff or whatever</p>
</footer>
</body>

</html>


    
  </xsl:template>
</xsl:transform>