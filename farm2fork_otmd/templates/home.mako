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
        </div>
    </div>
</div> <!-- End Row 1-->

<!-- Buttons -->
<div class="row-fluid visible-phone">
    <div class="span12">
        <p id="buttonContainer">

            <button onclick="window.open('/construction','_self')" class="button">Donate Food</button>
            <button onclick="window.open('/construction','_self')" class="button">Donate Time</button>
            <button onclick="window.open('/construction','_self')" class="button">Donate Money</button>

        </p>
    </div>
</div> <!-- End Buttons-->

<!-- About F2F Row -->
<div class="row-fluid">
    <!--Who Are We-->
    <div class="span4">
        <h2>What is Farm2Fork</h2>
        <hr/>
        <ul class="thumbnails pull-left" id="farmer-pic">
            <li class="span12">
                <div class="thumbnail">
                    <img src="/static/img/volunteer1.jpg" alt="Volunteers packing food.">
                    <small>Students packaging donations.</small>
                </div>
            </li>
        </ul>
        <p id="aboutP">
            Farm2Fork is a project created to ease communication between Emergency Food
            Providers (EFPs) and members of their local community.  Currently, there are
            times in which EFPs are having to reject donations because of storage
            limitations or are unable to collect priority items because of difficulties
            with advertising.  Farm2Fork offers a solution by allowing EFPs to easily post
            a list of their current needs and provides a location for community members to
            view the requests and offer contributions.
        </p>

    </div>
    <!-- Sign Up-->
    <div class="span4">
        <h2>Join Us</h2>
        <hr/>
        <p id="aboutP">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae augue nibh, et ultrices quam. Aliquam rhoncus velit in sapien iaculis sit amet vehicula augue aliquam. In imperdiet enim sed velit lobortis fringilla. Curabitur auctor aliquam dui, eu placerat augue porta ac. Suspendisse potenti. Quisque sit amet ipsum dolor.
        </p>
        <div class="signupBtn" > 
            <a href="/signup"><h3>Sign Up</h3>
            <p>Join the Farm2Fork Community!</p></a>
        </div>
    </div>
    <!-- What's Happening -->
    <div class="span4 hidden-phone">
        <h2>What's Happening</h2>
        <hr/>
        <p id="aboutP">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae augue nibh, et ultrices quam. Aliquam rhoncus velit in sapien iaculis sit amet vehicula augue aliquam. In imperdiet enim sed velit lobortis fringilla. Curabitur auctor aliquam dui, eu placerat augue porta ac. Suspendisse potenti. Quisque sit amet ipsum dolor.
        </p>

    </div>
</div> <!-- End About F2F Row -->

<!-- Mobile Buttons -->
<div class="row-fluid hidden-phone">
    <div class="span12 offset2">
        <h2>How You Can Help:</h2>
        
        </div>
    <div class="span12">
        <p id="buttonContainer">

            <button onclick="window.open('/construction','_self')" class="button">Donate Food</button>
            <button onclick="window.open('http://www.spiritwind-christian-centre.ca/media/GFB_vol_form09.pdf','_self')" class="button">Donate Time</button>
            <button onclick="window.open('http://www.canadahelps.org/CharityProfilePage.aspx?CharityID=d28507','_self')" class="button">Donate Money</button>

        </p>
    </div>
</div> <!-- End Mobile Buttons-->


<div id="loginModal" class="modal hide" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="loginModalLabel">Login to Farm2Fork</h3>
    </div>
    <div class="modal-body">
        <%include file="login.mako"/>
    </div>
</div>

