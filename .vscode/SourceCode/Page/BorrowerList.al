page 50516 "Borrower List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    CardPageId = "Borrower Card";
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            repeater(Detail)
            {

                field("No."; Rec."No.")

                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field("Is Borrower"; Rec."Is Borrower")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = ALL;

                }

                field(Contact; Rec.Contact)
                {
                    ApplicationArea = ALL;

                }



            }
        }

    }

    trigger OnOpenPage()
    begin
        Rec.SETFILTER("Is Borrower", '=%1', true);
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        IF Rec."Is Borrower" = false THEN
            Rec."Is Borrower" := true;
    end;
}
