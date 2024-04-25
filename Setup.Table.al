table 50200 "PTE Setup"
{

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            AllowInCustomizations = Never;
            Caption = 'Primary Key', Locked = true;

        }
        field(2; "Feature A"; Boolean)
        {
            Caption = 'Feature A';
            DataClassification = SystemMetadata;
            trigger OnValidate()
            var
                ApplicationAreaSetup: Record "Application Area Setup";
                ApplicationAreaMgmtFacade: Codeunit "Application Area Mgmt. Facade";
            begin
                if (ApplicationAreaMgmtFacade.GetApplicationAreaSetupRecFromCompany(ApplicationAreaSetup, CompanyName())) then begin
                    if (ApplicationAreaSetup."PTE-XXX Feature A" <> Rec."Feature A") then begin
                        ApplicationAreaSetup.Validate("PTE-XXX Feature A", Rec."Feature A");
                        ApplicationAreaSetup.Modify(true);
                    end;
                end;
            end;
        }


    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        RecordHasBeenRead: Boolean;

    procedure GetRecordOnce()
    begin
        if RecordHasBeenRead then
            exit;
        Get();
        RecordHasBeenRead := true;
    end;

    procedure InsertIfNotExists()
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert(true);
        end;
    end;


}