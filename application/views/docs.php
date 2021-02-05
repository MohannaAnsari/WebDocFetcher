<div class="row">
    <div class="col-md-12">
        <div class="alert alert-<?php
        switch ($site->status){
            case SITE_NOT_CRAWLED:
                echo 'danger';
                break;
            case SITE_IS_BEING_CRAWLED:
                echo 'warning';
                break;
            case SITE_CRAWLED:
                echo "success";
        }
        ?>">
            <button type="button" aria-hidden="true" class="close">×</button>
            <span>
                <?php
                switch ($site->status){
                    case SITE_NOT_CRAWLED:
                        echo 'خزش برای این سایت انجام نشده است';
                        break;
                    case SITE_IS_BEING_CRAWLED:
                        echo 'خزش در حال انجام است';
                        break;
                    case SITE_CRAWLED:
                        echo "خزش برای این سایت تکمیل شده است";
                }
                ?>
            </span>
        </div>

        <div class="card">
            <div class="header">
                <h4 class="title">نتایح خزش</h4>
                <p class="category"><?php echo $site->domain; ?></p>
            </div>
            <div class="content table-responsive table-full-width">
                <table class="table table-hover table-striped">
                    <thead>
                    <th>سند</th>
                    <th>صفحه</th>
                    <th>عنوان</th>
                    <th>موضوع</th>
                    </thead>
                    <tbody>
                    <?php
                    if (!isset($docs)) exit();
                    foreach ($docs as $doc) {
                        echo "<tr>";
                        $link_short = urldecode(pathinfo(parse_url($doc->link)['path'])['basename']);
                        echo "<td><a href='$doc->link'>$link_short</a></td>";
                        if (isset(parse_url($doc->page)['path'])){
                            if (isset(pathinfo(parse_url($doc->page)['path'])['basename']))
                                $page_short = urldecode(pathinfo(parse_url($doc->page)['path'])['basename']);
                            else
                                $page_short = urldecode(pathinfo(parse_url($doc->page)['path'])['basedir']);
                        }
                        else{
                            $page_short = $doc->page;
                        }
                        echo "<td><a href='$doc->page'>$page_short</a></td>";
                        echo "<td>$doc->title</td>";
                        echo "<td>$doc->topic</td>";
                        echo "</tr>";
                    }
                    ?>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</div>