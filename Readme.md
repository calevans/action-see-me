# Action See Me

(c) [E.I.C.C., Inc. ](https://eicc.com)

All Rights Reserved

Released under the MIT License.

This is a very simple github action that you can fork and play with.

At it's heart it is jsut a simple bash script that will show you all the environment variables set and all the mount points. If you fork it, you can easily extend this to show you anything you need to know about what is going on in a Github action.

It is strongly suggested that you form this and use your own copy instead of using this one.

Here is a sample implementation:

```yaml
#
# This is a test action. Unless you've blindly copied and pasted it elsewhere,
# it's in the cals_test_repo repo. All it does is call
# calevans/action-see-me@master and then demponstrates how to run another
# command with the run: directive.
#
name: Cal's Test Action
on: [push]
jobs:
  test:
    runs-on: ubuntu-latest
    name: Test Job
    #
    # Steps is an array I've started each step with a name but that's not
    # necessary, it just makes it easier to read.
    # Each step runs as it's own process. If you look closely at the output of
    # the first step, you'll see the three environment variables defined
    # displayed. If you look at the output of the $_SERVER variable, you won't
    # see them there.
    #
    steps:
      - name: Action See Me
        env:
          CALS_ENV_ONE: one
          CALS_ENV_TWO: two
          CALS_ENV_THREE: This one is three
        uses: calevans/action-see-me@master
      - name: PHP Version
        run: |
          php -i
      - name: PHP $_SERVER Superglobal
        run: |
          php -r 'print_r($_SERVER);'
```

Change the line `uses: calevans/action-see-me@master` to use your fork.