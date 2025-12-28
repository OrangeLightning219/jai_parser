// Basic tagged union with enum tag
Value_Kind :: enum u8 {
    SCALAR :: 0;
    VECTOR :: 1;
    STRING :: 2;
}

Value :: union kind: Value_Kind {
    scalar: float64;
    vector: Vector4;
    _string: string;
}

// Normal union without tag
Normal :: union {
    a: int;
    b: float;
}
