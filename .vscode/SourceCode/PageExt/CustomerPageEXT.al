pageextension 50511 "Customer Page Ext" extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field("Is Borrower"; Rec."Is Borrower")
            {
                ApplicationArea = All;
            }
        }
    }
}