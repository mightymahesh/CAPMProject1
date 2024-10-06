using EmployeeManagement from './employee-service';

annotate EmployeeManagement.Employees  with @(

    odata.draft.enabled,
// design level
UI:
{
    SelectionFields  : [
        NAME,
        AGE
    ],
    LineItem  : [
        {
    $Type : 'UI.DataField',
    Value : ID,
},
{
    $Type : 'UI.DataField',
    Value : NAME
},
{
    $Type : 'UI.DataField',
    Value : AGE,
},
{
    $Type : 'UI.DataField',
    Value : EMAIL_ID,
},
{
    $Type:'UI.DataField',
    Value: PHONE_ID
}
    ],

    //facet
    Facets  : [    
        {
    $Type : 'UI.ReferenceFacet',
    Label : 'General Information',
    Target : '@UI.FieldGroup#BasicData',
    ID: 'idBasicData'
}
    ],

    //field group

    FieldGroup #BasicData : {
        $Type : 'UI.FieldGroupType',
         Data:[
{
    $Type : 'UI.DataField',
    Value : ID,
},
{
    $Type : 'UI.DataField',
    Value : NAME
},
{
    $Type : 'UI.DataField',
    Value : AGE,
},
{
    $Type : 'UI.DataField',
    Value : EMAIL_ID,
},
{
    $Type:'UI.DataField',
    Value: PHONE_ID
}
         ]
    },
}
){
// property level
    ID @title: 'Employee Id';
    NAME @title:  'Name';
    EMAIL_ID @title:  'Email Id';
    PHONE_ID @title: 'Phone No';
    AGE @title :  'Age';
}


