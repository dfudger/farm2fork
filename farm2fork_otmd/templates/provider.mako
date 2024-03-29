
<%inherit file="base.mako"/>

<%block name="page_title">farm2fork - ${title}</%block>

<%block name="header">
    <h1 id="header_title">${title} <small>test</small></h1>
</%block>


##pantry_id = Column(INT(11), primary_key=True, nullable=False)
##contact = Column(VARCHAR(45))
##name = Column(VARCHAR(45), nullable=False)
##Hours_id = Column(INT(11), ForeignKey('Hours.hours_id'), primary_key=True,
                  ##nullable=False)
##address = Column(VARCHAR(512))
##city = Column(VARCHAR(45))
##postal_code = Column(VARCHAR(45))
##province_state = Column(VARCHAR(2))

<!-- Food Bank Profile -->
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span4">
            <!--Sidebar content-->

            <h3>${pantry.name}</h3>
            <img src="/static/img/food_bank.jpg" alt="">

            <div class="accordion" id="accordion2">
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <h5><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">Location...</a></h5>
                    </div>

                    <div id="collapseOne" class="accordion-body collapse">
                        <div class="accordion-inner">
                            ## 
                            <p>
                                ${pantry.address}, ${pantry.city}, ${pantry.province_state} ${pantry.province_state}
                            </p>
                            <div id="mapviewer">
                                <iframe class="hidden-tablet" id="map" Name="mapFrame" scrolling="no" width="250" height="250" frameborder="0" src="http://www.bing.com/maps/embed/?lvl=14&amp;cp=43.52824233524411~-80.22379115344238&amp;sty=r&amp;draggable=true&amp;v=2&amp;dir=0&amp;where1=University+of+Guelph%2C+ON&amp;form=LMLTEW&amp;pp=43.527889251708984~-80.22310638427734&amp;mkt=en-ca&amp;emid=a70d037b-321d-08f5-65cf-779043d20d9d&amp;w=250&amp;h=250"></iframe>
                                <iframe class="visible-tablet" id="map" Name="mapFrame" scrolling="no" width="190" height="190" frameborder="0" src="http://www.bing.com/maps/embed/?lvl=14&amp;cp=43.52824233524411~-80.22209115344238&amp;sty=r&amp;draggable=true&amp;v=2&amp;dir=0&amp;where1=University+of+Guelph%2C+ON&amp;form=LMLTEW&amp;pp=43.527889251708984~-80.22310638427734&amp;mkt=en-ca&amp;emid=a70d037b-321d-08f5-65cf-779043d20d9d&amp;w=190&amp;h=190"></iframe>
                                <div id="LME_maplinks" style="line-height:20px;"><a id="LME_largerMap" href="http://www.bing.com/maps/?mm_embed=map&amp;cp=43.52824233524411~-80.22379115344238&amp;lvl=14&amp;sty=r&amp;where1=University+of+Guelph%2C+ON&amp;form=LMLTEW" target="_blank">View Larger Map</a>&nbsp;<a id="LME_directions" href="http://www.bing.com/maps/?mm_embed=dir&amp;cp=43.52824233524411~-80.22379115344238&amp;rtp=~pos.43.527889251708984_-80.22310638427734_University+of+Guelph%2C+ON&amp;lvl=14&amp;sty=r&amp;form=LMLTEW" target="_blank">Get Directions</a>&nbsp;</div>
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
                            ## TODO we need something in the database that will
                            ##    make one pantry worker have this role. We can
                            ##    then replace these static values
                            <li>Head Coordinator: Jane Doe</li>
                            <li>Phone: 519-226-1235</li>
                            <li>Fax:   221-231-1422</li> 
                            ## What is this the 80's?
                            <li>Email: <a href="mailto:janedoe@example.com">janedoe@example.com</a></li>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- class span3 end -->
        
        <div class="span8">
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

            ##<div>
            %if pantry.hours:
                <h3>Hours</h3>
                <table id="hours_table">
                    <tr>
                        <td><strong>Monday</strong></td>
                        <td>${pantry.hours.monday}</td>
                    </tr>
                    <tr>
                        <td><strong>Tuesday</strong></td>
                        <td>${pantry.hours.tuesday}</td>
                    </tr>
                    <tr>
                        <td><strong>Wednesday</strong></td>
                        <td>${pantry.hours.wednesday}</td>
                    </tr>
                    <tr>
                        <td><strong>Thursday</strong></td>
                        <td>${pantry.hours.thursday}</td>
                    </tr>
                    <tr>
                        <td><strong>Friday</strong></td>
                        <td>${pantry.hours.friday}</td>
                    </tr>
                    <tr>
                        <td><strong>Saturday</strong></td>
                        <td>${pantry.hours.saturday}</td>
                    </tr>
                    <tr>
                        <td><strong>Sunday</strong></td>
                        <td>${pantry.hours.sunday}</td>
                    </tr>
                </table>
            %endif

            <hr>

            <!-- Buttons -->
            <div class="row-fluid">
                <div class="span12">
                    <p id="buttonContainer">
                        <button onclick="window.open('/construction','_self')" class="button">Donate Food</button>
                        <button onclick="window.open('http://www.spiritwind-christian-centre.ca/media/GFB_vol_form09.pdf','_self')" class="button">Donate Time</button>
                        <button onclick="window.open('http://www.canadahelps.org/CharityProfilePage.aspx?CharityID=d28507','_self')" class="button">Donate Money</button>
                    </p>
                </div>
            </div>

            %if USER_IS_WORKER:
                <%include file="modifyneeds.mako"/>
            %endif
        </div><!-- class span9 end -->
    </div><!-- Row-fluid class end -->
</div>
