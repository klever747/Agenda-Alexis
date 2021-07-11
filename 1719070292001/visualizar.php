<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | PDF viewer</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">
    <?php include "menu.php"; ?>
        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2><?= $_GET["name"];?></h2>    
                    <input type="hidden" id="txtName" value="<?= $_GET['name'];?>">             
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeIn">
                    <div class="text-center pdf-toolbar">

                            <div class="btn-group">
                                <button id="prev" class="btn btn-white"><i class="fa fa-long-arrow-left"></i> <span class="d-none d-sm-inline">Previous</span></button>
                                <button id="next" class="btn btn-white"><i class="fa fa-long-arrow-right"></i> <span class="d-none d-sm-inline">Next</span></button>
                                <button id="zoomin" class="btn btn-white"><i class="fa fa-search-minus"></i> <span class="d-none d-sm-inline">Zoom In</span></button>
                                <button id="zoomout" class="btn btn-white"><i class="fa fa-search-plus"></i> <span class="d-none d-sm-inline">Zoom Out</span> </button>
                                <button id="zoomfit" class="btn btn-white"> 100%</button>
                                <span class="btn btn-white hidden-xs">Page: </span>

                            <div class="input-group">
                                <input type="text" class="form-control" id="page_num">

                                <div class="input-group-append">
                                    <button type="button" class="btn btn-white" id="page_count">/ 22</button>
                                </div>
                            </div>

                                </div>
                        </div>







            <div class="text-center m-t-md">
                <canvas id="the-canvas" class="pdfcanvas border-left-right border-top-bottom b-r-md"></canvas>
            </div>



        </div>

            <div class="footer">
                <div class="float-right">
                    10GB of <strong>250GB</strong> Free.
                </div>
                <div>
                    <strong>Copyright</strong> Example Company &copy; 2014-2018
                </div>
            </div>
        </div>
        </div>


        <!-- Mainly scripts -->
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
        <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
        <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <!-- Custom and plugin javascript -->
        <script src="js/inspinia.js"></script>
        <script src="js/plugins/pace/pace.min.js"></script>

        <script src="js/plugins/pdfjs/pdf.js"></script>



    <script id="script">
        //
        // If absolute URL from the remote server is provided, configure the CORS
        // header on that server.
        //
        var name=$("#txtName").val()
        var url = '../repositorio/recursos/'+name;


        var pdfDoc = null,
                pageNum = 1,
                pageRendering = false,
                pageNumPending = null,
                scale = 1.5,
                zoomRange = 0.25,
                canvas = document.getElementById('the-canvas'),
                ctx = canvas.getContext('2d');

        /**
         * Get page info from document, resize canvas accordingly, and render page.
         * @param num Page number.
         */
        function renderPage(num, scale) {
            pageRendering = true;
            // Using promise to fetch the page
            pdfDoc.getPage(num).then(function(page) {
                var viewport = page.getViewport(scale);
                canvas.height = viewport.height;
                canvas.width = viewport.width;

                // Render PDF page into canvas context
                var renderContext = {
                    canvasContext: ctx,
                    viewport: viewport
                };
                var renderTask = page.render(renderContext);

                // Wait for rendering to finish
                renderTask.promise.then(function () {
                    pageRendering = false;
                    if (pageNumPending !== null) {
                        // New page rendering is pending
                        renderPage(pageNumPending);
                        pageNumPending = null;
                    }
                });
            });

            // Update page counters
            document.getElementById('page_num').value = num;
        }

        /**
         * If another page rendering in progress, waits until the rendering is
         * finised. Otherwise, executes rendering immediately.
         */
        function queueRenderPage(num) {
            if (pageRendering) {
                pageNumPending = num;
            } else {
                renderPage(num,scale);
            }
        }

        /**
         * Displays previous page.
         */
        function onPrevPage() {
            if (pageNum <= 1) {
                return;
            }
            pageNum--;
            var scale = pdfDoc.scale;
            queueRenderPage(pageNum, scale);
        }
        document.getElementById('prev').addEventListener('click', onPrevPage);

        /**
         * Displays next page.
         */
        function onNextPage() {
            if (pageNum >= pdfDoc.numPages) {
                return;
            }
            pageNum++;
            var scale = pdfDoc.scale;
            queueRenderPage(pageNum, scale);
        }
        document.getElementById('next').addEventListener('click', onNextPage);

        /**
         * Zoom in page.
         */
        function onZoomIn() {
            if (scale >= pdfDoc.scale) {
                return;
            }
            scale += zoomRange;
            var num = pageNum;
            renderPage(num, scale)
        }
        document.getElementById('zoomin').addEventListener('click', onZoomIn);

        /**
         * Zoom out page.
         */
        function onZoomOut() {
            if (scale >= pdfDoc.scale) {
                return;
            }
            scale -= zoomRange;
            var num = pageNum;
            queueRenderPage(num, scale);
        }
        document.getElementById('zoomout').addEventListener('click', onZoomOut);

        /**
         * Zoom fit page.
         */
        function onZoomFit() {
            if (scale >= pdfDoc.scale) {
                return;
            }
            scale = 1;
            var num = pageNum;
            queueRenderPage(num, scale);
        }
        document.getElementById('zoomfit').addEventListener('click', onZoomFit);


        /**
         * Asynchronously downloads PDF.
         */
        PDFJS.getDocument(url).then(function (pdfDoc_) {
            pdfDoc = pdfDoc_;
            var documentPagesNumber = pdfDoc.numPages;
            document.getElementById('page_count').textContent = '/ ' + documentPagesNumber;

            $('#page_num').on('change', function() {
                var pageNumber = Number($(this).val());

                if(pageNumber > 0 && pageNumber <= documentPagesNumber) {
                    queueRenderPage(pageNumber, scale);
                }

            });

            // Initial/first page rendering
            renderPage(pageNum, scale);
        });
    </script>


</body>

</html>
