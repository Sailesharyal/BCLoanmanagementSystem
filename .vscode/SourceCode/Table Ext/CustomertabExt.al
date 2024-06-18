tableextension 50510 "CustomertableExt" extends "Customer"
{
    fields
    {
        field(50502; "Is Borrower"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}