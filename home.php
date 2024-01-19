<style>
    /* Header styles */
    header.masthead {
        background-color: #333; /* Dark gray */
        color: #fff; /* White */
        padding: 100px 0;
    }

    header.masthead h3 {
        font-size: 3em;
        margin-bottom: 0;
    }

    header.masthead hr.divider {
        border-color: #fff; /* White */
        width: 50%;
        margin: 25px auto;
    }

    /* Container styles */
    section.page-section {
        background-color: #555; /* Gray */
        color: #fff; /* White */
        padding: 50px 0;
    }

    section.page-section h4 {
        font-size: 2em;
    }

    section.page-section hr.divider {
        border-color: #fff; /* White */
        width: 50%;
        margin: 10px auto;
    }

    /* Card styles */
    .event-list .card {
        background-color: #444; /* Dark gray */
        color: #fff; /* White */
        border-radius: 10px;
        margin-bottom: 20px;
    }

    .event-list .card-body {
        padding: 20px;
    }

    .event-list .btn-primary {
        background-color: #800000; /* Maroonish red */
        border-color: #800000; /* Maroonish red */
    }

    .event-list .btn-primary:hover {
        background-color: #600000; /* Darker shade of maroonish red */
        border-color: #600000; /* Darker shade of maroonish red */
    }
</style>

<header class="masthead">
    <div class="container-fluid h-100">
        <div class="row h-100 align-items-center justify-content-center text-center">
            <div class="col-lg-8 align-self-end mb-4 page-title">
                <h3 class="text-white">Welcome to <?php echo $_SESSION['system']['name']; ?></h3>
                <hr class="divider my-4" />
            </div>
        </div>
    </div>
</header>

<div class="container mt-3 pt-2">
    <h4 class="text-center text-white">Upcoming Events</h4>
    <hr class="divider">
    <?php
    $event = $conn->query("SELECT e.*,v.venue FROM events e inner join venue v on v.id=e.venue_id where date_format(e.schedule,'%Y-%m%-d') >= '".date('Y-m-d')."' and e.type = 1 order by unix_timestamp(e.schedule) asc");
    while($row = $event->fetch_assoc()):
        $trans = get_html_translation_table(HTML_ENTITIES,ENT_QUOTES);
        unset($trans["\""], $trans["<"], $trans[">"], $trans["<h2"]);
        $desc = strtr(html_entity_decode($row['description']),$trans);
        $desc=str_replace(array("<li>","</li>"), array("",","), $desc);
    ?>
    <div class="card event-list" data-id="<?php echo $row['id'] ?>">
        <div class='banner'>
            <?php if(!empty($row['banner'])): ?>
                <img src="admin/assets/uploads/<?php echo($row['banner']) ?>" alt="">
            <?php endif; ?>
        </div>
        <div class="card-body">
            <div class="row align-items-center justify-content-center text-center h-100">
                <div>
                    <h3><b class="filter-txt"><?php echo ucwords($row['event']) ?></b></h3>
                    <div><small><p><b><i class="fa fa-calendar"></i> <?php echo date("F d, Y h:i A",strtotime($row['schedule'])) ?></b></p></small></div>
                    <hr>
                    <larger class="truncate filter-txt"><?php echo strip_tags($desc) ?></larger>
                    <br>
                    <hr class="divider"  style="max-width: calc(80%)">
                    <button class="btn btn-primary float-right read_more" data-id="<?php echo $row['id'] ?>">Read More..</button>
                </div>
            </div>
        </div>
    </div>
    <br>
    <?php endwhile; ?>
</div>
