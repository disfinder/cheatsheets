

### List installed plugins
```groovy
def plugins = jenkins.model.Jenkins.instance.getPluginManager().getPlugins() 
plugins.each {println "${it.getShortName()}: ${it.getVersion()}"}
```


### Make pretty button in console
```groovy

def makeExpandableNote(String caption, String text){
    echo hudson.console.ExpandableDetailsNote.encodeTo(caption, text)
}
```
