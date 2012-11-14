
<%inherit file="base.mako"/>

<%block name="page_title">farm2fork - ${title}</%block>

<%block name="header">
    <h1 id="header_title">${title} <small>test</small></h1>
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
                            <p>University Of Guelph</p>
                            <p>100 Stone W, Guelph, ON N1H</p>
                            <div id="mapviewer"><iframe id="map" Name="mapFrame" scrolling="no" width="250" height="250" frameborder="0" src="http://www.bing.com/maps/embed/?lvl=14&amp;cp=43.52824233524411~-80.22379115344238&amp;sty=r&amp;draggable=true&amp;v=2&amp;dir=0&amp;where1=University+of+Guelph%2C+ON&amp;form=LMLTEW&amp;pp=43.527889251708984~-80.22310638427734&amp;mkt=en-ca&amp;emid=a70d037b-321d-08f5-65cf-779043d20d9d&amp;w=250&amp;h=250"></iframe><div id="LME_maplinks" style="line-height:20px;"><a id="LME_largerMap" href="http://www.bing.com/maps/?mm_embed=map&amp;cp=43.52824233524411~-80.22379115344238&amp;lvl=14&amp;sty=r&amp;where1=University+of+Guelph%2C+ON&amp;form=LMLTEW" target="_blank">View Larger Map</a>&nbsp;<a id="LME_directions" href="http://www.bing.com/maps/?mm_embed=dir&amp;cp=43.52824233524411~-80.22379115344238&amp;rtp=~pos.43.527889251708984_-80.22310638427734_University+of+Guelph%2C+ON&amp;lvl=14&amp;sty=r&amp;form=LMLTEW" target="_blank">Get Directions</a>&nbsp;</div></div>
                        </div>
                    </div>
                </div>
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <h5><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Contact...</a></h5>
                    </div>

                    <div id="collapseTwo" class="accordion-body collapse">
                        <div class="accordion-inner">
                            <li>Head Coordinator: Jane Doe</li>
                            <li>Phone: 519-226-1235</li>
                            <li>Fax:   221-231-1422</li>
                            <li><a href="mailto:testfarm@example.com">Email: testfarm@example.com</a></li>
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
                <table class="table">  
                    <thead>  
                        <tr>  
                            <th>Monday</th>  
                            <th>Tuesday</th>  
                            <th>Wednesday</th>  
                            <th>Thursday</th>  
                            <th>Friday</th>  
                            <th>Saturday</th>  
                            <th>Sunday</th>     
                        </tr>  
                    </thead>

                    <tbody>  
                        <tr>  
                            <td>12:00AM-12:00PM</td>
                            <td>12:00AM-12:00PM</td> 
                            <td>12:00AM-12:00PM</td>
                            <td>12:00AM-12:00PM</td>
                            <td>12:00AM-12:00PM</td> 
                            <td>12:00AM-12:00PM</td>
                            <td>12:00AM-12:00PM</td>
                        </tr>  
                    </tbody>  
                </table> 
                    
            </div>

            <div>
                <p>
                    <button class="btn btn-large" type="button">Donate Food</button>
                    <button class="btn btn-large" type="button">Donate Time</button>
                    <button class="btn btn-large" type="button">Donate Money</button>
                </p>
            </div>

        </div>
    </div>
</div>