table 50518 "EMI Calculate"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "document number"; Code[100])
        {
            DataClassification = ToBeClassified;
        }
        field(1; "Loan No"; Integer)
        {
            TableRelation = Details;

        }

        field(2; "Name"; code[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(details."Borrower's Name" where("Loan.No" = field(code)));

        }

        field(3; "Code"; code[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(details."Code" where("Loan.No" = field(code)));
        }

        field(4; "address"; code[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(details."Address" where("Loan.No" = field(code)));
        }

        field(5; "loan amount"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = lookup(details."loan amount" where("Loan.No" = field(code)));
        }

        field(6; "Rate"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(7; "EMI's Months"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(8; "EMI amount"; Decimal)
        {
            Editable = false;
            trigger OnValidate()
            var
                cal_emi: Codeunit CalculateEMI;
            begin
                "EMI amount" := cal_emi.CalculateEMI("loan amount", Rate, "EMI's Months");
            end;
        }
    }

    keys
    {
        key(key1; "document number")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
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