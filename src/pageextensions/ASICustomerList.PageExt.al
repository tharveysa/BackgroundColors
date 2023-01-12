pageextension 50170 "ASI Customer List" extends "Customer List"
{
    layout
    {
        addlast(content)
        {
            usercontrol(ChangeColors; BackgroundColors)
            {
                ApplicationArea = all;

                trigger AddInReady()
                begin
                    // Do something...
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        CurrPage.ChangeColors.setColorsOnPage(Rec.FieldCaption("No."), 'red', '01454545');
    end;
}