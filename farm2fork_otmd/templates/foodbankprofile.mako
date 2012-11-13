
<%inherit file="base.mako"/>

<%block name="page_title">farm2fork - ${title}</%block>

<%block name="header">
    <h1 id="header_title">${title} <small>testicles</small></h1>
</%block>


<!-- Food Bank Profile -->
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3">
            <!--Sidebar content-->

            <h3>Food Bank Example</h3>
            <img src="/static/img/food_bank.jpg" alt="">

            <div class="accordion" id="accordion2">
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <h5><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">Location...</a></h5>
                    </div>

                    <div id="collapseOne" class="accordion-body collapse">
                        <div class="accordion-inner">
                            <div id="mapviewer"><iframe id="map" scrolling="no" width="500" height="400" frameborder="0" 
                                src="http://www.bing.com/maps/embed/?v=2&amp;cp=43.518666~-80.237920&amp;lvl=17&amp;dir=0&amp;
                                sty=r&amp;vm=nokia-stoneroadmall&amp;f=Level%201&amp;form=LMLTEW&amp;emid=ea889b77-7cf5-fe8e-6fc0-53e10dcae7fb">
                                </iframe><div id="LME_maplinks" style="line-height:20px;"><a id="LME_largerMap" href="http://www.bing.com/maps/?v=2&amp;
                                cp=43.518666~-80.237920&amp;lvl=17&amp;dir=0&amp;sty=r&amp;vm=nokia-stoneroadmall&amp;f=Level%201&amp;form=LMLTEW" 
                                target="_blank" style="margin:0 7px">View Larger Map</a><a id="LME_directions" 
                                href="http://www.bing.com/maps/?v=2&amp;cp=43.518666~-80.237920&amp;lvl=17&amp;dir=0&amp;sty=r&amp;
                                vm=nokia-stoneroadmall&amp;f=Level%201&amp;form=LMLTEW&amp;rtp=%7Epos.43.51866599999999_-80.23792000000002_guelph%20stone%20road%20mall" 
                                target="_blank" style="margin:0 7px">Driving Directions</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <h5><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Contact...</a></h5>
                    </div>

                    <div id="collapseTwo" class="accordion-body collapse">
                        <div class="accordion-inner">
                            <ul>
                                <li>Head Coordinator: Jane Doe</li>
                                <li>Phone: 519-226-1235</li>
                                <li>Fax:   221-231-1422</li>
                                <li><a href="mailto:test@example.com">Email: testfarm@example.com</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="span9">
            <!--Body content-->
            <div>
                <h3>About</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. 
                    Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh 
                    elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus 
                    sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. 
                    Class aptent taciti sociosq.
                </p>
            </div>

            <div>
                <h3>Hours</h3>
            </div>

        </div>
    </div>
</div>