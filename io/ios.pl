% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, closure, [[f(wheel, part_of, engine), f(carol, part_of, bob), f(bob, part_of, alice), f(wheel, part_of, car), f(wheel, knows, engine)]], [f(bob, part_of, alice), f(carol, part_of, alice), f(carol, part_of, bob), f(engine, knows, wheel), f(wheel, knows, engine), f(wheel, part_of, car), f(wheel, part_of, engine)]).
io(2, holds, [[f(car, part_of, alice)], f(wheel, part_of, carol)], error("existence_error(procedure,cases:holds/3)")).
io(3, why, [[f(car, part_of, bob), f(alice, part_of, bob), f(piston, part_of, wheel), f(bob, part_of, piston)], f(alice, part_of, piston)], [f(alice, part_of, bob), f(bob, part_of, piston)]).
io(4, closure, [[f(piston, knows, car), f(carol, part_of, car), f(alice, part_of, carol), f(bob, part_of, carol), f(engine, part_of, wheel), f(wheel, knows, bob)]], [f(alice, part_of, car), f(alice, part_of, carol), f(bob, knows, wheel), f(bob, part_of, car), f(bob, part_of, carol), f(car, knows, piston), f(carol, part_of, car), f(engine, part_of, wheel), f(piston, knows, car), f(wheel, knows, bob)]).
io(5, holds, [[f(bob, part_of, fleet), f(alice, part_of, bob), f(alice, knows, piston), f(wheel, part_of, car)], f(piston, part_of, engine)], error("existence_error(procedure,cases:holds/3)")).
io(6, why, [[f(car, part_of, bob), f(wheel, part_of, car), f(car, part_of, alice), f(engine, knows, carol), f(piston, knows, alice)], f(car, part_of, bob)], [f(car, part_of, bob)]).
io(7, closure, [[f(carol, knows, wheel), f(bob, knows, wheel), f(fleet, part_of, alice), f(alice, knows, wheel), f(car, part_of, piston), f(wheel, part_of, car)]], [f(alice, knows, wheel), f(bob, knows, wheel), f(car, part_of, piston), f(carol, knows, wheel), f(fleet, part_of, alice), f(wheel, knows, alice), f(wheel, knows, bob), f(wheel, knows, carol), f(wheel, part_of, car), f(wheel, part_of, piston)]).
io(8, holds, [[], f(wheel, part_of, piston)], error("existence_error(procedure,cases:holds/3)")).
io(9, why, [[f(engine, knows, wheel), f(carol, part_of, fleet)], f(carol, part_of, fleet)], [f(carol, part_of, fleet)]).
io(10, closure, [[f(fleet, knows, piston), f(piston, part_of, engine), f(engine, part_of, wheel)]], [f(engine, part_of, wheel), f(fleet, knows, piston), f(piston, knows, fleet), f(piston, part_of, engine), f(piston, part_of, wheel)]).
io(11, holds, [[], f(bob, part_of, piston)], error("existence_error(procedure,cases:holds/3)")).
io(12, why, [[f(car, knows, alice), f(engine, part_of, wheel), f(wheel, part_of, bob), f(fleet, knows, piston), f(car, part_of, engine)], f(piston, knows, fleet)], [f(fleet, knows, piston)]).
io(13, closure, [[f(bob, part_of, carol), f(wheel, knows, bob), f(wheel, part_of, car)]], [f(bob, knows, wheel), f(bob, part_of, carol), f(wheel, knows, bob), f(wheel, part_of, car)]).
io(14, holds, [[f(bob, knows, piston), f(carol, knows, wheel)], f(carol, knows, wheel)], error("existence_error(procedure,cases:holds/3)")).
io(15, why, [[], f(a, knows, b)], fails).
io(16, closure, [[f(wheel, part_of, car), f(wheel, part_of, car), f(fleet, knows, carol)]], [f(carol, knows, fleet), f(fleet, knows, carol), f(wheel, part_of, car)]).
io(17, holds, [[f(fleet, part_of, bob), f(piston, knows, engine), f(bob, part_of, car)], f(wheel, part_of, car)], error("existence_error(procedure,cases:holds/3)")).
io(18, why, [[f(engine, knows, piston), f(carol, part_of, car), f(piston, part_of, bob)], f(carol, part_of, car)], [f(carol, part_of, car)]).
io(19, closure, [[]], []).
io(20, holds, [[f(wheel, part_of, car), f(fleet, knows, engine), f(alice, part_of, car)], f(wheel, part_of, fleet)], error("existence_error(procedure,cases:holds/3)")).
io(21, why, [[f(bob, part_of, piston), f(wheel, part_of, carol), f(car, part_of, carol), f(wheel, part_of, car), f(fleet, part_of, carol), f(fleet, part_of, alice)], f(fleet, part_of, carol)], [f(fleet, part_of, carol)]).
io(22, closure, [[f(fleet, knows, engine), f(piston, knows, engine)]], [f(engine, knows, fleet), f(engine, knows, piston), f(fleet, knows, engine), f(piston, knows, engine)]).
io(23, holds, [[f(bob, knows, piston), f(carol, knows, bob)], f(piston, knows, car)], error("existence_error(procedure,cases:holds/3)")).
io(24, why, [[f(carol, part_of, fleet), f(engine, knows, alice), f(carol, part_of, alice), f(engine, knows, carol), f(wheel, part_of, car), f(wheel, knows, piston)], f(carol, part_of, fleet)], [f(carol, part_of, fleet)]).
io(25, closure, [[f(fleet, part_of, piston), f(engine, knows, piston), f(alice, knows, carol)]], [f(alice, knows, carol), f(carol, knows, alice), f(engine, knows, piston), f(fleet, part_of, piston), f(piston, knows, engine)]).
io(26, holds, [[f(engine, knows, carol), f(engine, knows, carol), f(carol, part_of, piston), f(bob, knows, wheel)], f(wheel, knows, fleet)], error("existence_error(procedure,cases:holds/3)")).
io(27, why, [[f(car, part_of, bob), f(alice, knows, carol)], f(carol, knows, alice)], [f(alice, knows, carol)]).
io(28, closure, [[f(car, knows, alice), f(car, part_of, alice), f(car, part_of, piston), f(wheel, part_of, car), f(wheel, knows, alice)]], [f(alice, knows, car), f(alice, knows, wheel), f(car, knows, alice), f(car, part_of, alice), f(car, part_of, piston), f(wheel, knows, alice), f(wheel, part_of, alice), f(wheel, part_of, car), f(wheel, part_of, piston)]).
io(29, holds, [[f(fleet, part_of, alice), f(alice, part_of, carol)], f(piston, part_of, engine)], error("existence_error(procedure,cases:holds/3)")).
io(30, why, [[f(bob, part_of, fleet), f(engine, part_of, piston), f(bob, knows, fleet), f(bob, knows, alice)], f(alice, knows, bob)], [f(bob, knows, alice)]).
io(31, closure, [[f(alice, knows, wheel), f(piston, part_of, carol), f(piston, knows, carol), f(wheel, part_of, car)]], [f(alice, knows, wheel), f(carol, knows, piston), f(piston, knows, carol), f(piston, part_of, carol), f(wheel, knows, alice), f(wheel, part_of, car)]).
io(32, holds, [[f(carol, knows, engine), f(piston, part_of, bob), f(wheel, part_of, car), f(alice, knows, piston), f(car, part_of, engine)], f(carol, knows, bob)], error("existence_error(procedure,cases:holds/3)")).
io(33, why, [[f(carol, knows, car), f(alice, knows, engine), f(fleet, part_of, piston), f(piston, part_of, carol), f(engine, knows, car), f(alice, knows, wheel)], f(fleet, part_of, piston)], [f(fleet, part_of, piston)]).
io(34, closure, [[f(car, part_of, engine), f(fleet, knows, engine), f(wheel, part_of, car), f(wheel, part_of, car), f(wheel, knows, car)]], [f(car, knows, wheel), f(car, part_of, engine), f(engine, knows, fleet), f(fleet, knows, engine), f(wheel, knows, car), f(wheel, part_of, car), f(wheel, part_of, engine)]).
io(35, holds, [[f(carol, part_of, wheel), f(carol, part_of, bob), f(engine, part_of, bob), f(carol, knows, wheel), f(wheel, part_of, car)], f(car, part_of, bob)], error("existence_error(procedure,cases:holds/3)")).
io(36, why, [[f(car, knows, alice), f(carol, part_of, bob), f(alice, knows, wheel), f(wheel, part_of, car), f(carol, part_of, fleet)], f(alice, knows, car)], [f(car, knows, alice)]).
io(37, closure, [[f(wheel, part_of, car), f(car, knows, carol), f(bob, knows, wheel), f(piston, part_of, car), f(wheel, part_of, car), f(wheel, part_of, car)]], [f(bob, knows, wheel), f(car, knows, carol), f(carol, knows, car), f(piston, part_of, car), f(wheel, knows, bob), f(wheel, part_of, car)]).
io(38, holds, [[f(car, knows, alice), f(alice, knows, engine)], f(car, part_of, wheel)], error("existence_error(procedure,cases:holds/3)")).
io(39, why, [[f(bob, knows, alice), f(alice, knows, engine), f(bob, knows, carol), f(wheel, part_of, car), f(car, part_of, fleet)], f(bob, knows, carol)], [f(bob, knows, carol)]).
io(40, closure, [[f(bob, part_of, car), f(wheel, knows, bob), f(piston, knows, carol), f(wheel, part_of, car), f(fleet, knows, alice)]], [f(alice, knows, fleet), f(bob, knows, wheel), f(bob, part_of, car), f(carol, knows, piston), f(fleet, knows, alice), f(piston, knows, carol), f(wheel, knows, bob), f(wheel, part_of, car)]).
io(41, holds, [[f(piston, part_of, fleet), f(engine, part_of, fleet)], f(wheel, part_of, engine)], error("existence_error(procedure,cases:holds/3)")).
io(42, why, [[f(engine, knows, wheel), f(engine, part_of, fleet)], f(engine, part_of, fleet)], [f(engine, part_of, fleet)]).
io(43, closure, [[f(carol, part_of, piston), f(engine, part_of, piston)]], [f(carol, part_of, piston), f(engine, part_of, piston)]).
io(44, holds, [[f(wheel, part_of, piston), f(fleet, part_of, piston), f(bob, part_of, engine), f(carol, knows, piston), f(carol, knows, bob), f(alice, part_of, piston)], f(alice, knows, piston)], error("existence_error(procedure,cases:holds/3)")).
io(45, why, [[f(bob, knows, piston), f(piston, part_of, wheel), f(wheel, knows, piston), f(piston, knows, carol), f(wheel, part_of, car)], f(piston, knows, carol)], [f(piston, knows, carol)]).
io(46, closure, [[f(wheel, knows, alice), f(carol, part_of, piston), f(wheel, part_of, car), f(carol, part_of, engine), f(car, knows, alice), f(fleet, knows, engine)]], [f(alice, knows, car), f(alice, knows, wheel), f(car, knows, alice), f(carol, part_of, engine), f(carol, part_of, piston), f(engine, knows, fleet), f(fleet, knows, engine), f(wheel, knows, alice), f(wheel, part_of, car)]).
io(47, holds, [[f(bob, knows, alice), f(bob, part_of, carol), f(bob, part_of, wheel), f(wheel, part_of, car), f(bob, knows, wheel), f(fleet, knows, alice)], f(car, part_of, bob)], error("existence_error(procedure,cases:holds/3)")).
io(48, why, [[], f(a, knows, b)], fails).
io(49, closure, [[f(carol, knows, car), f(wheel, part_of, car), f(wheel, part_of, carol), f(wheel, knows, fleet)]], [f(car, knows, carol), f(carol, knows, car), f(fleet, knows, wheel), f(wheel, knows, fleet), f(wheel, part_of, car), f(wheel, part_of, carol)]).
io(50, holds, [[f(piston, knows, car)], f(fleet, part_of, piston)], error("existence_error(procedure,cases:holds/3)")).
io(51, why, [[], f(a, knows, b)], fails).
io(52, closure, [[f(fleet, knows, carol), f(carol, knows, car), f(wheel, part_of, car), f(piston, part_of, wheel), f(wheel, part_of, car), f(piston, knows, bob)]], [f(bob, knows, piston), f(car, knows, carol), f(carol, knows, car), f(carol, knows, fleet), f(fleet, knows, carol), f(piston, knows, bob), f(piston, part_of, car), f(piston, part_of, wheel), f(wheel, part_of, car)]).
io(53, holds, [[f(piston, part_of, alice)], f(bob, knows, piston)], error("existence_error(procedure,cases:holds/3)")).
io(54, why, [[f(wheel, part_of, car), f(piston, knows, fleet), f(alice, knows, bob), f(alice, knows, bob), f(engine, knows, bob), f(bob, knows, fleet)], f(bob, knows, alice)], [f(alice, knows, bob)]).
io(55, closure, [[f(wheel, knows, alice), f(alice, part_of, fleet), f(piston, part_of, engine), f(car, part_of, bob)]], [f(alice, knows, wheel), f(alice, part_of, fleet), f(car, part_of, bob), f(piston, part_of, engine), f(wheel, knows, alice)]).
io(56, holds, [[f(wheel, part_of, car)], f(bob, knows, car)], error("existence_error(procedure,cases:holds/3)")).
io(57, why, [[f(alice, part_of, carol)], f(alice, part_of, carol)], [f(alice, part_of, carol)]).
io(58, closure, [[f(piston, part_of, car), f(fleet, knows, engine), f(wheel, part_of, car), f(car, knows, bob), f(carol, part_of, bob), f(wheel, part_of, piston)]], [f(bob, knows, car), f(car, knows, bob), f(carol, part_of, bob), f(engine, knows, fleet), f(fleet, knows, engine), f(piston, part_of, car), f(wheel, part_of, car), f(wheel, part_of, piston)]).
io(59, holds, [[f(fleet, part_of, wheel), f(alice, knows, wheel), f(alice, part_of, piston)], f(wheel, part_of, bob)], error("existence_error(procedure,cases:holds/3)")).
io(60, why, [[f(wheel, part_of, engine), f(alice, part_of, wheel), f(engine, knows, fleet)], f(alice, part_of, wheel)], [f(alice, part_of, wheel)]).
io(61, closure, [[f(alice, part_of, carol), f(fleet, knows, carol)]], [f(alice, part_of, carol), f(carol, knows, fleet), f(fleet, knows, carol)]).
io(62, holds, [[], f(fleet, knows, carol)], error("existence_error(procedure,cases:holds/3)")).
io(63, why, [[f(alice, part_of, wheel), f(car, knows, engine)], f(alice, part_of, wheel)], [f(alice, part_of, wheel)]).
io(64, closure, [[f(wheel, part_of, car), f(alice, part_of, wheel), f(bob, part_of, engine), f(fleet, knows, car), f(wheel, part_of, fleet)]], [f(alice, part_of, car), f(alice, part_of, fleet), f(alice, part_of, wheel), f(bob, part_of, engine), f(car, knows, fleet), f(fleet, knows, car), f(wheel, part_of, car), f(wheel, part_of, fleet)]).
io(65, holds, [[f(carol, part_of, engine), f(engine, knows, carol), f(car, knows, alice), f(car, knows, alice)], f(alice, part_of, fleet)], error("existence_error(procedure,cases:holds/3)")).
io(66, why, [[f(carol, part_of, bob)], f(carol, part_of, bob)], [f(carol, part_of, bob)]).
io(67, closure, [[f(engine, knows, piston), f(piston, knows, car), f(alice, part_of, engine), f(carol, knows, engine)]], [f(alice, part_of, engine), f(car, knows, piston), f(carol, knows, engine), f(engine, knows, carol), f(engine, knows, piston), f(piston, knows, car), f(piston, knows, engine)]).
io(68, holds, [[f(bob, knows, carol), f(fleet, part_of, car), f(wheel, part_of, car), f(car, knows, wheel), f(wheel, part_of, engine), f(engine, part_of, alice)], f(fleet, part_of, car)], error("existence_error(procedure,cases:holds/3)")).
io(69, why, [[f(piston, part_of, wheel), f(car, part_of, fleet), f(piston, knows, wheel)], f(car, part_of, fleet)], [f(car, part_of, fleet)]).
io(70, closure, [[f(engine, part_of, alice), f(engine, knows, bob), f(fleet, part_of, alice), f(fleet, knows, alice), f(wheel, part_of, car), f(wheel, part_of, car)]], [f(alice, knows, fleet), f(bob, knows, engine), f(engine, knows, bob), f(engine, part_of, alice), f(fleet, knows, alice), f(fleet, part_of, alice), f(wheel, part_of, car)]).
io(71, holds, [[f(fleet, part_of, piston)], f(wheel, part_of, car)], error("existence_error(procedure,cases:holds/3)")).
io(72, why, [[f(car, part_of, carol), f(piston, knows, alice), f(engine, part_of, wheel), f(alice, knows, carol), f(engine, knows, car)], f(alice, knows, carol)], [f(alice, knows, carol)]).
io(73, closure, [[f(fleet, part_of, piston), f(wheel, part_of, car), f(carol, knows, engine), f(wheel, part_of, car), f(carol, part_of, car)]], [f(carol, knows, engine), f(carol, part_of, car), f(engine, knows, carol), f(fleet, part_of, piston), f(wheel, part_of, car)]).
io(74, holds, [[f(carol, knows, wheel), f(alice, part_of, engine)], f(wheel, part_of, car)], error("existence_error(procedure,cases:holds/3)")).
io(75, why, [[f(carol, part_of, alice), f(piston, part_of, alice), f(wheel, part_of, car)], f(piston, part_of, alice)], [f(piston, part_of, alice)]).
io(76, closure, [[]], []).
io(77, holds, [[f(car, part_of, alice), f(piston, knows, carol), f(bob, part_of, wheel), f(carol, knows, engine)], f(alice, part_of, piston)], error("existence_error(procedure,cases:holds/3)")).
io(78, why, [[f(car, part_of, carol)], f(car, part_of, carol)], [f(car, part_of, carol)]).
io(79, closure, [[f(alice, part_of, wheel), f(wheel, part_of, car)]], [f(alice, part_of, car), f(alice, part_of, wheel), f(wheel, part_of, car)]).
io(80, holds, [[], f(alice, knows, carol)], error("existence_error(procedure,cases:holds/3)")).
io(81, why, [[f(piston, knows, bob), f(fleet, part_of, carol), f(wheel, part_of, car)], f(fleet, part_of, carol)], [f(fleet, part_of, carol)]).
io(82, closure, [[f(alice, knows, carol), f(carol, knows, engine)]], [f(alice, knows, carol), f(carol, knows, alice), f(carol, knows, engine), f(engine, knows, carol)]).
io(83, holds, [[], f(car, knows, wheel)], error("existence_error(procedure,cases:holds/3)")).
io(84, why, [[], f(a, knows, b)], fails).
io(85, closure, [[f(piston, knows, engine), f(engine, knows, car), f(piston, knows, alice), f(bob, part_of, carol), f(carol, part_of, wheel), f(alice, part_of, piston)]], [f(alice, knows, piston), f(alice, part_of, piston), f(bob, part_of, carol), f(bob, part_of, wheel), f(car, knows, engine), f(carol, part_of, wheel), f(engine, knows, car), f(engine, knows, piston), f(piston, knows, alice), f(piston, knows, engine)]).
io(86, holds, [[f(carol, part_of, alice), f(piston, part_of, engine), f(alice, part_of, fleet), f(piston, part_of, carol), f(engine, part_of, fleet)], f(fleet, part_of, car)], error("existence_error(procedure,cases:holds/3)")).
io(87, why, [[f(wheel, part_of, piston), f(wheel, part_of, car)], f(wheel, part_of, piston)], [f(wheel, part_of, piston)]).
io(88, closure, [[]], []).
io(89, holds, [[f(piston, part_of, engine)], f(engine, knows, wheel)], error("existence_error(procedure,cases:holds/3)")).
io(90, why, [[f(car, part_of, fleet), f(wheel, part_of, piston)], f(car, part_of, fleet)], [f(car, part_of, fleet)]).
io(91, closure, [[f(wheel, part_of, piston)]], [f(wheel, part_of, piston)]).
io(92, holds, [[f(car, knows, engine), f(fleet, knows, car), f(piston, knows, fleet), f(fleet, knows, carol), f(fleet, part_of, piston), f(car, part_of, fleet)], f(fleet, part_of, bob)], error("existence_error(procedure,cases:holds/3)")).
io(93, why, [[f(fleet, part_of, car)], f(fleet, part_of, car)], [f(fleet, part_of, car)]).
io(94, closure, [[f(wheel, part_of, car), f(wheel, part_of, carol), f(engine, knows, bob), f(fleet, knows, piston), f(alice, knows, piston), f(car, knows, engine)]], [f(alice, knows, piston), f(bob, knows, engine), f(car, knows, engine), f(engine, knows, bob), f(engine, knows, car), f(fleet, knows, piston), f(piston, knows, alice), f(piston, knows, fleet), f(wheel, part_of, car), f(wheel, part_of, carol)]).
io(95, holds, [[f(wheel, knows, car), f(carol, part_of, engine), f(engine, part_of, fleet)], f(alice, part_of, bob)], error("existence_error(procedure,cases:holds/3)")).
io(96, why, [[f(wheel, part_of, car), f(piston, knows, bob), f(wheel, knows, engine), f(carol, part_of, piston)], f(bob, knows, piston)], [f(piston, knows, bob)]).
io(97, closure, [[]], []).
io(98, holds, [[f(carol, knows, piston), f(engine, part_of, bob), f(wheel, knows, bob)], f(carol, part_of, wheel)], error("existence_error(procedure,cases:holds/3)")).
io(99, why, [[f(carol, knows, wheel), f(piston, part_of, fleet)], f(carol, knows, wheel)], [f(carol, knows, wheel)]).
io(100, closure, [[]], []).
io(101, holds, [[f(alice, knows, car), f(carol, part_of, piston), f(piston, part_of, fleet), f(bob, knows, wheel), f(alice, part_of, carol)], f(piston, knows, fleet)], error("existence_error(procedure,cases:holds/3)")).
io(102, why, [[], f(a, knows, b)], fails).
io(103, closure, [[f(piston, knows, fleet), f(wheel, part_of, car), f(fleet, part_of, engine)]], [f(fleet, knows, piston), f(fleet, part_of, engine), f(piston, knows, fleet), f(wheel, part_of, car)]).
io(104, holds, [[], f(engine, knows, piston)], error("existence_error(procedure,cases:holds/3)")).
io(105, why, [[f(engine, part_of, car), f(carol, part_of, piston), f(alice, part_of, engine)], f(alice, part_of, car)], [f(alice, part_of, engine), f(engine, part_of, car)]).
io(106, closure, [[]], []).
io(107, holds, [[f(engine, knows, bob)], f(wheel, part_of, car)], error("existence_error(procedure,cases:holds/3)")).
io(108, why, [[f(carol, part_of, piston), f(alice, part_of, wheel), f(fleet, part_of, carol), f(carol, part_of, engine), f(wheel, part_of, car)], f(fleet, part_of, piston)], [f(carol, part_of, piston), f(fleet, part_of, carol)]).
io(109, closure, [[f(piston, knows, wheel)]], [f(piston, knows, wheel), f(wheel, knows, piston)]).
io(110, holds, [[f(car, knows, bob), f(wheel, part_of, car), f(wheel, part_of, car), f(piston, part_of, fleet), f(fleet, part_of, wheel), f(piston, part_of, engine)], f(alice, part_of, engine)], error("existence_error(procedure,cases:holds/3)")).
io(111, why, [[], f(a, knows, b)], fails).
io(112, closure, [[f(bob, part_of, piston), f(engine, part_of, piston)]], [f(bob, part_of, piston), f(engine, part_of, piston)]).
io(113, holds, [[f(engine, part_of, bob)], f(car, knows, wheel)], error("existence_error(procedure,cases:holds/3)")).
io(114, why, [[f(carol, knows, fleet), f(alice, part_of, engine), f(alice, part_of, wheel), f(wheel, part_of, car), f(engine, part_of, bob), f(carol, knows, car)], f(alice, part_of, wheel)], [f(alice, part_of, wheel)]).
io(115, closure, [[f(wheel, part_of, car), f(engine, part_of, bob)]], [f(engine, part_of, bob), f(wheel, part_of, car)]).
io(116, holds, [[f(piston, knows, wheel), f(carol, knows, bob), f(fleet, part_of, carol), f(alice, part_of, car), f(car, knows, alice), f(carol, knows, engine)], f(carol, knows, engine)], error("existence_error(procedure,cases:holds/3)")).
io(117, why, [[f(wheel, part_of, fleet), f(alice, part_of, piston), f(engine, part_of, car)], f(wheel, part_of, fleet)], [f(wheel, part_of, fleet)]).
io(118, closure, [[f(fleet, knows, carol), f(engine, part_of, car)]], [f(carol, knows, fleet), f(engine, part_of, car), f(fleet, knows, carol)]).
io(119, holds, [[f(car, knows, alice), f(piston, knows, alice), f(wheel, part_of, carol), f(wheel, part_of, car), f(carol, knows, bob), f(bob, part_of, car)], f(car, part_of, engine)], error("existence_error(procedure,cases:holds/3)")).
io(120, why, [[f(piston, knows, wheel), f(fleet, part_of, bob), f(carol, part_of, wheel), f(fleet, knows, bob), f(fleet, knows, car), f(wheel, knows, car)], f(fleet, knows, car)], [f(fleet, knows, car)]).
io(121, closure, [[f(wheel, part_of, engine), f(wheel, knows, engine), f(wheel, part_of, car)]], [f(engine, knows, wheel), f(wheel, knows, engine), f(wheel, part_of, car), f(wheel, part_of, engine)]).
io(122, holds, [[f(engine, knows, carol), f(wheel, part_of, fleet), f(wheel, part_of, car), f(car, knows, wheel)], f(alice, part_of, carol)], error("existence_error(procedure,cases:holds/3)")).
io(123, why, [[f(car, part_of, bob), f(engine, knows, alice), f(car, knows, carol), f(bob, part_of, wheel)], f(carol, knows, car)], [f(car, knows, carol)]).
io(124, closure, [[f(wheel, part_of, car)]], [f(wheel, part_of, car)]).
io(125, holds, [[], f(car, knows, piston)], error("existence_error(procedure,cases:holds/3)")).
io(126, why, [[f(piston, knows, bob), f(carol, part_of, alice), f(carol, part_of, engine), f(bob, knows, piston), f(wheel, part_of, car)], f(carol, part_of, alice)], [f(carol, part_of, alice)]).
io(127, closure, [[f(engine, part_of, piston), f(engine, part_of, fleet), f(carol, part_of, fleet), f(engine, knows, piston), f(wheel, part_of, car), f(alice, part_of, fleet)]], [f(alice, part_of, fleet), f(carol, part_of, fleet), f(engine, knows, piston), f(engine, part_of, fleet), f(engine, part_of, piston), f(piston, knows, engine), f(wheel, part_of, car)]).
io(128, holds, [[f(alice, knows, car)], f(engine, part_of, fleet)], error("existence_error(procedure,cases:holds/3)")).
io(129, why, [[f(carol, part_of, alice), f(carol, knows, engine), f(fleet, part_of, engine), f(fleet, knows, piston), f(engine, knows, alice), f(engine, part_of, carol)], f(engine, knows, carol)], [f(carol, knows, engine)]).
io(130, closure, [[f(wheel, part_of, car), f(bob, part_of, engine), f(wheel, knows, carol), f(alice, knows, car), f(car, knows, carol)]], [f(alice, knows, car), f(bob, part_of, engine), f(car, knows, alice), f(car, knows, carol), f(carol, knows, car), f(carol, knows, wheel), f(wheel, knows, carol), f(wheel, part_of, car)]).
io(131, holds, [[f(bob, part_of, car), f(fleet, knows, car), f(car, knows, carol), f(fleet, knows, engine)], f(piston, part_of, alice)], error("existence_error(procedure,cases:holds/3)")).
io(132, why, [[f(piston, part_of, engine)], f(piston, part_of, engine)], [f(piston, part_of, engine)]).
io(133, closure, [[f(fleet, knows, piston), f(engine, part_of, wheel), f(car, knows, fleet), f(wheel, part_of, bob)]], [f(car, knows, fleet), f(engine, part_of, bob), f(engine, part_of, wheel), f(fleet, knows, car), f(fleet, knows, piston), f(piston, knows, fleet), f(wheel, part_of, bob)]).
io(134, holds, [[f(car, part_of, wheel), f(wheel, part_of, carol), f(wheel, part_of, car)], f(fleet, knows, alice)], error("existence_error(procedure,cases:holds/3)")).
io(135, why, [[f(engine, part_of, carol), f(fleet, part_of, car), f(car, knows, bob), f(wheel, knows, piston), f(wheel, part_of, piston), f(fleet, part_of, bob)], f(wheel, knows, piston)], [f(wheel, knows, piston)]).
io(136, closure, [[f(fleet, part_of, carol)]], [f(fleet, part_of, carol)]).
io(137, holds, [[f(car, part_of, engine), f(carol, part_of, car)], f(wheel, part_of, car)], error("existence_error(procedure,cases:holds/3)")).
io(138, why, [[f(wheel, part_of, fleet), f(carol, part_of, wheel), f(wheel, part_of, piston), f(carol, part_of, wheel)], f(carol, part_of, fleet)], [f(carol, part_of, wheel), f(wheel, part_of, fleet)]).
io(139, closure, [[f(wheel, part_of, car), f(carol, part_of, piston), f(alice, knows, engine), f(piston, part_of, engine), f(fleet, knows, engine), f(fleet, knows, alice)]], [f(alice, knows, engine), f(alice, knows, fleet), f(carol, part_of, engine), f(carol, part_of, piston), f(engine, knows, alice), f(engine, knows, fleet), f(fleet, knows, alice), f(fleet, knows, engine), f(piston, part_of, engine), f(wheel, part_of, car)]).
io(140, holds, [[f(car, part_of, alice), f(carol, knows, fleet)], f(car, knows, fleet)], error("existence_error(procedure,cases:holds/3)")).
io(141, why, [[f(engine, part_of, piston), f(piston, knows, carol), f(carol, part_of, engine), f(piston, part_of, alice)], f(carol, part_of, alice)], [f(carol, part_of, engine), f(engine, part_of, piston), f(piston, part_of, alice)]).
io(142, closure, [[f(wheel, part_of, car), f(bob, knows, alice)]], [f(alice, knows, bob), f(bob, knows, alice), f(wheel, part_of, car)]).
io(143, holds, [[f(wheel, part_of, car), f(piston, part_of, engine), f(piston, knows, bob), f(bob, part_of, alice)], f(alice, part_of, fleet)], error("existence_error(procedure,cases:holds/3)")).
io(144, why, [[f(wheel, part_of, bob), f(car, knows, engine), f(carol, knows, fleet)], f(fleet, knows, carol)], [f(carol, knows, fleet)]).
io(145, closure, [[f(wheel, part_of, piston), f(wheel, part_of, car), f(wheel, knows, fleet)]], [f(fleet, knows, wheel), f(wheel, knows, fleet), f(wheel, part_of, car), f(wheel, part_of, piston)]).
io(146, holds, [[f(wheel, part_of, car), f(fleet, knows, wheel), f(wheel, part_of, car), f(wheel, part_of, car)], f(bob, knows, carol)], error("existence_error(procedure,cases:holds/3)")).
io(147, why, [[f(car, knows, fleet)], f(fleet, knows, car)], [f(car, knows, fleet)]).
io(148, closure, [[f(fleet, part_of, engine)]], [f(fleet, part_of, engine)]).
io(149, holds, [[], f(car, part_of, piston)], error("existence_error(procedure,cases:holds/3)")).
io(150, why, [[f(car, knows, piston), f(wheel, part_of, car)], f(car, knows, piston)], [f(car, knows, piston)]).
io(151, closure, [[f(wheel, part_of, engine), f(wheel, part_of, car)]], [f(wheel, part_of, car), f(wheel, part_of, engine)]).
io(152, holds, [[f(alice, knows, bob), f(car, part_of, engine), f(bob, part_of, wheel), f(fleet, knows, bob), f(wheel, part_of, car), f(piston, knows, alice)], f(carol, part_of, engine)], error("existence_error(procedure,cases:holds/3)")).
io(153, why, [[f(fleet, part_of, wheel), f(wheel, part_of, bob), f(fleet, part_of, car), f(engine, part_of, car), f(wheel, part_of, car), f(piston, part_of, car)], f(engine, part_of, car)], [f(engine, part_of, car)]).
io(154, closure, [[f(carol, knows, wheel), f(piston, knows, alice)]], [f(alice, knows, piston), f(carol, knows, wheel), f(piston, knows, alice), f(wheel, knows, carol)]).
io(155, holds, [[], f(wheel, part_of, car)], error("existence_error(procedure,cases:holds/3)")).
io(156, why, [[f(engine, part_of, car), f(engine, part_of, bob), f(wheel, part_of, car)], f(engine, part_of, bob)], [f(engine, part_of, bob)]).
io(157, closure, [[f(piston, knows, engine)]], [f(engine, knows, piston), f(piston, knows, engine)]).
io(158, holds, [[f(car, part_of, carol), f(alice, knows, car)], f(wheel, part_of, car)], error("existence_error(procedure,cases:holds/3)")).
io(159, why, [[f(carol, part_of, alice), f(alice, part_of, wheel), f(bob, knows, engine)], f(alice, part_of, wheel)], [f(alice, part_of, wheel)]).
io(160, closure, [[f(carol, knows, engine), f(alice, knows, car), f(alice, knows, car), f(car, part_of, bob), f(wheel, knows, fleet)]], [f(alice, knows, car), f(car, knows, alice), f(car, part_of, bob), f(carol, knows, engine), f(engine, knows, carol), f(fleet, knows, wheel), f(wheel, knows, fleet)]).
io(161, holds, [[f(car, part_of, carol), f(engine, part_of, wheel)], f(carol, knows, car)], error("existence_error(procedure,cases:holds/3)")).
io(162, why, [[f(wheel, part_of, car), f(carol, knows, fleet), f(carol, knows, bob), f(bob, knows, fleet), f(wheel, part_of, car), f(carol, part_of, piston)], f(carol, knows, bob)], [f(carol, knows, bob)]).
io(163, closure, [[f(carol, part_of, car), f(bob, part_of, alice), f(bob, part_of, wheel), f(piston, knows, wheel), f(bob, part_of, car), f(piston, part_of, alice)]], [f(bob, part_of, alice), f(bob, part_of, car), f(bob, part_of, wheel), f(carol, part_of, car), f(piston, knows, wheel), f(piston, part_of, alice), f(wheel, knows, piston)]).
io(164, holds, [[f(bob, knows, carol), f(engine, part_of, bob), f(fleet, knows, bob)], f(engine, knows, piston)], error("existence_error(procedure,cases:holds/3)")).
io(165, why, [[], f(a, knows, b)], fails).
io(166, closure, [[f(wheel, part_of, car)]], [f(wheel, part_of, car)]).
io(167, holds, [[f(bob, part_of, wheel)], f(wheel, part_of, car)], error("existence_error(procedure,cases:holds/3)")).
io(168, why, [[f(alice, part_of, engine), f(wheel, knows, car), f(carol, part_of, piston)], f(car, knows, wheel)], [f(wheel, knows, car)]).
io(169, closure, [[f(engine, knows, car), f(alice, part_of, fleet), f(bob, part_of, wheel), f(wheel, part_of, car)]], [f(alice, part_of, fleet), f(bob, part_of, car), f(bob, part_of, wheel), f(car, knows, engine), f(engine, knows, car), f(wheel, part_of, car)]).
io(170, holds, [[f(carol, knows, fleet), f(car, part_of, engine), f(wheel, part_of, car)], f(engine, knows, piston)], error("existence_error(procedure,cases:holds/3)")).
io(171, why, [[f(piston, knows, fleet), f(wheel, part_of, car), f(engine, part_of, car), f(wheel, part_of, car), f(piston, part_of, alice), f(bob, part_of, car)], f(piston, knows, fleet)], [f(piston, knows, fleet)]).
io(172, closure, [[f(wheel, part_of, car), f(engine, part_of, wheel), f(piston, knows, car), f(carol, knows, bob), f(wheel, knows, alice), f(fleet, knows, alice)]], [f(alice, knows, fleet), f(alice, knows, wheel), f(bob, knows, carol), f(car, knows, piston), f(carol, knows, bob), f(engine, part_of, car), f(engine, part_of, wheel), f(fleet, knows, alice), f(piston, knows, car), f(wheel, knows, alice), f(wheel, part_of, car)]).
io(173, holds, [[f(car, part_of, piston), f(wheel, part_of, car), f(fleet, knows, engine), f(engine, knows, wheel), f(alice, part_of, bob), f(wheel, part_of, car)], f(piston, part_of, car)], error("existence_error(procedure,cases:holds/3)")).
io(174, why, [[f(car, knows, engine), f(engine, knows, carol), f(alice, knows, engine)], f(engine, knows, car)], [f(car, knows, engine)]).
io(175, closure, [[f(wheel, part_of, car), f(carol, knows, engine)]], [f(carol, knows, engine), f(engine, knows, carol), f(wheel, part_of, car)]).
io(176, holds, [[f(wheel, knows, car), f(fleet, part_of, engine)], f(engine, part_of, piston)], error("existence_error(procedure,cases:holds/3)")).
io(177, why, [[f(wheel, part_of, car), f(engine, part_of, car), f(wheel, part_of, carol), f(car, part_of, bob), f(wheel, part_of, engine)], f(engine, part_of, bob)], [f(car, part_of, bob), f(engine, part_of, car)]).
io(178, closure, [[f(bob, part_of, piston), f(alice, part_of, piston), f(fleet, part_of, alice)]], [f(alice, part_of, piston), f(bob, part_of, piston), f(fleet, part_of, alice), f(fleet, part_of, piston)]).
io(179, holds, [[f(alice, knows, fleet), f(alice, part_of, piston), f(carol, knows, car), f(piston, part_of, alice)], f(fleet, part_of, piston)], error("existence_error(procedure,cases:holds/3)")).
io(180, why, [[f(wheel, part_of, piston), f(piston, part_of, wheel), f(piston, knows, car), f(carol, part_of, car), f(alice, part_of, carol)], f(piston, part_of, piston)], [f(piston, part_of, wheel), f(wheel, part_of, piston)]).
io(181, closure, [[f(carol, knows, bob), f(wheel, part_of, alice), f(wheel, part_of, car), f(fleet, part_of, alice)]], [f(bob, knows, carol), f(carol, knows, bob), f(fleet, part_of, alice), f(wheel, part_of, alice), f(wheel, part_of, car)]).
io(182, holds, [[f(bob, knows, car), f(wheel, part_of, car)], f(alice, part_of, fleet)], error("existence_error(procedure,cases:holds/3)")).
io(183, why, [[], f(a, knows, b)], fails).
io(184, closure, [[f(car, part_of, bob), f(wheel, part_of, car), f(car, part_of, alice)]], [f(car, part_of, alice), f(car, part_of, bob), f(wheel, part_of, alice), f(wheel, part_of, bob), f(wheel, part_of, car)]).
io(185, holds, [[f(carol, knows, piston), f(wheel, part_of, car), f(wheel, knows, carol), f(wheel, part_of, car), f(wheel, part_of, fleet), f(wheel, part_of, car)], f(wheel, knows, fleet)], error("existence_error(procedure,cases:holds/3)")).
io(186, why, [[f(wheel, part_of, car)], f(wheel, part_of, car)], [f(wheel, part_of, car)]).
io(187, closure, [[f(piston, part_of, car), f(engine, knows, wheel), f(carol, part_of, fleet), f(piston, knows, fleet), f(engine, part_of, piston), f(bob, knows, engine)]], [f(bob, knows, engine), f(carol, part_of, fleet), f(engine, knows, bob), f(engine, knows, wheel), f(engine, part_of, car), f(engine, part_of, piston), f(fleet, knows, piston), f(piston, knows, fleet), f(piston, part_of, car), f(wheel, knows, engine)]).
io(188, holds, [[f(wheel, part_of, bob), f(piston, part_of, carol), f(car, knows, alice), f(engine, part_of, wheel), f(wheel, part_of, bob), f(fleet, knows, piston)], f(car, part_of, engine)], error("existence_error(procedure,cases:holds/3)")).
io(189, why, [[f(engine, part_of, piston), f(wheel, part_of, car), f(wheel, part_of, car), f(alice, part_of, bob), f(wheel, part_of, car)], f(wheel, part_of, car)], [f(wheel, part_of, car)]).
io(190, closure, [[f(carol, knows, wheel), f(alice, knows, wheel)]], [f(alice, knows, wheel), f(carol, knows, wheel), f(wheel, knows, alice), f(wheel, knows, carol)]).
io(191, holds, [[f(car, part_of, carol)], f(piston, part_of, alice)], error("existence_error(procedure,cases:holds/3)")).
io(192, why, [[f(carol, part_of, piston), f(bob, part_of, alice), f(engine, part_of, wheel)], f(bob, part_of, alice)], [f(bob, part_of, alice)]).
io(193, closure, [[f(piston, part_of, wheel), f(engine, knows, piston), f(carol, part_of, car), f(piston, part_of, bob), f(wheel, knows, piston), f(wheel, part_of, car)]], [f(carol, part_of, car), f(engine, knows, piston), f(piston, knows, engine), f(piston, knows, wheel), f(piston, part_of, bob), f(piston, part_of, car), f(piston, part_of, wheel), f(wheel, knows, piston), f(wheel, part_of, car)]).
io(194, holds, [[], f(wheel, part_of, car)], error("existence_error(procedure,cases:holds/3)")).
io(195, why, [[f(car, part_of, wheel), f(fleet, part_of, bob), f(fleet, part_of, wheel), f(fleet, knows, car), f(wheel, part_of, car)], f(fleet, part_of, wheel)], [f(fleet, part_of, wheel)]).
io(196, closure, [[f(fleet, part_of, carol), f(fleet, part_of, alice), f(carol, part_of, fleet), f(alice, knows, piston)]], [f(alice, knows, piston), f(carol, part_of, alice), f(carol, part_of, carol), f(carol, part_of, fleet), f(fleet, part_of, alice), f(fleet, part_of, carol), f(fleet, part_of, fleet), f(piston, knows, alice)]).
io(197, holds, [[f(engine, knows, bob), f(car, part_of, carol), f(car, part_of, piston), f(wheel, part_of, car)], f(carol, part_of, fleet)], error("existence_error(procedure,cases:holds/3)")).
io(198, why, [[f(car, knows, carol), f(piston, knows, engine)], f(carol, knows, car)], [f(car, knows, carol)]).
io(199, closure, [[]], []).
io(200, holds, [[f(fleet, part_of, wheel), f(alice, part_of, engine), f(engine, part_of, bob)], f(piston, knows, car)], error("existence_error(procedure,cases:holds/3)")).
