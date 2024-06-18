page 50519 "Details Card Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Details;

    layout
    {
        area(Content)
        {
            group(Details)
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