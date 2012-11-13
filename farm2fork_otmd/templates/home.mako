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
                <img src="/static/img/farm2.png" alt="test 1" />
            </div>
            <div class="item">
                <img src="/static/img/farm3.png" alt="test 2" />
            </div>
            <div class="item">
                <img src="/static/img/farm4.png" alt="test 3" />
            </div>
            <div class="item">
                <img src="/static/img/farm1.png" alt="test 3" />
            </div>
          </div>
          <!-- Carousel nav -->
          <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
          <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div>
    </div>
</div> <!-- End Row 1-->

<!-- About F2F Section -->
<div class="row-fluid">
    <div class="span1 hidden-phone">
    </div>
    <div class="span7 offset4">
        <h2>What is Farm2Fork</h2>
        <hr/>
        <ul class="thumbnails pull-left" id="farmer-pic">
            <li class="span12">
                <div class="thumbnail">
                    <img src="/static/img/farmer.jpg" alt="">
                    <small>I'm a farmer, hells yeah!</small>
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

<!-- Buttons -->
<div class="row-fluid">
    <div class="span4 offset4 ">
        <p>
            <button class="btn btn-large btn-success" type="button">Large button</button>
            <button class="btn btn-large" type="button">Large button</button>
        </p>
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

