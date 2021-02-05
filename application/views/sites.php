<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="header">
                <h4 class="title">مدیریت سایت ها</h4>
                <p class="category"></p>
            </div>
            <div class="content table-responsive table-full-width">
                <table class="table table-hover table-striped">
                    <thead>
                    <th>نام</th>
                    <th>دامین</th>
                    <th>عمق</th>
                    <th>حداکثر مستندات</th>
                    <th>وضعیت</th>
                    <th>مدیریت</th>
                    </thead>
                    <tbody>
                    <?php
                    if (!isset($sites)) exit();
                    foreach ($sites as $site) {
                        echo "<tr>";
                        echo "<td>$site->name</td>";
                        echo "<td>$site->domain</td>";
                        echo "<td>$site->depth</td>";
                        echo "<td>$site->max_docs</td>";
                        echo "<td>";
                        switch ($site->status){
                            case SITE_NOT_CRAWLED:
                                echo "خزش نشده";
                                break;
                            case SITE_IS_BEING_CRAWLED:
                                echo "<a href='" . site_url('crawler/docs/'.$site->id) . "'>در حال خزش</a>";
                                break;
                            case SITE_CRAWLED:
                                echo "<a href='" . site_url('crawler/docs/'.$site->id) . "'>" . $this->Doc->site_doc_count($site->id) . " سند خزش شده" . "</a>";
                        }
                        echo "<td>";
                        echo "<a href='" . site_url('crawler/crawl/'.$site->id) . "'>" . "خزش" . "</a>";
                        echo "</td>";
                        echo "</tr>";
                    }
                    ?>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</div>