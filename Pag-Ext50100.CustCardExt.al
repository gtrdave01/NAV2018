pageextension 50100 "CustCardExt" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field(Inactive;Inactive)
            {
                Caption = 'Inactive';
                ToolTip = 'Indicates if the customer is currently active or not..';
                ApplicationArea = ALL;
                QuickEntry = false;
                Editable = true;
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
        addafter("Ledger E&ntries")
        {
            action("Toggle Inactive")
            {
                Caption = 'Toggle Inactive';
                ApplicationArea = All;
                image = ToggleBreakpoint;

                trigger OnAction()
                begin
                    ToggleInactive(CurrPage.Editable());                    
                end;

            }

        }
    }

       

}