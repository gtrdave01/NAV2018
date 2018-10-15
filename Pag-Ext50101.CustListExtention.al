pageextension 50101 "CustListExtention" extends "Customer List"
{
    layout
    {
        modify(Name)
        {
            StyleExpr = Inactive;
            Style = Attention;
        }     
    }

    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt : Integer;
}