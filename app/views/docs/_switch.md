## Basic Usage

The `Headless::SwitchComponent` is a component that provides a switch interface with accessibility and keyboard navigation handled for you. It accepts the following parameters:

| Parameter | Type | Description |
| --- | --- | --- |
| `class` | String | CSS classes to apply to the component |
| `data` | Hash | Data attributes to apply to the component |
| `id` | String | HTML id attribute |


## Styling

Headless Components track states as data attributes and are unstyled by default. You can use the following data attributes to style the component:

- `data-[state]`: The current state of the component
- `data-[disabled]`: Whether the component is disabled
- `data-[hover]`: Whether the component is being hovered
- `data-[focus]`: Whether the component has focus

You can also use the `class` parameter to apply your own styles to the component. 