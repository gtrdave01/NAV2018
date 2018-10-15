tableextension 50100 "ExtCustomer" extends Customer
{

    fields
    {
        field(50100;"Inactive";Boolean)
        {
            
            Caption = 'Inactive';
            DataClassification = ToBeClassified;
            FieldClass = Normal;
            

        }
    }

    procedure ToggleInactive(IsPageEditable:Boolean)
    begin
        Inactive := not Inactive;
        if not IsPageEditable then
            Modify(true);

    end;


}