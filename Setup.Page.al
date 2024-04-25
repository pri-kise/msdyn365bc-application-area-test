page 50200 "PTE Setup"
{
    ApplicationArea = All;
    PageType = Card;
    SourceTable = "PTE Setup";
    Caption = 'PTE Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;


    layout
    {
        area(content)
        {
            group(General)
            {
                field("Feature A"; Rec."Feature A")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Feature A.';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

}
