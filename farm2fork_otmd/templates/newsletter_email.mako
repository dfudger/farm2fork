## -*- coding: utf-8 -*-
## Content-Type: text/html

<html>
    <body>
        <h1>Farm2fork Newsletter for ${date}</h1> ## maybe don't hard code the date...
        ## TODO replace this title with a image of the logo
        <p>
            Thank you for being an active member of the farm2fork community.
            Here are some things that we would love to make avaible to the
            users of food banks and pantries. If you can help with any of these
            needs please go to the farm2fork website and tell us about your
            intend to donate.
        </p>
        % if food_banks:
            %for pantry in food_banks:
                <h2> ${pantry.name}</h2>
                ## TODO make this a link to the provider page of each foodbank
                <ul>
                    %for request in pantry.requests:
                    <li>
                        ${request.quantity} ${request.item.item_title}
                    </li>
                %endfor
                </ul>
            %endfor
        %endif
    </body>
</html>
