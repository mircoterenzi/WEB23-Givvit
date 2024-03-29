<?php if(!empty($templateParams["user-list"])): ?>
    <?php foreach($templateParams["user-list"] as $user): ?>
        <article class="card mb-4 p-4 shadow-sm rounded-5">
            <div class="row align-items-center">
                <div class="col-3">
                    <div class="ratio ratio-1x1 overflow-hidden">
                        <img  alt="" src="img/<?php 
                        if(!empty($user["profile_img"])) {
                        echo($user["profile_img"]); 
                        } else {
                        echo("default-propic.jpg");
                        } ?>" class="propic rounded-circle" />
                    </div>
                </div>
                <div class="col-auto">
                    <a href="profile.php?id=<?php echo $user["user_id"]; ?>" class="fw-bold mb-0">
                        @<?php echo $user["username"]; ?>
                    </a>
                    <p class="mb-0"><?php echo $user["first_name"]; ?> <?php echo $user["last_name"]; ?></p>
                </div>
            </div>
        </article>
    <?php endforeach; ?>
<?php else: ?>
    <div class="text-center">
        <p>There are no users in this list :(</p>
        <p>You can find someone new on the <a href="explore.php">explore page</a>!</p>
    </div>
<?php endif; ?>