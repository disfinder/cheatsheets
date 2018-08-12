- избегать использования GStrings как ключей в мапах - хешкоды стринг и гстринг отличаются
- если ключем мапы должно быть значение переменной key, а не строка "key", тогда key нужно взять в круглые скобки: person = [(key): 'Guillaume'] 
- элвис оператор displayName = user.name ?: 'Anonymous'
- safe-navigation оператор, когда пытаешься взять ключ он null - вместо NPE  вернет налл `def name = person?.name`
- груви создает геттеры для всех полей, поэтому если надо вместо кастомного геттера обратиться к полю напрямую, есть оператор прямого доступа: `assert user.@name == 'Bob' `
- указатель на метод. это отвал башки  
```groovy
def str = 'example of method reference'            
def fun = str.&toUpperCase                         
def upper = fun()                                  
assert upper == str.toUpperCase()
```

- резолвятся в рантайме, поэтому для перегруженных методов создается один указатель на метод,  и нужный метод потом определяется, исходя из параметров, переданных при вызове указателя

- оператор паттерн ~ - создание регекспов 
- =~ оператор find (тип Matcher)
- ==~ оператор совпадения (тип булеан, полное совпадение)
- *. оператор распостранения - выполняет действие над всеми, агрегирует результат в список  `def makes = cars*.make `  оператор нулл-безопасен
спредить через * можно много чего - передавать список как набор аргументов, раскрывать списки и мапы
- .. оператор range assert (0..<5).collect() == [0, 1, 2, 3, 4] 
- <=> spaceship operator - сравнение аргументов через compareTo

- списки можно сетить прямо по индексу
```groovy
def list = [0,1,2,3,4]
assert list[2] == 2                         
list[2] = 4                                 
assert list[0..2] == [0,1,4]                
list[0..2] = [6,6,6]                        
assert list == [6,6,6,3,4] 
```

- membership operator (in)  - коля in список
- == для сравнения вызывает equals. если надо сравнить ссылки -  оператор is 
- () call operator call operator () is used to call a method named call implicitly.
- The coercion operator (as) is a variant of casting . можно присваивать разные типы с приведением (создается новый объект,  если типы разные)  

String s = x as String 


- "".stripIndent()










