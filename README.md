# wordz

The wordZ counter!

## Database structure

<pre>
(root)
|
+- "users" (coll)
|
+- "families" (coll)
    |
    +- (UID)
        |
        +- "name" (string)
        |
        +- "members" (coll)
            |
            + (UID)
                |
                +- "name" (string)
                |
                +- "role" ("PARENT" or "KID")
                |
                +- "counter" (int)
</pre>
