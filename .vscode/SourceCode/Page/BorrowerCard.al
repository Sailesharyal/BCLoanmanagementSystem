page 50517 "Borrower Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;


    layout
    {
        area(Content)
        {
            group(GroupName)
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



    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        IF Rec."Is Borrower" = false THEN
            Rec."Is Borrower" := true;
    end;

    var
        myInt: Integer;
}