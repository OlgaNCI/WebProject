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
          <li><a href="index.php">About</a></li>
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

              <xsl:for-each select="/destinations/country/name[text()='United Kingdom']"> 
							<div>
                    <p><xsl:value-of select = "../name"/></p>
                </div>
                <p>
									<xsl:value-of select = "../descriptions"/>
                </p>
							</xsl:for-each>
							
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
						
				    <xsl:for-each select="/destinations/country/name[text()='Italy']"> 
                <div>
                    <p><xsl:value-of select = "../name"/></p>
                </div>
                <p>
									<xsl:value-of select = "../descriptions"/>
                 </p>
							</xsl:for-each>
							
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

                <xsl:for-each select="/destinations/country/name[text()='Spain']"> 
                <div>
                    <p><xsl:value-of select = "../name"/></p>
                </div>
                <p>
									<xsl:value-of select = "../descriptions"/>
                 </p>
							</xsl:for-each>
            </article>

        </div>
    </div>
</div>

<div class="sect sect4">
    <div class="mainContent">
        <div class="content">
            <article id="francecontent">

                <xsl:for-each select="/destinations/country/name[text()='France']"> 
                <div>
                    <p><xsl:value-of select = "../name"/></p>
                </div>
                <p>
									<xsl:value-of select = "../descriptions"/>
                 </p>
							</xsl:for-each>
							
							
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

                <xsl:for-each select="/destinations/country/name[text()='Germany']"> 
                <div>
                    <p><xsl:value-of select = "../name"/></p>
                </div>
                <p>
									<xsl:value-of select = "../descriptions"/>
                 </p>
							</xsl:for-each>
            </article>

        </div>
    </div>
</div>

<div class="sect sect6">
    <div class="mainContent">
        <div class="content">
            <article id="netherlandscontent">

               <xsl:for-each select="/destinations/country/name[text()='Netherlands']"> 
                <div>
                    <p><xsl:value-of select = "../name"/></p>
                </div>
                <p>
									<xsl:value-of select = "../descriptions"/>
                 </p>
							</xsl:for-each>
            </article>


        </div>
    </div>
</div>

<div class="sect sect7">
    <div class="mainContent">
        <div class="content">
            <article id="irelandcontent">

                <xsl:for-each select="/destinations/country/name[text()='Ireland']"> 
                <div>
                    <p><xsl:value-of select = "../name"/></p>
                </div>
                <p>
									<xsl:value-of select = "../descriptions"/>
                 </p>
							</xsl:for-each>
            </article>


        </div>
    </div>
</div>
<div class="sect sect8">
    <div class="mainContent">
        <div class="content">
            <article id="belgiumcontent">

                <xsl:for-each select="/destinations/country/name[text()='Belgium']"> 
                <div>
                    <p><xsl:value-of select = "../name"/></p>
                </div>
                <p>
									<xsl:value-of select = "../descriptions"/>
                 </p>
							</xsl:for-each>
            </article>

        </div>
    </div>
</div>

<div class="sect sect9">
    <div class="mainContent">
        <div class="content">
            <article id="turkeycontent">

                <xsl:for-each select="/destinations/country/name[text()='Turkey']"> 
                <div>
                    <p><xsl:value-of select = "../name"/></p>
                </div>
                <p>
									<xsl:value-of select = "../descriptions"/>
                 </p>
							</xsl:for-each>
            </article>

        </div>
    </div>
</div>



<div class="sect sect10">
    <div class="mainContent">
        <div class="content">
            <article id="polandcontent">

                <xsl:for-each select="/destinations/country/name[text()='Poland']"> 
                <div>
                    <p><xsl:value-of select = "../name"/></p>
                </div>
                <p>
									<xsl:value-of select = "../descriptions"/>
                 </p>
							</xsl:for-each>
            </article>

        </div>
    </div>
</div>



<footer class="mainFooter">
    <p>Copyright: BonVoyagers</p>
</footer>
</body>

</html>


    
  </xsl:template>
</xsl:transform>