<header class="masthead" style="background-color: #800000; color: #000; padding: 100px 0;">
    <div class="container h-100">
        <div class="row h-100 align-items-center justify-content-center text-center">
            <div class="col-lg-10 align-self-end mb-4" style="background: #0000002e; padding: 20px; border-radius: 10px;">
                <h1 class="text-uppercase text-white font-weight-bold">About Us</h1>
                <hr class="divider my-4" style="border-color: #fff; width: 50%; margin: 25px auto;" />
            </div>
        </div>
    </div>
</header>

<section class="page-section" style="background-color: #000; color: #fff; padding: 50px 0;">
    <div class="container">
        <?php echo html_entity_decode($_SESSION['system']['about_content']) ?>        
    </div>
</section>
