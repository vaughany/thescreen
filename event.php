<?php

/**
 * Edit page for events.
 */

session_name( 'sdc-thescreen' );
session_start();

// Secure this page a little bit.
if ( !isset( $_SESSION['loggedin'] ) ) {
  header( 'location: login.php' );
  exit(0);
}
$_SESSION['last_activity'] = time();

require_once( 'functions.inc.php' );
require_once( 'functions-admin.inc.php' );

// Debugging.
if ( isset( $_POST ) && !empty( $_POST ) ) {
  echo '<p>POST:</p><pre>'; var_dump( $_POST ); echo '</pre>';
}
if ( isset( $_GET ) && !empty( $_GET ) ) {
  echo '<p>GET:</p><pre>'; var_dump( $_GET ); echo '</pre>';
}

// Adding a new event.
if ( isset( $_POST['action'] ) && $_POST['action'] == 'event_add' ) {

  if ( isset( $_POST['event_date'] ) && !empty( $_POST['event_date'] ) && isset( $_POST['event_description'] ) && !empty( $_POST['event_description'] ) ) {

    if ( isset( $_POST['event_edit'] ) && !empty( $_POST['event_edit'] ) && is_numeric( $_POST['event_edit'] ) ) {

      // Make the following function UPDATE rather than INSERT.
      if ( edit_event( $_POST['event_date'], $_POST['event_description'], $_POST['event_edit'] ) ) {

        $_SESSION['alerts'][] = array( 'success' => 'The event &ldquo;' . $_POST['event_description'] . '&rdquo; was updated successfully.' );
        header( 'location: ' . $CFG['adminpage'] );
        exit(0);

      } else {
        $_SESSION['alerts'][] = array( 'warning' => 'The event was not updated for some reason.' );
      }

    // If we are inserting a new event.
    } else {

      if ( add_event( $_POST['event_date'], $_POST['event_description'] ) ) {

        $_SESSION['alerts'][] = array( 'success' => 'The event &ldquo;' . $_POST['event_description'] . '&rdquo; was created successfully.' );
        header( 'location: ' . $CFG['adminpage'] );
        exit(0);

      } else {
        $_SESSION['alerts'][] = array( 'warning' => 'The event was not created for some reason.' );
      }

    }

  } else {
    $_SESSION['alerts'][] = array( 'danger' => 'The form was not complete.' );
  }

} else {
  // Do nothing, as the user's coming here for the first time?
  //$_SESSION['alerts'][] = array( 'warning' => 'The form was not complete.' );
}

adminlog('event');

// If we've received $_GET parameters, populate the form with them.
if ( isset( $_GET['action'] ) && $_GET['action'] == 'event_edit' && isset( $_GET['event_id'] ) && !empty( $_GET['event_id'] ) && is_numeric( $_GET['event_id'] ) ) {

  $sql = "SELECT id, start, text FROM events WHERE id = " . $_GET['event_id'] . " LIMIT 1;";
  $res = $DB->query( $sql );

  if ( $res->num_rows == 0 ) {
    $_SESSION['alerts'][] = array( 'danger' => 'Could not get the event with id ' . $_GET['event_id'] . '.' );
  } else {
    $row = $res->fetch_assoc();
  }

}

?><!DOCTYPE html>
<html lang="en">
<head>
<?php

echo admin_header( 'Event add/edit page.' );

?>
</head>
<body>

<?php

echo navbar_light();

?>

  <div class="container">

    <!-- Row one. -->
    <div class="row">
      <div class="col-md-12">
<?php

if (
  ( isset( $_GET['event_id'] ) && !empty( $_GET['event_id'] ) && is_numeric( $_GET['event_id'] ) )
  ||
  ( isset( $_POST['event_edit'] ) && !empty( $_POST['event_edit'] ) && is_numeric( $_POST['event_edit'] ) )
) {
  echo '        <h1>Edit this event</h1>';
  echo '        <p>Use the below form to edit the existing event.</p>';
} else {
  echo '        <h1>Add a new event</h1>';
  echo '        <p>Use the below form to add a new event.</p>';
}

?>

      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <hr>
      </div>
    </div>

    <div class="row">
      <div class="col-md-6 col-md-offset-3">

<?php

if ( isset( $_SESSION['alerts'] ) ) {
  foreach ( $_SESSION['alerts'] as $alert ) {
    foreach ( $alert as $alert_type => $alert_text ) {
      echo '    <div class="alert alert-' . $alert_type . ' alert-dismissible" role="alert">' . "\n";
      //echo '      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' . "\n";
      echo '      ' . $alert_text . "\n";
      echo '    </div>' . "\n";
    }
  }
  unset( $_SESSION['alerts'] );
}

?>

        <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="post">
          <input type="hidden" name="action" value="event_add">

<?php

if ( isset( $row['id'] ) ) {
  echo '          <input type="hidden" name="event_edit" value="' . $row['id'] . '">' . "\n";
} else if ( isset( $_POST['event_edit'] ) ) {
  echo '          <input type="hidden" name="event_edit" value="' . $_POST['event_edit'] . '">' . "\n";
}

$event_date_error = '';
if ( isset( $_POST['action'] ) && $_POST['action'] == 'event_add' && ( !isset( $_POST['event_date'] ) || empty( $_POST['event_date'] ) ) ) {
  $event_date_error = ' has-error';
}

$event_date_value = '';
if ( isset( $row['start'] ) ) {
  $event_date_value = 'value="' . $row['start'] . '"';
} else if ( isset( $_POST['event_date'] ) && !empty( $_POST['event_date'] ) ) {
  $event_date_value = 'value="' . $_POST['event_date'] . '"';
}

?>
          <div class="form-group<?php echo $event_date_error; ?>">
            <label for="event_date">Event date</label>
            <input type="date" class="form-control" id="event_date" name="event_date" placeholder="Enter date" <?php echo $event_date_value; ?> aria-describedby="event_date_help">
            <span id="event_date_help" class="help-block">Use the 'date picker' tools to the right (when you hover over the text box).</span>
          </div>

<?php

$event_description_error = '';
if ( isset( $_POST['action'] ) && $_POST['action'] == 'event_add' && ( !isset( $_POST['event_description'] ) || empty( $_POST['event_description'] ) ) ) {
  $event_description_error = ' has-error';
}

$event_description_value = '';
if ( isset( $row['text'] ) ) {
  $event_description_value = 'value="' . $row['text'] . '"';
} elseif ( isset( $_POST['event_description'] ) && !empty( $_POST['event_description'] ) ) {
  $event_description_value = 'value="' . $_POST['event_description'] . '"';
}

?>
          <div class="form-group<?php echo $event_description_error; ?>">
            <label for="event_description">Event description</label>
            <input type="text" class="form-control" id="event_description" name="event_description" placeholder="Enter event details" <?php echo $event_description_value; ?>aria-describedby="event_description_help">
            <span id="event_description_help" class="help-block">Be concise! We don't have much space to work with.</span>
          </div>

          <a class="btn btn-default" href="<?php echo $CFG['adminpage']; ?>" role="button">Cancel</a>
          <button type="submit" class="btn btn-info">Submit</button>

        </form>

      </div>
    </div>

  </div> <!-- /container -->


  <footer class="bs-docs-footer" role="contentinfo">
    <div class="container">
<?php

echo footer_content();

?>
    </div>
  </footer>

<?php

echo admin_footer();

?>

</body>
</html>
