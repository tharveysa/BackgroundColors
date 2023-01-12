# BackgroundColors

First attempt to get background colors of a repeater to change colors based on values on each row.

Works until the page loads new records and then it has random behavior.

To resolve the issue above, add an event listener to re-run the code each time the scroll event triggers (probably could be a bit more optimized for performance).