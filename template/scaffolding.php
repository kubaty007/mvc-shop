<!DOCTYPE html>
<html lang="pl">
    <?php include TEMPLATE_DIR.'head.php'; ?>

    <body>
        <?php include TEMPLATE_DIR.'top.php'; ?>

        <main>
            {view}
        </main>

        <?php include TEMPLATE_DIR.'footer.php';

        global $scripts;
        foreach($scripts as $script){ ?>
        <script type="text/javascript" src="./jsScripts/<?=$script?>.js"></script>
        <?php } ?>
    </body>
</html>