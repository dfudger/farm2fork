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
        <h2>What is Farm2Fork?</h2>
        <hr/>
        <ul class="thumbnails pull-left" id="farmer-pic">
            <li class="span12">
                <div class="thumbnail">
                    <img src="/static/img/farmer.jpg" alt="">
                    <small>I'm a farmer, hells yeah!</small>
                </div>
            </li>
        </ul>
        <p>Connect with your local Emergency Food Provider and contribute to the wellness of your community. :)
        </p>

        <p class="hidden-phone"></p>

    </div>
</div> <!-- End Row -->

<!-- Buttons -->
<div class="row-fluid">
    <div class="span6 offset2">
        <p>
            <button class="btn btn-large" type="button">Donate Food</button>
            <button class="btn btn-large" type="button">Donate Time</button>
            <button class="btn btn-large" type="button">Donate Money</button>
        </p>
    </div>
</div> <!-- End Row 2 - Buttons-->

<div id="loginModal" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="loginModalLabel">Login to Farm2Fork</h3>
    </div>
    <div class="modal-body">
        <%include file="login.mako"/>
    </div>
</div>

