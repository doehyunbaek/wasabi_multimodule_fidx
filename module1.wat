(module
    (type $t0 (func (param i32) (result i32)))
    (func $shared_func (type $t0) (param $0 i32) (result i32)
        local.get $0
        i32.const 1
        i32.add
    )
    (export "shared_func" (func $shared_func))
)