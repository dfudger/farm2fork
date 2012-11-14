<%inherit file="base.mako"/>

<%block name="page_title">farm2fork - ${title}</%block>

<%block name="header">
    <h1 id="header_title">${title} <small>test</small></h1>
</%block>

<!-- Carousel -->
<div class="row-fluid hidden-phone"> 
    <div class="span12">
        <div id="myCarousel" class="carousel slide">
          <!-- Carousel items -->
          <div class="carousel-inner">
            <div class="active item">
                <img src="/static/img/apples.jpg" alt="Apples" />
            </div>
            <div class="item">
                <img src="/static/img/broccoli.jpg" alt="Broccoli" />
            </div>
            <div class="item">
                <img src="/static/img/potatoes.jpg" alt="Potatoes" />
            </div>
            <div class="item">
                <img src="/static/img/plums.jpg" alt="Plums" />
            </div>
          </div>
          <!-- Carousel nav -->
          <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
          <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div>
    </div>
</div> <!-- End Row 1-->

<!-- Buttons -->
<div class="row-fluid">
    <div class="span12">
        <p id="buttonContainer">
            <button class="button">Donate Food</button>
            <button class="button">Donate Time</button>
            <button class="button">Donate Money</button>
        </p>
    </div>
</div> <!-- End Row 2 - Buttons-->

<!-- About F2F Section -->
<div class="row-fluid">
    <div class="span5">
        <!--<div class="buttonR green">
            <p>Signup!</p>
        </div>-->
        <div class="signupBtn hidden-phone">
            <h3>Sign Up</h3>
            <p>Join the Farm2Fork Community!</p>
        </div>
    </div>
    <div class="span7   ">
        <h2>What is Farm2Fork</h2>
        <hr/>
        <ul class="thumbnails pull-left" id="farmer-pic">
            <li class="span12">
                <div class="thumbnail">
                    <img src="/static/img/volunteer1.jpg" alt="Volunteers packing food.">
                    <small>Students packinging donations.</small>
                </div>
            </li>
        </ul>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
        vestibulum commodo enim, vel varius sem aliquam at. Donec egestas dapibus urna
        id ultricies. Class aptent taciti sociosqu ad litora torquent per conubia
        nostra, per inceptos himenaeos. Vestibulum erat erat, auctor ac dapibus id,
        semper eget dui.</p>

        <p class="hidden-phone">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
        vestibulum commodo enim, vel varius sem aliquam at. Donec egestas dapibus urna
        id ultricies. Class aptent taciti sociosqu ad litora torquent per conubia
        nostra, per inceptos himenaeos. Vestibulum erat erat, auctor ac dapibus id,
        semper eget dui.</p>

        <small><a href="/about">more...</a></small>
    </div>
</div> <!-- End Row -->

<div id="loginModal" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="loginModalLabel">Login to Farm2fork</h3>
    </div>
    <div class="modal-body">
        <%include file="login.mako"/>
    </div>
</div>

