Hi David,

I've switched the production and staging environments as instructed. If anything behaves unexpectedly I can switch them back immediately.

There have also been changes to the Chain of Custody form which will need thorough testing. Previously the analysis page refreshed every time a different selection was made; I have refactored the client-side code so selections are now handled without a full page reload. This should make the workflow smoother, but please run through your usual test cases and let me know if you spot any issues.

If you'd like me to revert the production/staging switch or run additional checks, I'm happy to do so.

Thanks, Mark P
