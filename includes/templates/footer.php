<footer class="site-footer">
    <div class="contenedor clearfix">
      <div class="footer-innformacion">
        <h3>Sobre <span>gldwebcamp</span></h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis, eveniet molestiae? Modi provident commodi recusandae sunt iure quisquam consequatur laborum vitae amet, et obcaecati, sed quod reprehenderit sequi impedit culpa!</p>
      </div>
      <div class="ultimos-tweets">
          <h3>Últimos <span>tweets</span></h3>
          <ul>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum fugiat error quos earum quod, animi sapiente ipsum aut blanditiis necessitatibus, vitae in id dolorem repellat.</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum fugiat error quos earum quod, animi sapiente ipsum aut blanditiis necessitatibus, vitae in id dolorem repellat.</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum fugiat error quos earum quod, animi sapiente ipsum aut blanditiis necessitatibus, vitae in id dolorem repellat.</li>
          </ul>
      </div>
      <div class="menu">
          <h3>Redes <span>sociales</span></h3>
          <nav class="redes-sociales">
              <a href="#"><i class="fa fa-facebook-f" aria-hidden="true"></i></a>
              <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
              <a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
              <a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a>
              <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </nav>
      </div>
    </div>

    <p class="copyright">
    Todos los derechos Reservados GLDWEBCAMP 2016.
    </p>

    <!-- Begin Mailchimp Signup Form -->
    <link href="//cdn-images.mailchimp.com/embedcode/classic-10_7.css" rel="stylesheet" type="text/css">
    <style type="text/css">
      #mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; }
      /* Add your own Mailchimp form style overrides in your site stylesheet or in this style block.
        We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
    </style>
    <div style="display:none;">
        <div id="mc_embed_signup">
          <form action="https://facebook.us7.list-manage.com/subscribe/post?u=6674c4e884d2b4049a62ae503&amp;id=43dc3f577b" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
              <div id="mc_embed_signup_scroll">
                <h2>Subscribete al Newsletter y no te pierdas nada de este evento</h2>
                <div class="indicates-required"><span class="asterisk">*</span> es obligatorio</div>
                  <div class="mc-field-group">
                    <label for="mce-EMAIL">Correo electrónico  <span class="asterisk">*</span>
                  </label>
                    <input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL">
                  </div>
                <div id="mce-responses" class="clear">
                  <div class="response" id="mce-error-response" style="display:none"></div>
                  <div class="response" id="mce-success-response" style="display:none"></div>
                </div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_6674c4e884d2b4049a62ae503_43dc3f577b" tabindex="-1" value=""></div>
                <div class="clear"><input type="submit" value="Subscribirse" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
              </div>
          </form>
        </div>
        <script type='text/javascript' src='//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js'></script><script type='text/javascript'>(function($) {window.fnames = new Array(); window.ftypes = new Array();fnames[0]='EMAIL';ftypes[0]='email';fnames[1]='FNAME';ftypes[1]='text';fnames[2]='LNAME';ftypes[2]='text';fnames[3]='ADDRESS';ftypes[3]='address';fnames[4]='PHONE';ftypes[4]='phone';}(jQuery));var $mcj = jQuery.noConflict(true);</script>
        <!--End mc_embed_signup-->

    </div>
  </footer><!-- footer -->


  <script src="js/vendor/modernizr-3.6.0.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script>window.jQuery || document.write('<script src="js/vendor/jquery-3.3.1.min.js"><\/script>')</script>
  <script src="js/plugins.js"></script>
  <script src="https://unpkg.com/leaflet@1.3.4/dist/leaflet.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.lettering.js"></script>

      <?php 
        $archivo = basename($_SERVER['PHP_SELF']);
        $pagina = str_replace(".php", "", $archivo);
        if($pagina == 'Invitados' || $pagina=='index') {
            echo '<script src="js/jquery.colorbox-min.js"></script>';
        }else if($pagina == 'conferencia') {
          echo '<script src="js/lightbox.js"></script>';
        }
      ?>
  
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/main.js"></script>


  <!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->
  <script>
    window.ga = function () { ga.q.push(arguments) }; ga.q = []; ga.l = +new Date;
    ga('create', 'UA-XXXXX-Y', 'auto'); ga('send', 'pageview')
  </script>
  <script src="https://www.google-analytics.com/analytics.js" async defer></script>

  <script type="text/javascript" src="//downloads.mailchimp.com/js/signup-forms/popup/unique-methods/embed.js" data-dojo-config="usePlainJson: true, isDebug: false"></script><script type="text/javascript">window.dojoRequire(["mojo/signup-forms/Loader"], function(L) { L.start({"baseUrl":"mc.us7.list-manage.com","uuid":"6674c4e884d2b4049a62ae503","lid":"43dc3f577b","uniqueMethods":true}) })</script>
</body>
</html>