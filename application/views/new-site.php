<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="header">
                <h4 class="title">افزودن سایت</h4>
            </div>
            <div class="content">
                <form method="post">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>نام</label>
                                <input type="text" class="form-control" name="name" placeholder="نام سایت" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>دامین (به فرم site.com بدون www و http(S))</label>
                                <input type="text" class="form-control" name="domain" placeholder="site.com" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>عمق خزش</label>
                                <input type="text" class="form-control" name="depth" placeholder="عمق خزش" value="2">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>حداکثر تعداد مستندات</label>
                                <input type="text" class="form-control" name="max_docs" placeholder="" value="100">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>پروتکل</label>
                                <select name="is_ssl" class="form-control">
                                    <option value="0">http</option>
                                    <option value="1">https (ssl)</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>فرمت های مجاز</label>
                                <?php
                                $avail_formats = unserialize(AVAIL_DOC_FORMATS);
                                foreach ($avail_formats as $format){
                                    echo "<div class='form-group'><label>$format</label>";
                                    echo "<input type='checkbox' name='format[]' value='$format' checked/>";
                                    echo "</div>";
                                }
                                ?>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-info btn-fill pull-left">افزودن سایت</button>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>