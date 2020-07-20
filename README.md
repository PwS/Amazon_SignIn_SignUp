## Amazon-SignIn_SignUp
To Learn About Structure Cucumber and Ruby
Automation For Test SignIn and SignUp

## File or Application needed
* [Visual Studio Code](https://code.visualstudio.com/) - Editor
* [Chocolatey](https://chocolatey.org/) - Package Manager
* [Ruby](https://rubyinstaller.org/downloads/) - Language For Logic
* [ChromeDriver](https://chromedriver.chromium.org/downloads) - Browser Driver

## Structure Tree
```bash
├── Gemfile
├── Gemfile.lock
└── features
    ├── signIn.feature
    ├── signUp.feature
    ├── support 
    │   └── env.rb
    └── step_definitions
        ├── signIn_step.rb
        └── signUp_step.rb
```

## How To Use
Cloning
```
git clone https://github.com/PwS/Amazon-SignIn_SignUp.git
cd Amazon-SignIn_SignUp
```

Install bundler
```
gem install bundler
```

Install dependencies Project
```
bundle install
```
Running
```
bundle exec cucumber
```