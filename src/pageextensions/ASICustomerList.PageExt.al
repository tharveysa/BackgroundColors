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
        // Set any row with location code that = GREEN to red background
        CurrPage.ChangeColors.setColorsOnPage(Rec.FieldCaption("Location Code"), 'red', 'GREEN');
    end;
}