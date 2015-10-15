
# $ ls -l ./*
A collection of all my browser related files. This mainly consists of browser
styling and userstyles.

### ./firefox.css
It has been designed to be easily customizable, at the top of the file you will
find the following section defining a series of `root variables`. These are
defined by a prefixing the desired variable name with `--` and later called
by wrapping them in `var(--name)`. This allows anyone to edit the CSS without
having to dig in deep.

```
:root
{   /* Define the root variables, these are used to easily modify the CSS. */
    /* Browser */
    --scrollbar: -14px !important;     /* Defining 0px will show the scrollbar
                                          -14px usually works to hide it, You may have
                                          to manually adjust it to your liking. */
    /* Fonts */
    --font-family:  !important;        /* Default is 'sans-serif' */
    --font-weight:  !important;        /* Default is 'normal' */
    --font-size:9pt !important;        /* Default is '14px' */

    /* Tabs */
    --tab-size-height:0px !important;  /* This will be added to a minimal size.
                                          You cannot make the current tabs any smaller. */
    --tab-size-max: 100% !important;   /* The maximum width a new tab should have.
                                          Generally leaving this at 100% is highly recommended.
                                          It will fill the remaining space this way. */
    --tab-size-min: 10px !important;   /* The minimal width a new tab should have. */
    --tab-offset: -15px !important;    /* The offset required to keep the tabs a full-width
                                          This is different for everyone, modify to liking. */
    --tab-align: center !important;    /* The alignment of the text in the tabs. */
    --tab-favicon:hidden !important;   /* Show or hide the favicons on the tabs */
    --tab-fg-normal:#D6CCDC !important;
    --tab-bg-normal:#100000 !important;
    --tab-fg-active:#BBEECC !important;
    --tab-bg-active:#170F0D !important;
    --tab-fg-hover: #FFFFFF !important;
    --tab-bg-hover: #100000 !important;

    /* URL */
    --url-fg: #D6CCDC !important;
    --url-bg: #170F0D !important;
    --url-align:left !important;        /* The alignment of the text in the url. */
    --url-size-height: 36px!important;  /* Be sure to change this as this will automatically handle
                                           the height issues you might have concerning the content. */

    /* TODO:
       * Dropdown.
       * Statuschange. */
}
```

*A future note about this css: It relies on the XUL structure firefox offers.
They plan to remove the structure is firefox 43. Till that I will try to
expand and better the current css. It has been tested to work on the
latest release (41).*

### ./index.html
###### CDN/Local
I've seen it recieve quite some attention on `/r/unixporn` and decided to add
a little bit of context as to how you can modify it easily.

First of all I should point out that it rellies on *fontawesome* which is
obtained through their cdn. I've seen some people struggling with loading
the CDN because their browser blocks them by default. You can bypass this
by retrieving a local copy of *fontawesome*.

> "But how do I swap them out?"

That's actually really easy to do. You will need a local copy of *fontawesome*
which you can find on their official site http://fontawesome.io
(it should show right away). Once obtained save it in the same directory
where you placed the `index.html` file and look for this line:

```
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
```

The version could differ, but anything about `4.4.*` should be alright to use.
Once found you want to edit the `href=` location to the location of the local file.
It should look something like this:
```
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
```
That's it.

###### Customisation
You will find a `<style>` section at the top of the `<body>`.
It tells the page how to behave and how to display. You probably want to be
modifying the colors mostly. At the bottom of this section you will find
unique class names which put a link to the actual element.

```
<style>
    html, body
    { margin:0; padding:0; }

    html, body
    { background:#170F0D; }

    .row
    { text-align: center; margin-top: 250px;}
    .row .column
    { display: inline; letter-spacing:1em; }
    .row .column a
    { font-size: 512%; color:rgba(0,0,0,0) }
    .row .column a:not(:hover)
    { opacity:.5; transition: opacity .5s; }

    .vk       i{color:#AD6A72;}
    .twitter  i{color:#A2B07F;}
    .github   i{color:#829BA8;}
    .stack    i{color:#D1C894;}
    .heart    i{color:#AD748E;}
    .leaf     i{color:#7D9B90;}
</style>
```

For example:

```
<style>
    .stack    i{color:#D1C894;}
<style>

<div class="column">
    <!-- Here we apply the unique classname which is used in the css -->
    <a href="http://stackoverflow.com" class="stack">
        <i class="fa fa-stack-overflow"></i>
    </a>
</div>
```
