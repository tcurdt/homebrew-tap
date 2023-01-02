# My Homebrew Tools

## How do I install?

`brew install tcurdt/tap/<formula>`

Or `brew tap tcurdt/tap` and then `brew install <formula>`.

## How to add a new tool?

```
brew create --tap=tcurdt/homebrew-tap --go https://github.com/psampaz/gothanks/archive/v0.3.0.tar.gz
brew edit tcurdt/homebrew-tap/gothanks

git checkout -b gothanks
git add Formula/gothanks.rb
git commit --message "gothanks 0.3.0 (new formula)"
git push --set-upstream origin gothanks
```

Wait until the pull request’s checks become green. Then label your pull request with the pr-pull label (this is the default label that will trigger the uploading workflow; you can easily change this in workflow file). A new brew pr-pull workflow will be fired up and after a couple of minutes you should observe the PR closed, bottles uploaded and commits pushed to the main branch of your repository.