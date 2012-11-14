
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
                            <div id="mapviewer"><iframe id="map" Name="mapFrame" scrolling="no" width="340" height="280" frameborder="0" 
                                src="http://www.bing.com/maps/embed/?lvl=14&amp;cp=43.524553~-80.213331&amp;sty=r&amp;draggable=false&amp;
                                v=2&amp;dir=0&amp;form=LMLTEW&amp;mkt=en-ca&amp;emid=c922a74d-98a5-ff72-b4fe-c5c83766536a&amp;w=350&amp;h=280">
                                </iframe><div id="LME_maplinks" style="line-height:20px;"><a id="LME_largerMap" 
                                href="http://www.bing.com/maps/?cp=43.524553~-80.213331&amp;sty=h&amp;lvl=14&amp;where1=&amp;mm_embed=map&amp;
                                form=LMLTEW" target="_blank">View Larger Map</a>&nbsp;<a id="LME_directions" 
                                href="http://www.bing.com/maps/?cp=43.524553~-80.213331&amp;sty=h&amp;lvl=14&amp;rtp=~pos.43.524553_-80.213331_&amp;
                                mm_embed=dir&amp;form=LMLTEW" target="_blank">Get Directions</a>&nbsp;<a id="LME_birdsEye" 
                                href="http://www.bing.com/maps/?cp=r7mpgn89g004&amp;sty=b&amp;lvl=18&amp;where1=&amp;mm_embed=be&amp;
                                form=LMLTEW" target="_blank">View Bird's Eye</a></div>
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