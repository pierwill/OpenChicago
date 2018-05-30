Code
====

Code Blocks
-----------

#. Code should always be set off vertically from the text.

     .. code:: python

	       text = "unlike like this"
	       words = text.split()
	       new_text = str(words[1]) + " " + str(words[2])
	       print(new_text)

   .. Code that is part of a save application file on disk should always be set off vertically from the text.

Commands
--------

#. Ensure that example commands in codeblocks are easy to copy and paste.
   Do not prepend the ``$`` shell prompt indicator to example commands.

   .. code::

      echo hello

#. In the context of a terminal session with both typed commands and printed
   output text, use ``$`` before the typed commands:

   .. code::

      $ echo hello
      hello
      $ echo sunshine
      sunshine

#. Generally, anything that one might enter at a terminal prompt should be set inline in monotype.

     Additional development packages need to be installed with ``apt``.

     Make sure to ``cd`` in the repo first.
   
     There is going to be a lot of ``grep`` ing going on.

   (Note the hair space used in the last example to work around RST requiring spaces around inline literals.)

      
Paths
-----

#. Filepaths should be treated as code and set in monotype.

     Your program is now saved at ``/usr/home/hello.go``.

Documentation
-------------

#. In documentation plain-text, one of two policies should be observed.
   Either the text should be wrapped to 80 characters width, or each sentence should be on its own newline.
   The former improves readability in plain-text, the latter makes for more useful diffs.

   .. code-block:: none

      In documentation plain-text, one of two policies should be observed. Either the
      text should be wrapped to 80 characters width, or each sentence should be on its
      own newline. The former improves readability in plain-text, the latter makes for
      more useful diffs.

   .. code-block:: none

      In documentation plain-text, one of two policies should be observed.
      Either the text should be wrapped to 80 characters width, or each sentence should be on its own newline.
      The former improves readability in plain-text, the latter makes for more useful diffs.
