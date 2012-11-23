
<%inherit file="base.mako"/>

<div class="row-fluid">
    <div class="span">
        <h1>Food Providers</h1>
        <p>
            Here are all of the food providers
        </p>
        %if food_banks:
            %for food_bank in food_banks:
                <h2>${food_bank.name}</h2>
                <p>
                    ${food_bank.contact}
                </p>
                ## TODO we should have hours here but the schema has it in another table
                <p>
                    ${food_bank.address}
                </p>
    </div>
</div>
