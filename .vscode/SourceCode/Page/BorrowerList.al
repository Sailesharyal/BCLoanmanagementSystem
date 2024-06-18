page 50516 "Borrower List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;

    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            repeater(Detail)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field("Is Borrower"; Rec."Is Borrower")
                {
                    ApplicationArea = All;
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

}
