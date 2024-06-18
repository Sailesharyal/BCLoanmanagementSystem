table 50517 "Details"
{
    DataClassification = ToBeClassified;

    fields
    {

        field(1; "Code"; Code[50])
        {
            TableRelation = "Customer" where("Is Borrower" = const(true));

        }

        field(2; "Borrower's Name"; Code[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.Name where("No." = field(Code)));
        }

        field(3; Address; Code[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Customer.Address where("No." = field(Code)));
        }
        field(10; "Loan.No"; Integer)
        {
            DataClassification = ToBeClassified;

        }

        field(5; "loan amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(Key1; "Loan.No")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {

    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}