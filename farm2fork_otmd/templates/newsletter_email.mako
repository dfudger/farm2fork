<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    </head>
    <body>
        <h1>Farm2fork Newsletter for ${date}</h1>
        ## TODO replace this title with a image of the logo
        <p>
            Thank you for being an active member of the Farm2Fork community. Here are some things that we would love to make avaible to the users of food banks and pantries. If you can help with any of these needs please 
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
