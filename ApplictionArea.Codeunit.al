codeunit 50200 "PTE Appliction Area"
{


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Application Area Mgmt. Facade", OnGetBasicExperienceAppAreas, '', false, false)]
    local procedure OnGetBasicExperienceAppAreas(var TempApplicationAreaSetup: Record "Application Area Setup")
    begin
        TempApplicationAreaSetup."PTE-XXX Feature A" := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Application Area Mgmt. Facade", OnGetEssentialExperienceAppAreas, '', false, false)]
    local procedure OnGetEssentialExperienceAppAreas(var TempApplicationAreaSetup: Record "Application Area Setup")
    begin
        TempApplicationAreaSetup."PTE-XXX Feature A" := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Application Area Mgmt. Facade", OnGetPremiumExperienceAppAreas, '', false, false)]
    local procedure OnGetPremiumExperienceAppAreas(var TempApplicationAreaSetup: Record "Application Area Setup")
    begin
        TempApplicationAreaSetup."PTE-XXX Feature A" := true;
    end;
}