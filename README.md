# Cold Turkey CLI Commands

-start "Block Name"
Starts the specified block with no lock. Website & App blocks will be
blocked at all times. Device blocks will be enabled if scheduled. To start a
device block immediately, use the -lock parameter as well.

-start "Block Name" -as-is
Starts the specified block with all previously configured settings, including
block type and lock.

-start "Block Name" -lock X
Starts and locks the specified block for X number of minutes
(X must be >= minutes left). If the name of a device block is given, X is
the duration of the block in minutes.

-start "Block Name" -password X
Starts and locks the specified block with X as the password. Spaces and
quotes can't be used when setting a password via the command line. Only
scheduled device blocks can be locked using a password.

-start "Block Name" -random-text X
Starts and locks the specified block with X number of random characters
(words). Only scheduled device blocks can be locked using random text.

-stop "Block Name"
Stops the specified block if unlocked. Device blocks will be disabled if
scheduled.

-stop "Block Name" -password X
Stops the specified block if locked with X as the block password.

-toggle "Block Name"
Starts or stops the specified block as if -start and -stop were used.

-status "Block Name"
Displays if the specified block is enabled or disabled.

-list-blocks
Displays a list of all blocks.

-add-block "Block Name"
Creates a new website & app block with the specified name.

-add "Block Name" -web "URL"
Adds a URL to the website tab of the specified (non-device) block. The block
must already exist.

-add "Block Name" -exception "URL"
Adds a URL to the exception tab of the specified (non-device) block if
unlocked. The block must already exist.

-add-device-block "Block Name"
Creates a new device block (lock screen) with the specified name.

-add-device-block "Block Name" -sign-out
Creates a new device block (sign out) with the specified name.

-add-device-block "Block Name" -shut-down
Creates a new device block (shut down) with the specified name.

-start-delay-break "Block Name"
Starts the countdown for delay break (if set) for the specified block.

-stop-delay-break "Block Name"
Stops a delay break (if started) for the specified block.

-stop-random-text-break "Block Name"
Stops a random text break (if started) for the specified block.
