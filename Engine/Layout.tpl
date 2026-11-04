<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Theater "UMKLAIDET"</title>

        <script><?php echo file_get_contents(__DIR__ . '/../vendor/technomage-liloi/rune-framework/Frontside/Library/Jquery.min.js'); ?></script>
        <script><?php echo file_get_contents(__DIR__ . '/../vendor/technomage-liloi/rune-framework/Frontside/Library/Underscore.min.js'); ?></script>
        <script><?php echo file_get_contents(__DIR__ . '/../vendor/technomage-liloi/rune-framework/Frontside/Library/Backbone.min.js'); ?></script>
        <script><?php echo file_get_contents(__DIR__ . '/../vendor/technomage-liloi/rune-api/Client/API.js'); ?></script>

        <style><?php echo file_get_contents(__DIR__ . '/../vendor/twbs/bootstrap/dist/css/bootstrap.min.css'); ?></style>
        <script><?php echo file_get_contents(__DIR__ . '/../vendor/twbs/bootstrap/dist/js/bootstrap.bundle.min.js'); ?></script>

        <script><?php echo file_get_contents(__DIR__ . '/../vendor/technomage-liloi/stylo/Source/Stylo.js'); ?></script>
        <style><?php echo file_get_contents(__DIR__ . '/Style.css'); ?></style>
        <style><?php echo file_get_contents(__DIR__ . '/API/Style.css'); ?></style>

        <script src="/Engine/API/Requests.js"></script>
        <script src="/Engine/API/Thesis/Requests.js"></script>
        <script src="/Engine/API/Admin/Requests.js"></script>

        <?php if($admin): ?>
            <script src="/Engine/API/Quests/Requests.js"></script>
            <script src="/Engine/API/Milestones/Requests.js"></script>
            <script src="/Engine/API/Degrees/Requests.js"></script>
            <script src="/Engine/API/Diary/Requests.js"></script>
        <?php endif; ?>
    </head>
    <body>
        <?php if($admin): ?>
            <div id="admin" style="background-color: silver; padding: 5px;border-radius: 3px;text-align: center;">
                <a href="javascript:void(0)" onclick="Requests.Diary.schedule();">Diary</a>
                <a href="javascript:void(0)" onclick="Requests.Degrees.schedule();">Degrees</a>
                <a href="javascript:void(0)" onclick="Requests.Milestones.schedule();">Milestones</a>
                <a href="javascript:void(0)" onclick="Requests.Quests.schedule();">Quests</a>
                <a href="javascript:void(0)" class="butn" onclick="Requests.Admin.Password.logout();">Logout</a>
            </div>
        <?php endif; ?>

        <div id="page" class="stylo">
            <script>
                Requests.Thesis.show();
            </script>
        </div>
    </body>
</html>