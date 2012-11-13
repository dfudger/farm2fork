<%inherit file="base.mako"/>

<%block name="page_title">farm2fork - ${title}</%block>

<%block name="header">
    <h1 id="header_title">${title} <small>test</small></h1>
</%block>


<!-- Carousel -->
<div class="row-fluid"> 
    
    <div id="myCarousel" class="carousel slide span12 hidden-phone">
      <!-- Carousel items -->
      <div class="carousel-inner">
        <div class="active item">
            <img src="/static/img/sample1_1200x480.png" alt="Test Image One"/>
        </div>
        <div class="item">
            <img src="http://gryphons.ca/images/2012/4/4/rp_primary_IMG_4859.JPG" alt="Test Image Two"/>
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

</div> <!-- End Row 1 About F2F-->

<!-- About F2F Section -->
<div class="row-fluid">
    <div class="span1"></div>
    <div class="span6 offset4">
        <h3>What is Farm2Fork</h3>
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
        <h3 id="loginModalLabel">Login to Farm2fork</h3>
    </div>
    <div class="modal-body">
        <%include file="login.mako"/>
    </div>
</div>

