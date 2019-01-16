<?php
	class helloworld
	{
		var $message;

		function helloworld ($msg)
		{
			$this->set_message ($msg);
		}

		function set_message ($msg)
		{
			$this->message = $msg;
		}

		function printline ()
		{
			echo $this->message . "\n";
		}
	};

	$hw = new helloworld ("hello, world");
	$hw->printline ();
?>
