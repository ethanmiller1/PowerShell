# Manual Installs

## IntelliJ Extensions

* [Code With Me](https://plugins.jetbrains.com/plugin/14896-code-with-me)
* [Lombok​](https://plugins.jetbrains.com/plugin/6317-lombok)
* [VisualVM Launcher](https://plugins.jetbrains.com/plugin/7115-visualvm-launcher)
* [Properties to YAML Converter](https://plugins.jetbrains.com/plugin/8000-properties-to-yaml-converter)
* [Show As .​.​.​](https://plugins.jetbrains.com/plugin/7010-show-as--)
* [Current date generator](https://plugins.jetbrains.com/plugin/9722-current-date-generator)
* [Color Highlighter](https://plugins.jetbrains.com/plugin/13309-color-highlighter)
* [CodeGlance](https://plugins.jetbrains.com/plugin/7275-codeglance)
* [HTTP Client](https://plugins.jetbrains.com/plugin/13121-http-client)
* [SonarLint](https://plugins.jetbrains.com/plugin/7973-sonarlint)

### Settings

* [In-editor Javadocs rendering](https://blog.jetbrains.com/idea/2020/03/intellij-idea-2020-1-eap8/)
* `File > Settings > Editor > Code Style > Java > Imports > Class count to use / Names count to use static import with '*': 99`
![](https://i.ibb.co/mtzscvD/image.png)
* `File > Settings > Editor > General > Auto Import > Add unambiguous imports of the fly`
* `File > Settings > Build, Execution, Deployment > Build Tools Reload project after changes in the build scripts: Any changes`
* `File > Settings > Editor > General > Smart Keys >` [Use "CamelHumps" words](https://stackoverflow.com/questions/52034981/shortcut-for-selection-till-next-capital-letter-intellij-android-studio/52035699)
### Insert Date String in IntelliJ
Install the [Current date generator](https://plugins.jetbrains.com/plugin/9722-current-date-generator) plugin, then 
1. `settings > Other Settings` and insert `'(A) 'yyyy-MM-dd' 'HH:mm' '`
1. `Settings > Keymap > Plug-ins > Current date generator`

#### Set Terminal to Git Bash

`File > Settings > Tools > Terminal > Shell path > C:\Program Files\Git\git-cmd.exe`
#### Cutom Keyboard Shortcuts

| Action                             | IntelliJ |
| ---------------------------------- | -------- |
| Analyze Stack Trace or Thread Dump | Alt + D  |
| Show History for Selection         | Alt + H  |
| Generate Date                      | Alt + I  |

## Performance Testing

* [HP LoadRunner](https://www.microfocus.com/en-us/products/loadrunner-professional/download) | Virtual User Generator Scripts
* [DevTest](https://techdocs.broadcom.com/us/en/ca-enterprise-software/devops/devtest-solutions/10-4/installing/preinstallation/download-devtest-solutions-installers.html) | Virtualization
* [YourKit](https://www.yourkit.com/java/profiler/download/) | Java Profiler

## VS Code Extensions:
* [faker](https://marketplace.visualstudio.com/items?itemName=deerawan.vscode-faker)
* [css-peek](https://marketplace.visualstudio.com/items?itemName=pranaygp.vscode-css-peek)
* [partial-diff](https://marketplace.visualstudio.com/items?itemName=ryu1kn.partial-diff)
* [code-runner](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)
* [bracket-pair-colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)

## Other Software


* [ReadyAPI](https://support.smartbear.com/readyapi/downloads/) | [Link](http://dl.eviware.com/ready-api/readyapi.htm#_ga=2.106282307.1992450419.1595886902-161299662.1594941619&_gac=1.47633109.1594941620.Cj0KCQjw9b_4BRCMARIsADMUIyqznHF43h5zO6F54wcpdJcIYE771VYZla6UoeBNV-zGdl1PXBCBJAsaAo0SEALw_wcB)
* [hey](https://github.com/rakyll/hey)
* [Kontena Lens](https://k8slens.dev/)
* [RGui](https://archive.linux.duke.edu/cran/)

hey
```
# Install Go Version Manager
$ bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

# Activate gvm without restarting shell
$ source $USERPROFILE/.gvm/scripts/gvm

# install go1.4
$ gvm install go1.4
$ gvm use go1.4

# Install hey
$ go get -u github.com/rakyll/hey to install hey

OR

$ choco install golang --version=1.4
```




## Bommaker Script

### 1. Add this `bom.sh` to `%USERPROFILE%`.
```sh
#! /bin/bashq
mvn -U clean install
wait
mvn bommaker:bommaker
wait
. install_bom.sh
```

### 2. Set an alias to execute it.

#### In Git Bash Profile

```
vi ~/.bash_profile
alias bom=". ~/bom.sh"
Esc -> :wq         (Write/Quit)
source ~/.bash_profile
```

#### In PowerShell Profile
```
Add-Content $profile "new-alias new-project AdobeProjectStructure.ps1"
Add-Content $profile "new-alias new-cover CopyAlbumTemplate.ps1"
```
