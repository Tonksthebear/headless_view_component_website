## Basic Usage

This is purely a stimulus controller with no associated ViewComponent. This demo fakes two clicks as the original HeadlessUI demo uses a timeout to re-trigger a state switch. It may be worth building out a ViewComponent so that we can inline javascript similar to other components. 

### Headless::TransitionComponent


## Styling

Headless Components mimics HeadlessUI by keeping track of certain states as data attributes on the element.

Similar to HeadlessUI, the components are headless and completely unstyled out of the box, you can't see this information in your UI until you provide the styles you want for each state yourself.

### Using data attributes

Following the same pattern as HeadlessUI, it's recommended to use data attributes to style the component.

Each component exposes their own data-attributes. View the documentation of each to know what you can leverage for styling.

### Using parameters 