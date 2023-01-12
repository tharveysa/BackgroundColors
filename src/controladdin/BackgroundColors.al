controladdin BackgroundColors
{
    StartupScript = 'src/controladdin/js/BackgroundColors/startup.js';
    Scripts = 'src/controladdin/js/BackgroundColors/script.js';

    event AddInReady();
    procedure setColorsOnPage(fieldName: Text; color: Text; variable: Text);
}