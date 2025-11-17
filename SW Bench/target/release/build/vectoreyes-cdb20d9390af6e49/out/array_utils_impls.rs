use crate::array_utils::*;
#[allow(unused_variables, unused_mut)]
mod impl_0 {
    use crate::array_utils::*;
    impl UnrollableArraySize<0usize> for ArrayUnrolledOps {
        #[inline(always)]
        fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 0usize] {
            []
        }
        #[inline(always)]
        fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 0usize], mut f: F) -> [U; 0usize] {
            let [] = arr;
            []
        }
        #[inline(always)]
        fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
            arr: [T; 0usize],
            mut f: F,
        ) -> Result<[U; 0usize], E> {
            let [] = arr;
            Ok([])
        }
        #[inline(always)]
        fn array_enumerate<T>(arr: [T; 0usize]) -> [(usize, T); 0usize] {
            let [] = arr;
            []
        }
        #[allow(clippy::let_and_return)]
        #[inline(always)]
        fn array_fold<T, U, F: FnMut(U, T) -> U>(
            arr: [T; 0usize],
            init: U,
            mut f: F,
        ) -> U {
            let acu = init;
            let [] = arr;
            acu
        }
        #[inline(always)]
        fn array_zip<T1, T2>(
            arr1: [T1; 0usize],
            arr2: [T2; 0usize],
        ) -> [(T1, T2); 0usize] {
            let [] = arr1;
            let [] = arr2;
            []
        }
        #[inline(always)]
        fn array_as_ref<T>(arr: &[T; 0usize]) -> [&T; 0usize] {
            let [] = arr;
            []
        }
        #[inline(always)]
        fn array_as_mut<T>(arr: &mut [T; 0usize]) -> [&mut T; 0usize] {
            let [] = arr;
            []
        }
    }
    impl<T> ArrayAdjacentPairs for [T; 0usize] {
        type T = T;
        type AdjacentPairs = [(T, T); 0usize];
        #[inline(always)]
        #[allow(unused_variables)]
        fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
            let this = self;
            let [] = this;
            []
        }
    }
    impl<T> EvenArrayAdjacentPairs for [T; 0usize] {
        #[inline(always)]
        fn pair_adjacent(self) -> Self::AdjacentPairs {
            let this = self;
            let [] = this;
            []
        }
    }
}
impl UnrollableArraySize<1usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 1usize] {
        let arr_0 = f(0usize);
        [arr_0]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 1usize], mut f: F) -> [U; 1usize] {
        let [arr_0] = arr;
        [f(arr_0)]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 1usize],
        mut f: F,
    ) -> Result<[U; 1usize], E> {
        let [arr_0] = arr;
        Ok([f(arr_0)?])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 1usize]) -> [(usize, T); 1usize] {
        let [arr_0] = arr;
        [(0usize, arr_0)]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 1usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0] = arr;
        let acu = f(acu, arr_0);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(arr1: [T1; 1usize], arr2: [T2; 1usize]) -> [(T1, T2); 1usize] {
        let [arr1_0] = arr1;
        let [arr2_0] = arr2;
        [(arr1_0, arr2_0)]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 1usize]) -> [&T; 1usize] {
        let [arr_0] = arr;
        [arr_0]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 1usize]) -> [&mut T; 1usize] {
        let [arr_0] = arr;
        [arr_0]
    }
}
impl<T> ArrayAdjacentPairs for [T; 1usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 1usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0] = this;
        [(this_0, fallback)]
    }
}
impl UnrollableArraySize<2usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 2usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        [arr_0, arr_1]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 2usize], mut f: F) -> [U; 2usize] {
        let [arr_0, arr_1] = arr;
        [f(arr_0), f(arr_1)]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 2usize],
        mut f: F,
    ) -> Result<[U; 2usize], E> {
        let [arr_0, arr_1] = arr;
        Ok([f(arr_0)?, f(arr_1)?])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 2usize]) -> [(usize, T); 2usize] {
        let [arr_0, arr_1] = arr;
        [(0usize, arr_0), (1usize, arr_1)]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 2usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(arr1: [T1; 2usize], arr2: [T2; 2usize]) -> [(T1, T2); 2usize] {
        let [arr1_0, arr1_1] = arr1;
        let [arr2_0, arr2_1] = arr2;
        [(arr1_0, arr2_0), (arr1_1, arr2_1)]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 2usize]) -> [&T; 2usize] {
        let [arr_0, arr_1] = arr;
        [arr_0, arr_1]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 2usize]) -> [&mut T; 2usize] {
        let [arr_0, arr_1] = arr;
        [arr_0, arr_1]
    }
}
impl<T> ArrayAdjacentPairs for [T; 2usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 1usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1] = this;
        [(this_0, this_1)]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 2usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1] = this;
        [(this_0, this_1)]
    }
}
impl UnrollableArraySize<3usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 3usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        [arr_0, arr_1, arr_2]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 3usize], mut f: F) -> [U; 3usize] {
        let [arr_0, arr_1, arr_2] = arr;
        [f(arr_0), f(arr_1), f(arr_2)]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 3usize],
        mut f: F,
    ) -> Result<[U; 3usize], E> {
        let [arr_0, arr_1, arr_2] = arr;
        Ok([f(arr_0)?, f(arr_1)?, f(arr_2)?])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 3usize]) -> [(usize, T); 3usize] {
        let [arr_0, arr_1, arr_2] = arr;
        [(0usize, arr_0), (1usize, arr_1), (2usize, arr_2)]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 3usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(arr1: [T1; 3usize], arr2: [T2; 3usize]) -> [(T1, T2); 3usize] {
        let [arr1_0, arr1_1, arr1_2] = arr1;
        let [arr2_0, arr2_1, arr2_2] = arr2;
        [(arr1_0, arr2_0), (arr1_1, arr2_1), (arr1_2, arr2_2)]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 3usize]) -> [&T; 3usize] {
        let [arr_0, arr_1, arr_2] = arr;
        [arr_0, arr_1, arr_2]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 3usize]) -> [&mut T; 3usize] {
        let [arr_0, arr_1, arr_2] = arr;
        [arr_0, arr_1, arr_2]
    }
}
impl<T> ArrayAdjacentPairs for [T; 3usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 2usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2] = this;
        [(this_0, this_1), (this_2, fallback)]
    }
}
impl UnrollableArraySize<4usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 4usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        [arr_0, arr_1, arr_2, arr_3]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 4usize], mut f: F) -> [U; 4usize] {
        let [arr_0, arr_1, arr_2, arr_3] = arr;
        [f(arr_0), f(arr_1), f(arr_2), f(arr_3)]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 4usize],
        mut f: F,
    ) -> Result<[U; 4usize], E> {
        let [arr_0, arr_1, arr_2, arr_3] = arr;
        Ok([f(arr_0)?, f(arr_1)?, f(arr_2)?, f(arr_3)?])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 4usize]) -> [(usize, T); 4usize] {
        let [arr_0, arr_1, arr_2, arr_3] = arr;
        [(0usize, arr_0), (1usize, arr_1), (2usize, arr_2), (3usize, arr_3)]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 4usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(arr1: [T1; 4usize], arr2: [T2; 4usize]) -> [(T1, T2); 4usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3] = arr2;
        [(arr1_0, arr2_0), (arr1_1, arr2_1), (arr1_2, arr2_2), (arr1_3, arr2_3)]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 4usize]) -> [&T; 4usize] {
        let [arr_0, arr_1, arr_2, arr_3] = arr;
        [arr_0, arr_1, arr_2, arr_3]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 4usize]) -> [&mut T; 4usize] {
        let [arr_0, arr_1, arr_2, arr_3] = arr;
        [arr_0, arr_1, arr_2, arr_3]
    }
}
impl<T> ArrayAdjacentPairs for [T; 4usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 2usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3] = this;
        [(this_0, this_1), (this_2, this_3)]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 4usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3] = this;
        [(this_0, this_1), (this_2, this_3)]
    }
}
impl UnrollableArraySize<5usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 5usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        [arr_0, arr_1, arr_2, arr_3, arr_4]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 5usize], mut f: F) -> [U; 5usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4] = arr;
        [f(arr_0), f(arr_1), f(arr_2), f(arr_3), f(arr_4)]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 5usize],
        mut f: F,
    ) -> Result<[U; 5usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4] = arr;
        Ok([f(arr_0)?, f(arr_1)?, f(arr_2)?, f(arr_3)?, f(arr_4)?])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 5usize]) -> [(usize, T); 5usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 5usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(arr1: [T1; 5usize], arr2: [T2; 5usize]) -> [(T1, T2); 5usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 5usize]) -> [&T; 5usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 5usize]) -> [&mut T; 5usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4]
    }
}
impl<T> ArrayAdjacentPairs for [T; 5usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 3usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4] = this;
        [(this_0, this_1), (this_2, this_3), (this_4, fallback)]
    }
}
impl UnrollableArraySize<6usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 6usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 6usize], mut f: F) -> [U; 6usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5] = arr;
        [f(arr_0), f(arr_1), f(arr_2), f(arr_3), f(arr_4), f(arr_5)]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 6usize],
        mut f: F,
    ) -> Result<[U; 6usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5] = arr;
        Ok([f(arr_0)?, f(arr_1)?, f(arr_2)?, f(arr_3)?, f(arr_4)?, f(arr_5)?])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 6usize]) -> [(usize, T); 6usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 6usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(arr1: [T1; 6usize], arr2: [T2; 6usize]) -> [(T1, T2); 6usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 6usize]) -> [&T; 6usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 6usize]) -> [&mut T; 6usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5]
    }
}
impl<T> ArrayAdjacentPairs for [T; 6usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 3usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5] = this;
        [(this_0, this_1), (this_2, this_3), (this_4, this_5)]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 6usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5] = this;
        [(this_0, this_1), (this_2, this_3), (this_4, this_5)]
    }
}
impl UnrollableArraySize<7usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 7usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 7usize], mut f: F) -> [U; 7usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6] = arr;
        [f(arr_0), f(arr_1), f(arr_2), f(arr_3), f(arr_4), f(arr_5), f(arr_6)]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 7usize],
        mut f: F,
    ) -> Result<[U; 7usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6] = arr;
        Ok([f(arr_0)?, f(arr_1)?, f(arr_2)?, f(arr_3)?, f(arr_4)?, f(arr_5)?, f(arr_6)?])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 7usize]) -> [(usize, T); 7usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 7usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(arr1: [T1; 7usize], arr2: [T2; 7usize]) -> [(T1, T2); 7usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 7usize]) -> [&T; 7usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 7usize]) -> [&mut T; 7usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6]
    }
}
impl<T> ArrayAdjacentPairs for [T; 7usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 4usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6] = this;
        [(this_0, this_1), (this_2, this_3), (this_4, this_5), (this_6, fallback)]
    }
}
impl UnrollableArraySize<8usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 8usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 8usize], mut f: F) -> [U; 8usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7] = arr;
        [f(arr_0), f(arr_1), f(arr_2), f(arr_3), f(arr_4), f(arr_5), f(arr_6), f(arr_7)]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 8usize],
        mut f: F,
    ) -> Result<[U; 8usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 8usize]) -> [(usize, T); 8usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 8usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(arr1: [T1; 8usize], arr2: [T2; 8usize]) -> [(T1, T2); 8usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 8usize]) -> [&T; 8usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 8usize]) -> [&mut T; 8usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7]
    }
}
impl<T> ArrayAdjacentPairs for [T; 8usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 4usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7] = this;
        [(this_0, this_1), (this_2, this_3), (this_4, this_5), (this_6, this_7)]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 8usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7] = this;
        [(this_0, this_1), (this_2, this_3), (this_4, this_5), (this_6, this_7)]
    }
}
impl UnrollableArraySize<9usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 9usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 9usize], mut f: F) -> [U; 9usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 9usize],
        mut f: F,
    ) -> Result<[U; 9usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 9usize]) -> [(usize, T); 9usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 9usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(arr1: [T1; 9usize], arr2: [T2; 9usize]) -> [(T1, T2); 9usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 9usize]) -> [&T; 9usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 9usize]) -> [&mut T; 9usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8]
    }
}
impl<T> ArrayAdjacentPairs for [T; 9usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 5usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, fallback),
        ]
    }
}
impl UnrollableArraySize<10usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 10usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 10usize], mut f: F) -> [U; 10usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 10usize],
        mut f: F,
    ) -> Result<[U; 10usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 10usize]) -> [(usize, T); 10usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 10usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 10usize],
        arr2: [T2; 10usize],
    ) -> [(T1, T2); 10usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 10usize]) -> [&T; 10usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 10usize]) -> [&mut T; 10usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9]
    }
}
impl<T> ArrayAdjacentPairs for [T; 10usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 5usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
        ]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 10usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
        ]
    }
}
impl UnrollableArraySize<11usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 11usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9, arr_10]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 11usize], mut f: F) -> [U; 11usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9, arr_10,
        ] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 11usize],
        mut f: F,
    ) -> Result<[U; 11usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9, arr_10,
        ] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 11usize]) -> [(usize, T); 11usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9, arr_10,
        ] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 11usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9, arr_10,
        ] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 11usize],
        arr2: [T2; 11usize],
    ) -> [(T1, T2); 11usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 11usize]) -> [&T; 11usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9, arr_10,
        ] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9, arr_10]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 11usize]) -> [&mut T; 11usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9, arr_10,
        ] = arr;
        [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9, arr_10]
    }
}
impl<T> ArrayAdjacentPairs for [T; 11usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 6usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, fallback),
        ]
    }
}
impl UnrollableArraySize<12usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 12usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 12usize], mut f: F) -> [U; 12usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 12usize],
        mut f: F,
    ) -> Result<[U; 12usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 12usize]) -> [(usize, T); 12usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 12usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 12usize],
        arr2: [T2; 12usize],
    ) -> [(T1, T2); 12usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 12usize]) -> [&T; 12usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 12usize]) -> [&mut T; 12usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 12usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 6usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
        ]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 12usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
        ]
    }
}
impl UnrollableArraySize<13usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 13usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 13usize], mut f: F) -> [U; 13usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 13usize],
        mut f: F,
    ) -> Result<[U; 13usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 13usize]) -> [(usize, T); 13usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 13usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 13usize],
        arr2: [T2; 13usize],
    ) -> [(T1, T2); 13usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 13usize]) -> [&T; 13usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 13usize]) -> [&mut T; 13usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 13usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 7usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, fallback),
        ]
    }
}
impl UnrollableArraySize<14usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 14usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 14usize], mut f: F) -> [U; 14usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 14usize],
        mut f: F,
    ) -> Result<[U; 14usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 14usize]) -> [(usize, T); 14usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 14usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 14usize],
        arr2: [T2; 14usize],
    ) -> [(T1, T2); 14usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 14usize]) -> [&T; 14usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 14usize]) -> [&mut T; 14usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 14usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 7usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
        ]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 14usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
        ]
    }
}
impl UnrollableArraySize<15usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 15usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 15usize], mut f: F) -> [U; 15usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 15usize],
        mut f: F,
    ) -> Result<[U; 15usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 15usize]) -> [(usize, T); 15usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 15usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 15usize],
        arr2: [T2; 15usize],
    ) -> [(T1, T2); 15usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 15usize]) -> [&T; 15usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 15usize]) -> [&mut T; 15usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 15usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 8usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, fallback),
        ]
    }
}
impl UnrollableArraySize<16usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 16usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 16usize], mut f: F) -> [U; 16usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 16usize],
        mut f: F,
    ) -> Result<[U; 16usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 16usize]) -> [(usize, T); 16usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 16usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 16usize],
        arr2: [T2; 16usize],
    ) -> [(T1, T2); 16usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 16usize]) -> [&T; 16usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 16usize]) -> [&mut T; 16usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 16usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 8usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
        ]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 16usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
        ]
    }
}
impl UnrollableArraySize<17usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 17usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 17usize], mut f: F) -> [U; 17usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 17usize],
        mut f: F,
    ) -> Result<[U; 17usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 17usize]) -> [(usize, T); 17usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 17usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 17usize],
        arr2: [T2; 17usize],
    ) -> [(T1, T2); 17usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 17usize]) -> [&T; 17usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 17usize]) -> [&mut T; 17usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 17usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 9usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, fallback),
        ]
    }
}
impl UnrollableArraySize<18usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 18usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 18usize], mut f: F) -> [U; 18usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 18usize],
        mut f: F,
    ) -> Result<[U; 18usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 18usize]) -> [(usize, T); 18usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 18usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 18usize],
        arr2: [T2; 18usize],
    ) -> [(T1, T2); 18usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        ] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        ] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 18usize]) -> [&T; 18usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 18usize]) -> [&mut T; 18usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 18usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 9usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        ] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
        ]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 18usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        ] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
        ]
    }
}
impl UnrollableArraySize<19usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 19usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 19usize], mut f: F) -> [U; 19usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 19usize],
        mut f: F,
    ) -> Result<[U; 19usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 19usize]) -> [(usize, T); 19usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 19usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 19usize],
        arr2: [T2; 19usize],
    ) -> [(T1, T2); 19usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 19usize]) -> [&T; 19usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 19usize]) -> [&mut T; 19usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 19usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 10usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, fallback),
        ]
    }
}
impl UnrollableArraySize<20usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 20usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 20usize], mut f: F) -> [U; 20usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        ] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 20usize],
        mut f: F,
    ) -> Result<[U; 20usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        ] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 20usize]) -> [(usize, T); 20usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        ] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 20usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        ] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 20usize],
        arr2: [T2; 20usize],
    ) -> [(T1, T2); 20usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 20usize]) -> [&T; 20usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        ] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 20usize]) -> [&mut T; 20usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        ] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 20usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 10usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
        ]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 20usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
        ]
    }
}
impl UnrollableArraySize<21usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 21usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        let arr_20 = f(20usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 21usize], mut f: F) -> [U; 21usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
            f(arr_20),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 21usize],
        mut f: F,
    ) -> Result<[U; 21usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
            f(arr_20)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 21usize]) -> [(usize, T); 21usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
            (20usize, arr_20),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 21usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        let acu = f(acu, arr_20);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 21usize],
        arr2: [T2; 21usize],
    ) -> [(T1, T2); 21usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19, arr1_20] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19, arr2_20] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
            (arr1_20, arr2_20),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 21usize]) -> [&T; 21usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 21usize]) -> [&mut T; 21usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 21usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 11usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, fallback),
        ]
    }
}
impl UnrollableArraySize<22usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 22usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        let arr_20 = f(20usize);
        let arr_21 = f(21usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 22usize], mut f: F) -> [U; 22usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
            f(arr_20),
            f(arr_21),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 22usize],
        mut f: F,
    ) -> Result<[U; 22usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
            f(arr_20)?,
            f(arr_21)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 22usize]) -> [(usize, T); 22usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
            (20usize, arr_20),
            (21usize, arr_21),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 22usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        let acu = f(acu, arr_20);
        let acu = f(acu, arr_21);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 22usize],
        arr2: [T2; 22usize],
    ) -> [(T1, T2); 22usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19, arr1_20, arr1_21] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19, arr2_20, arr2_21] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
            (arr1_20, arr2_20),
            (arr1_21, arr2_21),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 22usize]) -> [&T; 22usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 22usize]) -> [&mut T; 22usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 22usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 11usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
        ]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 22usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
        ]
    }
}
impl UnrollableArraySize<23usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 23usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        let arr_20 = f(20usize);
        let arr_21 = f(21usize);
        let arr_22 = f(22usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 23usize], mut f: F) -> [U; 23usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
            f(arr_20),
            f(arr_21),
            f(arr_22),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 23usize],
        mut f: F,
    ) -> Result<[U; 23usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
            f(arr_20)?,
            f(arr_21)?,
            f(arr_22)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 23usize]) -> [(usize, T); 23usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
            (20usize, arr_20),
            (21usize, arr_21),
            (22usize, arr_22),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 23usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        let acu = f(acu, arr_20);
        let acu = f(acu, arr_21);
        let acu = f(acu, arr_22);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 23usize],
        arr2: [T2; 23usize],
    ) -> [(T1, T2); 23usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19, arr1_20, arr1_21, arr1_22] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19, arr2_20, arr2_21, arr2_22] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
            (arr1_20, arr2_20),
            (arr1_21, arr2_21),
            (arr1_22, arr2_22),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 23usize]) -> [&T; 23usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 23usize]) -> [&mut T; 23usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 23usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 12usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, fallback),
        ]
    }
}
impl UnrollableArraySize<24usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 24usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        let arr_20 = f(20usize);
        let arr_21 = f(21usize);
        let arr_22 = f(22usize);
        let arr_23 = f(23usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 24usize], mut f: F) -> [U; 24usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
            f(arr_20),
            f(arr_21),
            f(arr_22),
            f(arr_23),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 24usize],
        mut f: F,
    ) -> Result<[U; 24usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
            f(arr_20)?,
            f(arr_21)?,
            f(arr_22)?,
            f(arr_23)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 24usize]) -> [(usize, T); 24usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
            (20usize, arr_20),
            (21usize, arr_21),
            (22usize, arr_22),
            (23usize, arr_23),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 24usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        let acu = f(acu, arr_20);
        let acu = f(acu, arr_21);
        let acu = f(acu, arr_22);
        let acu = f(acu, arr_23);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 24usize],
        arr2: [T2; 24usize],
    ) -> [(T1, T2); 24usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19, arr1_20, arr1_21, arr1_22, arr1_23] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19, arr2_20, arr2_21, arr2_22, arr2_23] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
            (arr1_20, arr2_20),
            (arr1_21, arr2_21),
            (arr1_22, arr2_22),
            (arr1_23, arr2_23),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 24usize]) -> [&T; 24usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 24usize]) -> [&mut T; 24usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 24usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 12usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
        ]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 24usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
        ]
    }
}
impl UnrollableArraySize<25usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 25usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        let arr_20 = f(20usize);
        let arr_21 = f(21usize);
        let arr_22 = f(22usize);
        let arr_23 = f(23usize);
        let arr_24 = f(24usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 25usize], mut f: F) -> [U; 25usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
            f(arr_20),
            f(arr_21),
            f(arr_22),
            f(arr_23),
            f(arr_24),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 25usize],
        mut f: F,
    ) -> Result<[U; 25usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
            f(arr_20)?,
            f(arr_21)?,
            f(arr_22)?,
            f(arr_23)?,
            f(arr_24)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 25usize]) -> [(usize, T); 25usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
            (20usize, arr_20),
            (21usize, arr_21),
            (22usize, arr_22),
            (23usize, arr_23),
            (24usize, arr_24),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 25usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        let acu = f(acu, arr_20);
        let acu = f(acu, arr_21);
        let acu = f(acu, arr_22);
        let acu = f(acu, arr_23);
        let acu = f(acu, arr_24);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 25usize],
        arr2: [T2; 25usize],
    ) -> [(T1, T2); 25usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19, arr1_20, arr1_21, arr1_22, arr1_23, arr1_24] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19, arr2_20, arr2_21, arr2_22, arr2_23, arr2_24] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
            (arr1_20, arr2_20),
            (arr1_21, arr2_21),
            (arr1_22, arr2_22),
            (arr1_23, arr2_23),
            (arr1_24, arr2_24),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 25usize]) -> [&T; 25usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 25usize]) -> [&mut T; 25usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 25usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 13usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23, this_24] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
            (this_24, fallback),
        ]
    }
}
impl UnrollableArraySize<26usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 26usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        let arr_20 = f(20usize);
        let arr_21 = f(21usize);
        let arr_22 = f(22usize);
        let arr_23 = f(23usize);
        let arr_24 = f(24usize);
        let arr_25 = f(25usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 26usize], mut f: F) -> [U; 26usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
            f(arr_20),
            f(arr_21),
            f(arr_22),
            f(arr_23),
            f(arr_24),
            f(arr_25),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 26usize],
        mut f: F,
    ) -> Result<[U; 26usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
            f(arr_20)?,
            f(arr_21)?,
            f(arr_22)?,
            f(arr_23)?,
            f(arr_24)?,
            f(arr_25)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 26usize]) -> [(usize, T); 26usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
            (20usize, arr_20),
            (21usize, arr_21),
            (22usize, arr_22),
            (23usize, arr_23),
            (24usize, arr_24),
            (25usize, arr_25),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 26usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        let acu = f(acu, arr_20);
        let acu = f(acu, arr_21);
        let acu = f(acu, arr_22);
        let acu = f(acu, arr_23);
        let acu = f(acu, arr_24);
        let acu = f(acu, arr_25);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 26usize],
        arr2: [T2; 26usize],
    ) -> [(T1, T2); 26usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19, arr1_20, arr1_21, arr1_22, arr1_23, arr1_24, arr1_25] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19, arr2_20, arr2_21, arr2_22, arr2_23, arr2_24, arr2_25] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
            (arr1_20, arr2_20),
            (arr1_21, arr2_21),
            (arr1_22, arr2_22),
            (arr1_23, arr2_23),
            (arr1_24, arr2_24),
            (arr1_25, arr2_25),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 26usize]) -> [&T; 26usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 26usize]) -> [&mut T; 26usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 26usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 13usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23, this_24, this_25] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
            (this_24, this_25),
        ]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 26usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23, this_24, this_25] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
            (this_24, this_25),
        ]
    }
}
impl UnrollableArraySize<27usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 27usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        let arr_20 = f(20usize);
        let arr_21 = f(21usize);
        let arr_22 = f(22usize);
        let arr_23 = f(23usize);
        let arr_24 = f(24usize);
        let arr_25 = f(25usize);
        let arr_26 = f(26usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 27usize], mut f: F) -> [U; 27usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
            f(arr_20),
            f(arr_21),
            f(arr_22),
            f(arr_23),
            f(arr_24),
            f(arr_25),
            f(arr_26),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 27usize],
        mut f: F,
    ) -> Result<[U; 27usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
            f(arr_20)?,
            f(arr_21)?,
            f(arr_22)?,
            f(arr_23)?,
            f(arr_24)?,
            f(arr_25)?,
            f(arr_26)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 27usize]) -> [(usize, T); 27usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
            (20usize, arr_20),
            (21usize, arr_21),
            (22usize, arr_22),
            (23usize, arr_23),
            (24usize, arr_24),
            (25usize, arr_25),
            (26usize, arr_26),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 27usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        let acu = f(acu, arr_20);
        let acu = f(acu, arr_21);
        let acu = f(acu, arr_22);
        let acu = f(acu, arr_23);
        let acu = f(acu, arr_24);
        let acu = f(acu, arr_25);
        let acu = f(acu, arr_26);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 27usize],
        arr2: [T2; 27usize],
    ) -> [(T1, T2); 27usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19, arr1_20, arr1_21, arr1_22, arr1_23, arr1_24, arr1_25, arr1_26,
        ] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19, arr2_20, arr2_21, arr2_22, arr2_23, arr2_24, arr2_25, arr2_26,
        ] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
            (arr1_20, arr2_20),
            (arr1_21, arr2_21),
            (arr1_22, arr2_22),
            (arr1_23, arr2_23),
            (arr1_24, arr2_24),
            (arr1_25, arr2_25),
            (arr1_26, arr2_26),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 27usize]) -> [&T; 27usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 27usize]) -> [&mut T; 27usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 27usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 14usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23, this_24, this_25, this_26,
        ] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
            (this_24, this_25),
            (this_26, fallback),
        ]
    }
}
impl UnrollableArraySize<28usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 28usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        let arr_20 = f(20usize);
        let arr_21 = f(21usize);
        let arr_22 = f(22usize);
        let arr_23 = f(23usize);
        let arr_24 = f(24usize);
        let arr_25 = f(25usize);
        let arr_26 = f(26usize);
        let arr_27 = f(27usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 28usize], mut f: F) -> [U; 28usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
            f(arr_20),
            f(arr_21),
            f(arr_22),
            f(arr_23),
            f(arr_24),
            f(arr_25),
            f(arr_26),
            f(arr_27),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 28usize],
        mut f: F,
    ) -> Result<[U; 28usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
            f(arr_20)?,
            f(arr_21)?,
            f(arr_22)?,
            f(arr_23)?,
            f(arr_24)?,
            f(arr_25)?,
            f(arr_26)?,
            f(arr_27)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 28usize]) -> [(usize, T); 28usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
            (20usize, arr_20),
            (21usize, arr_21),
            (22usize, arr_22),
            (23usize, arr_23),
            (24usize, arr_24),
            (25usize, arr_25),
            (26usize, arr_26),
            (27usize, arr_27),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 28usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        let acu = f(acu, arr_20);
        let acu = f(acu, arr_21);
        let acu = f(acu, arr_22);
        let acu = f(acu, arr_23);
        let acu = f(acu, arr_24);
        let acu = f(acu, arr_25);
        let acu = f(acu, arr_26);
        let acu = f(acu, arr_27);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 28usize],
        arr2: [T2; 28usize],
    ) -> [(T1, T2); 28usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19, arr1_20, arr1_21, arr1_22, arr1_23, arr1_24, arr1_25, arr1_26,
        arr1_27] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19, arr2_20, arr2_21, arr2_22, arr2_23, arr2_24, arr2_25, arr2_26,
        arr2_27] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
            (arr1_20, arr2_20),
            (arr1_21, arr2_21),
            (arr1_22, arr2_22),
            (arr1_23, arr2_23),
            (arr1_24, arr2_24),
            (arr1_25, arr2_25),
            (arr1_26, arr2_26),
            (arr1_27, arr2_27),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 28usize]) -> [&T; 28usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 28usize]) -> [&mut T; 28usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 28usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 14usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23, this_24, this_25, this_26,
        this_27] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
            (this_24, this_25),
            (this_26, this_27),
        ]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 28usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23, this_24, this_25, this_26,
        this_27] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
            (this_24, this_25),
            (this_26, this_27),
        ]
    }
}
impl UnrollableArraySize<29usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 29usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        let arr_20 = f(20usize);
        let arr_21 = f(21usize);
        let arr_22 = f(22usize);
        let arr_23 = f(23usize);
        let arr_24 = f(24usize);
        let arr_25 = f(25usize);
        let arr_26 = f(26usize);
        let arr_27 = f(27usize);
        let arr_28 = f(28usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
            arr_28,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 29usize], mut f: F) -> [U; 29usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
            f(arr_20),
            f(arr_21),
            f(arr_22),
            f(arr_23),
            f(arr_24),
            f(arr_25),
            f(arr_26),
            f(arr_27),
            f(arr_28),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 29usize],
        mut f: F,
    ) -> Result<[U; 29usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
            f(arr_20)?,
            f(arr_21)?,
            f(arr_22)?,
            f(arr_23)?,
            f(arr_24)?,
            f(arr_25)?,
            f(arr_26)?,
            f(arr_27)?,
            f(arr_28)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 29usize]) -> [(usize, T); 29usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
            (20usize, arr_20),
            (21usize, arr_21),
            (22usize, arr_22),
            (23usize, arr_23),
            (24usize, arr_24),
            (25usize, arr_25),
            (26usize, arr_26),
            (27usize, arr_27),
            (28usize, arr_28),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 29usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        let acu = f(acu, arr_20);
        let acu = f(acu, arr_21);
        let acu = f(acu, arr_22);
        let acu = f(acu, arr_23);
        let acu = f(acu, arr_24);
        let acu = f(acu, arr_25);
        let acu = f(acu, arr_26);
        let acu = f(acu, arr_27);
        let acu = f(acu, arr_28);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 29usize],
        arr2: [T2; 29usize],
    ) -> [(T1, T2); 29usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19, arr1_20, arr1_21, arr1_22, arr1_23, arr1_24, arr1_25, arr1_26,
        arr1_27, arr1_28] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19, arr2_20, arr2_21, arr2_22, arr2_23, arr2_24, arr2_25, arr2_26,
        arr2_27, arr2_28] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
            (arr1_20, arr2_20),
            (arr1_21, arr2_21),
            (arr1_22, arr2_22),
            (arr1_23, arr2_23),
            (arr1_24, arr2_24),
            (arr1_25, arr2_25),
            (arr1_26, arr2_26),
            (arr1_27, arr2_27),
            (arr1_28, arr2_28),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 29usize]) -> [&T; 29usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
            arr_28,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 29usize]) -> [&mut T; 29usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
            arr_28,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 29usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 15usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23, this_24, this_25, this_26,
        this_27, this_28] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
            (this_24, this_25),
            (this_26, this_27),
            (this_28, fallback),
        ]
    }
}
impl UnrollableArraySize<30usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 30usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        let arr_20 = f(20usize);
        let arr_21 = f(21usize);
        let arr_22 = f(22usize);
        let arr_23 = f(23usize);
        let arr_24 = f(24usize);
        let arr_25 = f(25usize);
        let arr_26 = f(26usize);
        let arr_27 = f(27usize);
        let arr_28 = f(28usize);
        let arr_29 = f(29usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
            arr_28,
            arr_29,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 30usize], mut f: F) -> [U; 30usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        ] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
            f(arr_20),
            f(arr_21),
            f(arr_22),
            f(arr_23),
            f(arr_24),
            f(arr_25),
            f(arr_26),
            f(arr_27),
            f(arr_28),
            f(arr_29),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 30usize],
        mut f: F,
    ) -> Result<[U; 30usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        ] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
            f(arr_20)?,
            f(arr_21)?,
            f(arr_22)?,
            f(arr_23)?,
            f(arr_24)?,
            f(arr_25)?,
            f(arr_26)?,
            f(arr_27)?,
            f(arr_28)?,
            f(arr_29)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 30usize]) -> [(usize, T); 30usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        ] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
            (20usize, arr_20),
            (21usize, arr_21),
            (22usize, arr_22),
            (23usize, arr_23),
            (24usize, arr_24),
            (25usize, arr_25),
            (26usize, arr_26),
            (27usize, arr_27),
            (28usize, arr_28),
            (29usize, arr_29),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 30usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        ] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        let acu = f(acu, arr_20);
        let acu = f(acu, arr_21);
        let acu = f(acu, arr_22);
        let acu = f(acu, arr_23);
        let acu = f(acu, arr_24);
        let acu = f(acu, arr_25);
        let acu = f(acu, arr_26);
        let acu = f(acu, arr_27);
        let acu = f(acu, arr_28);
        let acu = f(acu, arr_29);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 30usize],
        arr2: [T2; 30usize],
    ) -> [(T1, T2); 30usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19, arr1_20, arr1_21, arr1_22, arr1_23, arr1_24, arr1_25, arr1_26,
        arr1_27, arr1_28, arr1_29] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19, arr2_20, arr2_21, arr2_22, arr2_23, arr2_24, arr2_25, arr2_26,
        arr2_27, arr2_28, arr2_29] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
            (arr1_20, arr2_20),
            (arr1_21, arr2_21),
            (arr1_22, arr2_22),
            (arr1_23, arr2_23),
            (arr1_24, arr2_24),
            (arr1_25, arr2_25),
            (arr1_26, arr2_26),
            (arr1_27, arr2_27),
            (arr1_28, arr2_28),
            (arr1_29, arr2_29),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 30usize]) -> [&T; 30usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        ] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
            arr_28,
            arr_29,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 30usize]) -> [&mut T; 30usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        ] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
            arr_28,
            arr_29,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 30usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 15usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23, this_24, this_25, this_26,
        this_27, this_28, this_29] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
            (this_24, this_25),
            (this_26, this_27),
            (this_28, this_29),
        ]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 30usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23, this_24, this_25, this_26,
        this_27, this_28, this_29] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
            (this_24, this_25),
            (this_26, this_27),
            (this_28, this_29),
        ]
    }
}
impl UnrollableArraySize<31usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 31usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        let arr_20 = f(20usize);
        let arr_21 = f(21usize);
        let arr_22 = f(22usize);
        let arr_23 = f(23usize);
        let arr_24 = f(24usize);
        let arr_25 = f(25usize);
        let arr_26 = f(26usize);
        let arr_27 = f(27usize);
        let arr_28 = f(28usize);
        let arr_29 = f(29usize);
        let arr_30 = f(30usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
            arr_28,
            arr_29,
            arr_30,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 31usize], mut f: F) -> [U; 31usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        arr_30] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
            f(arr_20),
            f(arr_21),
            f(arr_22),
            f(arr_23),
            f(arr_24),
            f(arr_25),
            f(arr_26),
            f(arr_27),
            f(arr_28),
            f(arr_29),
            f(arr_30),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 31usize],
        mut f: F,
    ) -> Result<[U; 31usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        arr_30] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
            f(arr_20)?,
            f(arr_21)?,
            f(arr_22)?,
            f(arr_23)?,
            f(arr_24)?,
            f(arr_25)?,
            f(arr_26)?,
            f(arr_27)?,
            f(arr_28)?,
            f(arr_29)?,
            f(arr_30)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 31usize]) -> [(usize, T); 31usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        arr_30] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
            (20usize, arr_20),
            (21usize, arr_21),
            (22usize, arr_22),
            (23usize, arr_23),
            (24usize, arr_24),
            (25usize, arr_25),
            (26usize, arr_26),
            (27usize, arr_27),
            (28usize, arr_28),
            (29usize, arr_29),
            (30usize, arr_30),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 31usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        arr_30] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        let acu = f(acu, arr_20);
        let acu = f(acu, arr_21);
        let acu = f(acu, arr_22);
        let acu = f(acu, arr_23);
        let acu = f(acu, arr_24);
        let acu = f(acu, arr_25);
        let acu = f(acu, arr_26);
        let acu = f(acu, arr_27);
        let acu = f(acu, arr_28);
        let acu = f(acu, arr_29);
        let acu = f(acu, arr_30);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 31usize],
        arr2: [T2; 31usize],
    ) -> [(T1, T2); 31usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19, arr1_20, arr1_21, arr1_22, arr1_23, arr1_24, arr1_25, arr1_26,
        arr1_27, arr1_28, arr1_29, arr1_30] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19, arr2_20, arr2_21, arr2_22, arr2_23, arr2_24, arr2_25, arr2_26,
        arr2_27, arr2_28, arr2_29, arr2_30] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
            (arr1_20, arr2_20),
            (arr1_21, arr2_21),
            (arr1_22, arr2_22),
            (arr1_23, arr2_23),
            (arr1_24, arr2_24),
            (arr1_25, arr2_25),
            (arr1_26, arr2_26),
            (arr1_27, arr2_27),
            (arr1_28, arr2_28),
            (arr1_29, arr2_29),
            (arr1_30, arr2_30),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 31usize]) -> [&T; 31usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        arr_30] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
            arr_28,
            arr_29,
            arr_30,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 31usize]) -> [&mut T; 31usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        arr_30] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
            arr_28,
            arr_29,
            arr_30,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 31usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 16usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23, this_24, this_25, this_26,
        this_27, this_28, this_29, this_30] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
            (this_24, this_25),
            (this_26, this_27),
            (this_28, this_29),
            (this_30, fallback),
        ]
    }
}
impl UnrollableArraySize<32usize> for ArrayUnrolledOps {
    #[inline(always)]
    fn array_generate<T, F: FnMut(usize) -> T>(mut f: F) -> [T; 32usize] {
        let arr_0 = f(0usize);
        let arr_1 = f(1usize);
        let arr_2 = f(2usize);
        let arr_3 = f(3usize);
        let arr_4 = f(4usize);
        let arr_5 = f(5usize);
        let arr_6 = f(6usize);
        let arr_7 = f(7usize);
        let arr_8 = f(8usize);
        let arr_9 = f(9usize);
        let arr_10 = f(10usize);
        let arr_11 = f(11usize);
        let arr_12 = f(12usize);
        let arr_13 = f(13usize);
        let arr_14 = f(14usize);
        let arr_15 = f(15usize);
        let arr_16 = f(16usize);
        let arr_17 = f(17usize);
        let arr_18 = f(18usize);
        let arr_19 = f(19usize);
        let arr_20 = f(20usize);
        let arr_21 = f(21usize);
        let arr_22 = f(22usize);
        let arr_23 = f(23usize);
        let arr_24 = f(24usize);
        let arr_25 = f(25usize);
        let arr_26 = f(26usize);
        let arr_27 = f(27usize);
        let arr_28 = f(28usize);
        let arr_29 = f(29usize);
        let arr_30 = f(30usize);
        let arr_31 = f(31usize);
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
            arr_28,
            arr_29,
            arr_30,
            arr_31,
        ]
    }
    #[inline(always)]
    fn array_map<T, U, F: FnMut(T) -> U>(arr: [T; 32usize], mut f: F) -> [U; 32usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        arr_30, arr_31] = arr;
        [
            f(arr_0),
            f(arr_1),
            f(arr_2),
            f(arr_3),
            f(arr_4),
            f(arr_5),
            f(arr_6),
            f(arr_7),
            f(arr_8),
            f(arr_9),
            f(arr_10),
            f(arr_11),
            f(arr_12),
            f(arr_13),
            f(arr_14),
            f(arr_15),
            f(arr_16),
            f(arr_17),
            f(arr_18),
            f(arr_19),
            f(arr_20),
            f(arr_21),
            f(arr_22),
            f(arr_23),
            f(arr_24),
            f(arr_25),
            f(arr_26),
            f(arr_27),
            f(arr_28),
            f(arr_29),
            f(arr_30),
            f(arr_31),
        ]
    }
    #[inline(always)]
    fn array_map_result<T, U, E, F: FnMut(T) -> Result<U, E>>(
        arr: [T; 32usize],
        mut f: F,
    ) -> Result<[U; 32usize], E> {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        arr_30, arr_31] = arr;
        Ok([
            f(arr_0)?,
            f(arr_1)?,
            f(arr_2)?,
            f(arr_3)?,
            f(arr_4)?,
            f(arr_5)?,
            f(arr_6)?,
            f(arr_7)?,
            f(arr_8)?,
            f(arr_9)?,
            f(arr_10)?,
            f(arr_11)?,
            f(arr_12)?,
            f(arr_13)?,
            f(arr_14)?,
            f(arr_15)?,
            f(arr_16)?,
            f(arr_17)?,
            f(arr_18)?,
            f(arr_19)?,
            f(arr_20)?,
            f(arr_21)?,
            f(arr_22)?,
            f(arr_23)?,
            f(arr_24)?,
            f(arr_25)?,
            f(arr_26)?,
            f(arr_27)?,
            f(arr_28)?,
            f(arr_29)?,
            f(arr_30)?,
            f(arr_31)?,
        ])
    }
    #[inline(always)]
    fn array_enumerate<T>(arr: [T; 32usize]) -> [(usize, T); 32usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        arr_30, arr_31] = arr;
        [
            (0usize, arr_0),
            (1usize, arr_1),
            (2usize, arr_2),
            (3usize, arr_3),
            (4usize, arr_4),
            (5usize, arr_5),
            (6usize, arr_6),
            (7usize, arr_7),
            (8usize, arr_8),
            (9usize, arr_9),
            (10usize, arr_10),
            (11usize, arr_11),
            (12usize, arr_12),
            (13usize, arr_13),
            (14usize, arr_14),
            (15usize, arr_15),
            (16usize, arr_16),
            (17usize, arr_17),
            (18usize, arr_18),
            (19usize, arr_19),
            (20usize, arr_20),
            (21usize, arr_21),
            (22usize, arr_22),
            (23usize, arr_23),
            (24usize, arr_24),
            (25usize, arr_25),
            (26usize, arr_26),
            (27usize, arr_27),
            (28usize, arr_28),
            (29usize, arr_29),
            (30usize, arr_30),
            (31usize, arr_31),
        ]
    }
    #[allow(clippy::let_and_return)]
    #[inline(always)]
    fn array_fold<T, U, F: FnMut(U, T) -> U>(arr: [T; 32usize], init: U, mut f: F) -> U {
        let acu = init;
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        arr_30, arr_31] = arr;
        let acu = f(acu, arr_0);
        let acu = f(acu, arr_1);
        let acu = f(acu, arr_2);
        let acu = f(acu, arr_3);
        let acu = f(acu, arr_4);
        let acu = f(acu, arr_5);
        let acu = f(acu, arr_6);
        let acu = f(acu, arr_7);
        let acu = f(acu, arr_8);
        let acu = f(acu, arr_9);
        let acu = f(acu, arr_10);
        let acu = f(acu, arr_11);
        let acu = f(acu, arr_12);
        let acu = f(acu, arr_13);
        let acu = f(acu, arr_14);
        let acu = f(acu, arr_15);
        let acu = f(acu, arr_16);
        let acu = f(acu, arr_17);
        let acu = f(acu, arr_18);
        let acu = f(acu, arr_19);
        let acu = f(acu, arr_20);
        let acu = f(acu, arr_21);
        let acu = f(acu, arr_22);
        let acu = f(acu, arr_23);
        let acu = f(acu, arr_24);
        let acu = f(acu, arr_25);
        let acu = f(acu, arr_26);
        let acu = f(acu, arr_27);
        let acu = f(acu, arr_28);
        let acu = f(acu, arr_29);
        let acu = f(acu, arr_30);
        let acu = f(acu, arr_31);
        acu
    }
    #[inline(always)]
    fn array_zip<T1, T2>(
        arr1: [T1; 32usize],
        arr2: [T2; 32usize],
    ) -> [(T1, T2); 32usize] {
        let [arr1_0, arr1_1, arr1_2, arr1_3, arr1_4, arr1_5, arr1_6, arr1_7, arr1_8,
        arr1_9, arr1_10, arr1_11, arr1_12, arr1_13, arr1_14, arr1_15, arr1_16, arr1_17,
        arr1_18, arr1_19, arr1_20, arr1_21, arr1_22, arr1_23, arr1_24, arr1_25, arr1_26,
        arr1_27, arr1_28, arr1_29, arr1_30, arr1_31] = arr1;
        let [arr2_0, arr2_1, arr2_2, arr2_3, arr2_4, arr2_5, arr2_6, arr2_7, arr2_8,
        arr2_9, arr2_10, arr2_11, arr2_12, arr2_13, arr2_14, arr2_15, arr2_16, arr2_17,
        arr2_18, arr2_19, arr2_20, arr2_21, arr2_22, arr2_23, arr2_24, arr2_25, arr2_26,
        arr2_27, arr2_28, arr2_29, arr2_30, arr2_31] = arr2;
        [
            (arr1_0, arr2_0),
            (arr1_1, arr2_1),
            (arr1_2, arr2_2),
            (arr1_3, arr2_3),
            (arr1_4, arr2_4),
            (arr1_5, arr2_5),
            (arr1_6, arr2_6),
            (arr1_7, arr2_7),
            (arr1_8, arr2_8),
            (arr1_9, arr2_9),
            (arr1_10, arr2_10),
            (arr1_11, arr2_11),
            (arr1_12, arr2_12),
            (arr1_13, arr2_13),
            (arr1_14, arr2_14),
            (arr1_15, arr2_15),
            (arr1_16, arr2_16),
            (arr1_17, arr2_17),
            (arr1_18, arr2_18),
            (arr1_19, arr2_19),
            (arr1_20, arr2_20),
            (arr1_21, arr2_21),
            (arr1_22, arr2_22),
            (arr1_23, arr2_23),
            (arr1_24, arr2_24),
            (arr1_25, arr2_25),
            (arr1_26, arr2_26),
            (arr1_27, arr2_27),
            (arr1_28, arr2_28),
            (arr1_29, arr2_29),
            (arr1_30, arr2_30),
            (arr1_31, arr2_31),
        ]
    }
    #[inline(always)]
    fn array_as_ref<T>(arr: &[T; 32usize]) -> [&T; 32usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        arr_30, arr_31] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
            arr_28,
            arr_29,
            arr_30,
            arr_31,
        ]
    }
    #[inline(always)]
    fn array_as_mut<T>(arr: &mut [T; 32usize]) -> [&mut T; 32usize] {
        let [arr_0, arr_1, arr_2, arr_3, arr_4, arr_5, arr_6, arr_7, arr_8, arr_9,
        arr_10, arr_11, arr_12, arr_13, arr_14, arr_15, arr_16, arr_17, arr_18, arr_19,
        arr_20, arr_21, arr_22, arr_23, arr_24, arr_25, arr_26, arr_27, arr_28, arr_29,
        arr_30, arr_31] = arr;
        [
            arr_0,
            arr_1,
            arr_2,
            arr_3,
            arr_4,
            arr_5,
            arr_6,
            arr_7,
            arr_8,
            arr_9,
            arr_10,
            arr_11,
            arr_12,
            arr_13,
            arr_14,
            arr_15,
            arr_16,
            arr_17,
            arr_18,
            arr_19,
            arr_20,
            arr_21,
            arr_22,
            arr_23,
            arr_24,
            arr_25,
            arr_26,
            arr_27,
            arr_28,
            arr_29,
            arr_30,
            arr_31,
        ]
    }
}
impl<T> ArrayAdjacentPairs for [T; 32usize] {
    type T = T;
    type AdjacentPairs = [(T, T); 16usize];
    #[inline(always)]
    #[allow(unused_variables)]
    fn pair_adjacent_maybe_odd(self, fallback: T) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23, this_24, this_25, this_26,
        this_27, this_28, this_29, this_30, this_31] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
            (this_24, this_25),
            (this_26, this_27),
            (this_28, this_29),
            (this_30, this_31),
        ]
    }
}
impl<T> EvenArrayAdjacentPairs for [T; 32usize] {
    #[inline(always)]
    fn pair_adjacent(self) -> Self::AdjacentPairs {
        let this = self;
        let [this_0, this_1, this_2, this_3, this_4, this_5, this_6, this_7, this_8,
        this_9, this_10, this_11, this_12, this_13, this_14, this_15, this_16, this_17,
        this_18, this_19, this_20, this_21, this_22, this_23, this_24, this_25, this_26,
        this_27, this_28, this_29, this_30, this_31] = this;
        [
            (this_0, this_1),
            (this_2, this_3),
            (this_4, this_5),
            (this_6, this_7),
            (this_8, this_9),
            (this_10, this_11),
            (this_12, this_13),
            (this_14, this_15),
            (this_16, this_17),
            (this_18, this_19),
            (this_20, this_21),
            (this_22, this_23),
            (this_24, this_25),
            (this_26, this_27),
            (this_28, this_29),
            (this_30, this_31),
        ]
    }
}
