
<%inherit file="base.mako"/>

<div class="row-fluid">
    <div class="span12">
        <h1>Food Providers</h1>
        <p>
            Here are all of the food providers
        </p>
        %if food_banks:
            %for food_bank in food_banks:
                <h2><a href="/provider/${food_bank.pantry_id}">${food_bank.name}</a></h2>
                <p>
                    Can be reached at: ${food_bank.contact}
                </p>
                ## TODO we should have hours here but the schema has it in another table
                <p>
                    Is at the address: ${food_bank.address}
                </p>
            %endfor
        %endif
    </div>
</div>
