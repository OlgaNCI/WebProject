<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />
  <xsl:template match = "/">
    
    <html>
      <head>
        <title>Bon Voyager</title>
            <!--start of MK codes-->
        <meta charset="UTF-8"/>
            <link href="destinationsStyle.css" rel="stylesheet" type="text/css"/>
            <meta name="viewport" content="width=device-width, initial scare=1.8"/>
              <script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
              <script type="text/javascript" src="js/cycle2.js"></script>
        <!--end of MK codes-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script>
          $(document).ready(function(){
              $("button").click(function(){
                $("#comments_form").toggle();
                });
                $("#comments_form").hide();
              });
        </script>
      </head>
  
  
  
  <body class="body">
    

    <!--<div id="post_form">
    <form id = "form1" action = "form.php" method = "POST" >
      Post:
      <br/>
      <textarea rows="4" cols="50" type = "text" name="post_description">Input text Here </textarea>
      <br/>
      
    <input type = "submit" form = "form1" />
            
    </form>
      
    <table>
      
      <tr>
        <xsl:for-each select="/destinations/country/post">
            <th><xsl:value-of select = "post_username"/></th>
            <td><xsl:value-of select = "post_description"/></td>
        </xsl:for-each>
       </tr>
		</table>      
    
    </div>
    
    <div id='showPost'></div><br/>
    <button name ="button">Write Comments</button>
   
      
    <table>
      <tr>
        <xsl:for-each select="/destinations/country/post/comments">
            <th><xsl:value-of select = "comments_username"/></th>
            <td><xsl:value-of select = "post_ratings"/></td>
            <td><xsl:value-of select = "comments"/></td>
        </xsl:for-each>
      </tr>
		</table>
    
    <div id = "comments_form">
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
      
    </div> -->
    <!--john code end-->
    
    <!--the start of MK Codes-->
    <div class="container">
        <nav><ul>
            <li class="active"><a href="#">Home</a></li>
       
            <!-- line for navigational tabs-->
        </ul></nav>

</div>

<div id="slideshow" class="cycle-slideshow"
     data-cycle-fx="fade"
     data-cycle-timeout="5000">

    <img src="images/1.jpg" alt=""/>
    <img src="images/3.jpg" alt=""/>
    <img src="images/4.jpg" alt=""/>
    <img src="images/5.jpg" alt=""/>
    <img src="images/6.jpg" alt=""/>
    <img src="images/7.jpg" alt=""/>
</div>

<div id="pager"></div>

   <!-- </div> -->



    <div class="mainContent">
        <div class="content">
            <article class="topcontent">
                <header>
                <h2><a href="#" title="First post">Will add image slide for europe cities</a></h2>
                    <!--href is for links-->
                </header>




                <template>
                    <p>
                       write post
                    </p>
                </template>
            </article>
            <article class="bottomcontent">
                <header>
                    <h2><a href="#" title="First post"> Europe Overview</a></h2>
                    <!--href is for links-->
                </header>


                <footer>
                    <p class="post-info">There are encounters you'll always remember, similar to dawn over Stonehenge on the longest day of the year, peered toward to the pacey beats of flower children, or the delicate sprinkle of your gondola weaving down the watery avenues of Venice. For nature fans, the taking off pinnacles of the Alps and the Pyrenees take skiers' and explorers' breath away. With a little good fortune, you can heave at the frightful common lights of northernmost Norway, or swim with turtles off the natural coastlines of Greece. 

For current commotion, Germany's lager lobbies, the excitement and marvelousness of Monaco's clubhouse and a large group of summer music celebrations offer nightlife you'll always remember; focal Europe's blanketed Christmas markets place you in regular soul, while liberal Amsterdam gives you a chance to twist the standards without breaking them. Prior in the day, Belgium's mussels, Italy's dessert, Spain's seared infant squid and the delicate Cepelinai dumplings of Lithuania will all make them bother the culinary specialist for formulas.
With The Colosseum, The Kremlin, The Eiffel Tower and all the musical charms of a conventional Irish bar, and extending from the sunny shoreline of Portugal to the scanty Ural Piles of focal Russia, Europe takes in 50 nations, more than 200 dialects and an incomprehensible exhibit of the world's most acclaimed locales, making this social behemoth many voyager's fantasy goal. 

