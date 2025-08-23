using UserManagement as service from '../../srv/admin-service';
annotate service.Users with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'username',
                Value : username,
            },
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastName',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phone',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'address_streetName',
                Value : address_streetName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'address_houseNo',
                Value : address_houseNo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'address_city',
                Value : address_city,
            },
            {
                $Type : 'UI.DataField',
                Label : 'address_postalCode',
                Value : address_postalCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'address_country_code',
                Value : address_country_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'shortIntro',
                Value : shortIntro,
            },
            {
                $Type : 'UI.DataField',
                Label : 'detailedIntro',
                Value : detailedIntro,
            },
            {
                $Type : 'UI.DataField',
                Label : 'salary',
                Value : salary,
            },
            {
                $Type : 'UI.DataField',
                Label : 'currency_code',
                Value : currency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'userRole_code',
                Value : userRole_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'username',
            Value : username,
        },
        {
            $Type : 'UI.DataField',
            Label : 'firstName',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'lastName',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'phone',
            Value : phone,
        },
    ],
);

