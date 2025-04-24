## Tailwind Plus
As an original backer of Tailwind Plus (originally Tailwind UI), I've always had my fingers crossed that we'd see
better integration of Tailwind Plus components with Rails. As the years have passed, it (understandably) became
clear that Tailwind's focus would be React. When [Catalyst](https://catalyst.tailwindui.com) was released, I was fully convinced further integration
was not going to happen. To make matters more difficult, there was no clean way to have the community build an alternative together without being in breach of contract.

## HeadlessUI
HeadlessUI is foundation of Tailwind Plus components. Even Catalyst is just an extension of HeadlessUI. I'm not sure why it took me so long to connect the dots, but a Rails-first version of HeadlessUI *can* be built in public. Build that, and the benefits of Tailwind Plus (and Catalyst) can be reaped by the Rails community.

## Implementation
This library attempts to **fully** implement HeadlessUI. No shortcuts, no missing features. This means aria-* attributes, focus-trapping, scroll-locking, data-* manipulation. All decisions made came from matching HeadlessUI. ViewComponent names, parameter names, everything. There were edge cases that required me to change names due to conflicts in how ViewComponent works, but by and large it's as close to the HeadlessUI as could be expected. This means Tailwind Plus members can reference the React documentation and use it in a ViewComponent + Stimulus project (with mild adjustments for library differences). [Read more](/implementation)

## ViewComponent
There are several component libraries out there (hello [Phlex](https://www.phlex.fun)), but the most popular *right now* is ViewComponent. As with the Tailwind team, we have to target the majority first. However, being that stimulus is strictly HTML sugar, it would be relatively easy to include support other component frameworks. Who knows, maybe it could even work without a component library at all...

