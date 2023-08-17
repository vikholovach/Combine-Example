# Combine-Example
**Combine's main elements:**

# Publishers: <br />
**Value type** <br />
Defines how values and errors are created. 
Allows you to register **Subscriber**

# Subscriber: <br />
**Reference type** <br />
Accepts(recieveing) values and completion.

# Operators: <br />
**Value type** <br />
Accepts(recieving) **Publisher**. <br />
Describes behavior for changing values <br />
Subscribes to **Publisher** ("upstream") <br />
Send result to **Subscriber** ("downstream")
