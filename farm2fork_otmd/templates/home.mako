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

<!-- Buttons -->
<div class="row-fluid">
    <div class="span12">
        <p id="buttonContainer">
            <button class="button"><i class="icon-shopping-cart icon-white"></i> Donate Food</button>
            <button class="button"><i class="icon-time icon-white"></i> Donate Time</button>
            <button class="button"><sup>$</sup> Donate Money</button>
        </p>
    </div>
</div> <!-- End Row 2 - Buttons-->

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
                    <img src="/static/img/farmer.jpg" alt="Image of a farmer.">
                    <small>I'm a farmer!</small>
                </div>
            </li>
        </ul>
        <p>Farm2Fork is a project created with the intent of solving the problem of a lack of available fresh food from Emergency Food Providers (EFPs) by addressing the minimal amount of communication between them. Currently, there are times in which EFPs are either rejecting donations because of space limitations or when they simply do not have enough food to give out. There is a particular need for fresh vegetables or meat to facilitate a healthier lifestyle of those in need. The goal of this project is to meet these needs by bringing awareness to those in the community who would be willing to lend a hand through methods of donating goods, time and money.</p>

        <p class="hidden-phone"></p>

        <small><a href="/about">more...</a></small>
    </div>
</div> <!-- End Row -->


<div id="loginModal" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="loginModalLabel">Login to Farm2Fork</h3>
    </div>
    <div class="modal-body">
        <%include file="login.mako"/>
    </div>
</div>

