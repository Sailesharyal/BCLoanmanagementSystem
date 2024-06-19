
codeunit 50521 "CalculateEMI"
{
    procedure CalculateEMI(Principal: Decimal; AnnualRate: Decimal; Months: Integer): Decimal
    var
        MonthlyRate: Decimal;
        EMI: Decimal;
    begin
        // Convert annual rate to monthly rate
        MonthlyRate := AnnualRate / 12 / 100;

        // Calculate EMI using the formula
        EMI := Principal * MonthlyRate * Power(1 + MonthlyRate, Months) / (Power(1 + MonthlyRate, Months) - 1);

        exit(EMI);
    end;

}
