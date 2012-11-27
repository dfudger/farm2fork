Farm2fork Newsletter for ${date}

Thank you for being an active member of the farm2fork community. Here
are some things that we would love to make avaible to the users of food
banks and pantries. If you can help with any of these needs please 

% if food_banks:
    %for pantry in food_banks:
        ${pantry.name}
            %for request in pantry.requests:
                ${request.quantity} ${request.item.item_title}
        %endfor
    %endfor
%endif
