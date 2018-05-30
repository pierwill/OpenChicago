Code
====

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
