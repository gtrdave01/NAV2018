pageextension 50102 CustCardExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("Customer Posting Group")
        {
            field(Inactive;Inactive)
            {
                Caption = 'Inactive';
                ToolTip = 'Indicates if the customer is currently active or not.';
                ApplicationArea = ALL;
                QuickEntry = false;
            }
        }  

        modify(Name)
        {
            StyleExpr = Inactive;
            Style = Attention;
        }     
    }

    actions
    {
        
    }

       

}