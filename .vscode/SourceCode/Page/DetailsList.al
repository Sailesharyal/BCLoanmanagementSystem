page 50518 "Details List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Details;
    CardPageId = "Details Card Page";

    layout
    {
        area(Content)
        {
            repeater(Details)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;

                }

                field("Borrower's Name"; Rec."Borrower's Name")
                {
                    ApplicationArea = All;

                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;

                }

                field("Loan.No"; Rec."Loan.No")
                {
                    ApplicationArea = All;

                }

                field("loan amount"; Rec."loan amount")
                {
                    ApplicationArea = All;

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}