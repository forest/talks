<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">

        <title>AngularUI Router</title>

        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

        <link rel="stylesheet" href="bower_components/reveal.js/css/reveal.min.css">

        <link rel="stylesheet" href="css/custom.css">
        <!-- <link rel="stylesheet" href="bower_components/reveal.js/css/theme/default.css" id="theme"> -->

        <link rel="stylesheet" href="bower_components/reveal.js/css/theme/night.css" id="theme">
        <link rel="stylesheet" href="bower_components/reveal.js/plugin/highlight/dark.css">

        <!-- For syntax highlighting -->
        <link rel="stylesheet" href="bower_components/reveal.js/lib/css/zenburn.css" id="highlight-theme">

        <!-- If the query includes 'print-pdf', use the PDF print sheet -->
        <script>
          document.write( '<link rel="stylesheet" href="bower_components/reveal.js/css/print/' + ( window.location.search.match( /print-pdf/gi ) ? 'pdf' : 'paper' ) + '.css" type="text/css" media="print">' );
        </script>

        <!--[if lt IE 9]>
        <script src="lib/js/html5shiv.js"></script>
        <![endif]-->
    </head>

    <body>

        <div id="loading"></div>

        <div class="reveal">

            <div class="slides">

                <% _.forEach(slides, function(slide) { %>
                    <% if (_.isString(slide)) { %>
                        <% if (slide.indexOf('.html') !== -1) { %>
                            <section data-html="slides/<%= slide %>"></section>
                        <% } else { if (slide.indexOf('.md') !== -1) { %>
                            <section data-markdown="slides/<%= slide %>"></section>
                        <% }} %>
                    <% } else { if (_.isArray(slide)) { %>
                        <section>
                            <% _.forEach(slide, function(verticalslide) { %>
                                <% if (verticalslide.indexOf('.html') !== -1) { %>
                                    <section data-html="slides/<%= verticalslide %>"></section>
                                <% } else { if (verticalslide.indexOf('.md') !== -1) { %>
                                    <section data-markdown="slides/<%= verticalslide %>"></section>
                                <% }} %>
                            <% }); %>
                        </section>
                    <% }} %>
                <% }); %>

            </div>

        </div>

        <script src="bower_components/jquery/jquery.js"></script>
        <script src="bower_components/reveal.js/lib/js/head.min.js"></script>
        <script src="bower_components/reveal.js/js/reveal.min.js"></script>
        <script src="bower_components/spin.js/spin.js"></script>
        <script src="bower_components/spin.js/jquery.spin.js"></script>
        <script>
            $('#loading').spin({
              color: "#C26230"
            });

            // Configure Reveal
            // Full list of configuration options available here:
            // https://github.com/hakimel/reveal.js#configuration
            Reveal.initialize({
                controls: true,
                progress: true,
                history: true,
                center: true,

                theme: Reveal.getQueryHash().theme, // available themes are in /css/theme
                transition: Reveal.getQueryHash().transition || 'default', // default/cube/page/concave/zoom/linear/fade/none

                // Optional libraries used to extend on reveal.js
                dependencies: [
                    { src: 'bower_components/reveal.js/lib/js/classList.js', condition: function() { return !document.body.classList; } },
                    { src: 'bower_components/reveal.js/plugin/markdown/marked.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                    { src: 'bower_components/reveal.js/plugin/markdown/markdown.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
                    { src: 'bower_components/reveal.js/plugin/highlight/highlight.js'}, //, async: true, callback: function() { hljs.initHighlightingOnLoad(); } },
                    { src: 'bower_components/reveal.js/plugin/zoom-js/zoom.js', async: true, condition: function() { return !!document.body.classList; } },
                    { src: 'bower_components/reveal.js/plugin/notes/notes.js', async: true, condition: function() { return !!document.body.classList; } },
                    // { src: 'plugin/search/search.js', async: true, condition: function() { return !!document.body.classList; } }
                    //{ src: 'bower_components/reveal.js/plugin/remotes/remotes.js', async: true, condition: function() { return !!document.body.classList; } }

                    { src: 'js/loadhtmlslides.js', condition: function() { return !!document.querySelector( '[data-html]' ); } }
                ]
            });

            Reveal.addEventListener( 'ready', function( event ) {
                hljs.initHighlighting(); 
                $('#loading').spin(false);
            });
        </script>

    </body>

</html>
