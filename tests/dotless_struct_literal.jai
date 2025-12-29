Data :: struct {
	id: int;
}

write :: (data: Data) {}

main :: () {
	test: Data = {};
	test := {};
	test = {};
	write(data={id=1});
	write(data={1});
	write({1});

	return {{}};
}

Drak :: () {

}