The west has the social glory of previous domains: the Places of Parliament in London, the exquisite yet dreamlike specialty of Barcelona and the 'mainstays of progress' in the disintegrating structures of Athens (also the delights of old-world Rome). Toward the east you'll locate a world developing quick from the leftovers of socialism, and favored with the natural magnificence of the Romanian farmland and a forcing gothic look crossed with bohemian oddity in lovely Prague.
Getting around is simple, with long separation transports, spending aircrafts and Euro rail passes that'll keep you bouncing through nations in abundance, and a constantly expanding number of able English speakers to help you on your way. Over every outskirt another welcome anticipates you: a glass of wine in France, an additional quality espresso in Italy, a Guinness in Dublin, a bowl of olives in Greece and a slug of vodka in the Ukraine, every one special, and each remarkable.
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
        <xsl:for-each select="/destinations/country/post">
            <th>Username:<xsl:value-of select = "post_username"/></th>
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="/destinations/country/post">
            <th>Post:<xsl:value-of select = "post_description"/></th>
        </xsl:for-each>
      </tr>
		</table>      
    
    </div>
   
    <div id='showPost'></div><br/>
    <button name = "button">Write Comments</button>
   
      
    <table>
      <tr>
        <xsl:for-each select="/destinations/country/post/comments">
            <th>Username:<xsl:value-of select = "comments_username"/></th>      
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="/destinations/country/post/comments">          
            <td>Rating:<xsl:value-of select = "post_ratings"/></td>            
        </xsl:for-each>
      </tr>
      <tr>
        <xsl:for-each select="/destinations/country/post/comments">
            <td>Comments:<xsl:value-of select = "comments"/></td>
        </xsl:for-each>
      </tr>
      
      
		</table>
    
    <div id = "comments_form">
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
                  
               
                </footer>

                <template>
                    <p>
                        write post
                    </p>
                  
                  
                  
                </template>
            </article>
        </div>
    </div>


    <aside class="top-sidebar">
        <article>

            <h2>Top sidebar</h2>
            <p> Top Ten European Cities</p>
            <!--top side bar links/tabs -->
            <nav><ul>
                <li class="active"><a href="#">United kingdom</a></li>
                <li><a href="#">Italy</a></li>
                <li><a href="#">Spain</a></li>
                <li><a href="#">France</a></li>
                <li><a href="#">Germany</a></li>
                <li><a href="#">Netherland</a></li>
                <li><a href="#">Ireland</a></li>
                <li><a href="#">Belgium</a></li>
                <li><a href="#">Turkey</a></li>
                <li><a href="#">Poland</a></li>
                <!-- line for navigational tabs-->
            </ul></nav>

        </article>
    </aside>

    <aside class="middle-sidebar">
        <article>

            <h2>Mid sidebar</h2>
            <p> write something for side bar</p>
            <!--mid side bar links/tabs -->
            <nav><ul>
                <li class="active"><a href="#">tab</a></li>
                <li><a href="#">Another tab</a></li>
                <li><a href="#">tab...etc</a></li>
                <!-- line for navigational tabs-->
            </ul></nav>
        </article>
    </aside>



    <aside class="bottom-sidebar">
        <article>

            <h2>Bottom sidebar</h2>
            <p> write something for side bar</p>
            <!--bottom side bar links/tabs -->
            <div class="nav"><ul>
                <li class="active"><a href="#">tab</a></li>
                <li><a href="#">Another tab</a></li>
                <li><a href="#">tab...etc</a></li>
                <!-- line for navigational tabs-->
            </ul></div>

        </article>


    </aside>

    <footer class="mainFooter">
        <p>Copyright stuff or whatever</p>
    </footer>
    <!--end of MK codes -->
  </body>
  
  
</html>


    
  </xsl:template>
</xsl:transform>