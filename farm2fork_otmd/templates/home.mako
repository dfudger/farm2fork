<%inherit file="base.mako"/>

<%block name="page_title">farm2fork - ${title}</%block>

<%block name="header">
    <h2 id="header_title">${title} <small>test</small></h2>
</%block>

<%block name="navbar">
    <ul class="nav">
        <li class="active"><a href="/">home</a></li>
        <li><a href="/profile/douglas">douglas' profile</a></li>
    </ul>
</%block>


<div class="row-fluid">
    
    <div id="myCarousel" class="carousel slide" class="span8 offset2" class=".visible-desktop">
      <!-- Carousel items -->
      <div class="carousel-inner">
        <div class="active item">
            <img src="http://farm4.staticflickr.com/3214/2661516211_26d6009b51.jpg" height="50" width="500" alt="Test Image One"/>
        </div>
        <div class="item">
            <img src="http://farm5.staticflickr.com/4040/4299696556_d09312cfe5_b.jpg" height="100" width="500" alt="Test Image Two"/>
        </div>
        <div class="item">
            <img src="http://farm4.staticflickr.com/3034/2693444181_1f3ca8ab2e_b.jpg" height="100" width="500" alt="Test Image Three"/>
        </div>
        <div class="item">
            <img src="http://farm7.staticflickr.com/6092/6277351449_ef58f0e709_b.jpg" height="100" width="500" alt="Test Image Four"/>
        </div>
      </div>
      <!-- Carousel nav -->
      <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div>

</div> <!-- End Row 1-->

<div class="row-fluid">
    <!--<div class="span">
        <h3>Welcome!</h3>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ut porttitor
            lectus. Mauris in mi ac turpis rhoncus condimentum at at turpis. Phasellus
            turpis est, sollicitudin vitae scelerisque a, commodo facilisis risus. Quisque
            porttitor volutpat arcu quis tempus. Vivamus non eros tortor, ornare aliquet
            diam. Sed at augue ligula, in feugiat dui. Sed sit amet nibh eu augue porttitor
            ultricies. Proin sodales vestibulum turpis at volutpat. Quisque odio quam,
            ultricies sit amet egestas vitae, aliquet sed eros. Morbi ultrices justo in
            elit adipiscing congue. Donec nec rutrum lectus.

            Nunc id mauris purus. Sed sed dui urna. Sed eros risus, posuere vitae rhoncus
            ac, convallis et felis. Aenean odio velit, adipiscing eu vehicula vel,
            malesuada eu nisi. Vivamus mattis ornare tellus quis venenatis. Maecenas vel
            lectus id augue bibendum eleifend. Curabitur pulvinar pulvinar tempor. Nulla
            non ligula nec dui sagittis tristique. Aenean eu tellus ac velit auctor egestas
            et vitae metus. 
        </p>
    </div>-->
    <div class="span6 offset5">
        <h3>What is farm2fork</h3>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
            vestibulum commodo enim, vel varius sem aliquam at. Donec egestas dapibus urna
            id ultricies. Class aptent taciti sociosqu ad litora torquent per conubia
            nostra, per inceptos himenaeos. Vestibulum erat erat, auctor ac dapibus id,
            semper eget dui. Vestibulum nec metus metus. Curabitur aliquet, urna eu
            consequat vulputate, orci nunc dictum leo, in iaculis odio lectus sit amet
            arcu. Aliquam ac sem libero, at ultrices lorem. Phasellus non metus at tortor
            facilisis vehicula eget sit amet velit. Vestibulum euismod porttitor nisl, non
            sagittis massa viverra non. In elit risus, molestie blandit pulvinar.  
        </p>
    </div>
</div> <!-- End Row 2 -->