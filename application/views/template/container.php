<!doctype html>
<html lang="en">
<head>
    <?php

    $this->view('template/head');
    ?>
</head>
<body>

<div class="wrapper">
    <?php
    $this->view('template/sidebar');
    ?>

    <div class="main-panel">
        <?php
        $this->view('template/navbar');
        ?>


        <div class="content">
            <div class="container-fluid">
                <?php
                if (isset($alerts) and is_array($alerts)) {
                    foreach ($alerts as $alert) {
                        ?>
                        <div class="alert alert-danger">
                            <button type="button" aria-hidden="true" class="close">×</button>
                            <span><?php echo $alert; ?></span>
                        </div>
                        <?php
                    }
                }
                if (isset($content))
                    echo $content;
                ?>
            </div>
        </div>


        <?php
        $this->view('template/footer');
        ?>

    </div>
</div>
</body>
<?php
$this->view('template/end-includes');
?>
</html>
