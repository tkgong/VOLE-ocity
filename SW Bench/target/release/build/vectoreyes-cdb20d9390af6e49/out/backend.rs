pub(crate) const fn current_vector_backend() -> crate::VectorBackend {
    #[cfg(
        all(
            all(
                target_arch = "x86_64",
                target_feature = "avx",
                target_feature = "avx2",
                target_feature = "sse4.1",
                target_feature = "aes",
                target_feature = "sse4.2",
                target_feature = "ssse3",
                target_feature = "pclmulqdq"
            ),
            not(any())
        )
    )] { crate::VectorBackend::Avx2 }
    #[cfg(
        all(
            all(
                target_arch = "aarch64",
                target_feature = "neon",
                target_feature = "aes"
            ),
            not(
                any(
                    all(
                        target_arch = "x86_64",
                        target_feature = "avx",
                        target_feature = "avx2",
                        target_feature = "sse4.1",
                        target_feature = "aes",
                        target_feature = "sse4.2",
                        target_feature = "ssse3",
                        target_feature = "pclmulqdq"
                    ),
                    any()
                )
            )
        )
    )] { crate::VectorBackend::Neon }
    #[cfg(
        all(
            all(),
            not(
                any(
                    all(
                        target_arch = "aarch64",
                        target_feature = "neon",
                        target_feature = "aes"
                    ),
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )
    )] { crate::VectorBackend::Scalar }
}
pub(crate) fn vector_backend_check_cpu() {
    #[cfg(
        all(
            all(
                target_arch = "x86_64",
                target_feature = "avx",
                target_feature = "avx2",
                target_feature = "sse4.1",
                target_feature = "aes",
                target_feature = "sse4.2",
                target_feature = "ssse3",
                target_feature = "pclmulqdq"
            ),
            not(any())
        )
    )]
    {
        assert!(
            std::is_x86_feature_detected!("avx"),
            "This binary was compiled assuming {:?}, but the current CPU doesn't support that",
            "avx",
        );
        assert!(
            std::is_x86_feature_detected!("avx2"),
            "This binary was compiled assuming {:?}, but the current CPU doesn't support that",
            "avx2",
        );
        assert!(
            std::is_x86_feature_detected!("sse4.1"),
            "This binary was compiled assuming {:?}, but the current CPU doesn't support that",
            "sse4.1",
        );
        assert!(
            std::is_x86_feature_detected!("aes"),
            "This binary was compiled assuming {:?}, but the current CPU doesn't support that",
            "aes",
        );
        assert!(
            std::is_x86_feature_detected!("sse4.2"),
            "This binary was compiled assuming {:?}, but the current CPU doesn't support that",
            "sse4.2",
        );
        assert!(
            std::is_x86_feature_detected!("ssse3"),
            "This binary was compiled assuming {:?}, but the current CPU doesn't support that",
            "ssse3",
        );
        assert!(
            std::is_x86_feature_detected!("pclmulqdq"),
            "This binary was compiled assuming {:?}, but the current CPU doesn't support that",
            "pclmulqdq",
        );
    }
    #[cfg(
        all(
            all(
                target_arch = "aarch64",
                target_feature = "neon",
                target_feature = "aes"
            ),
            not(
                any(
                    all(
                        target_arch = "x86_64",
                        target_feature = "avx",
                        target_feature = "avx2",
                        target_feature = "sse4.1",
                        target_feature = "aes",
                        target_feature = "sse4.2",
                        target_feature = "ssse3",
                        target_feature = "pclmulqdq"
                    ),
                    any()
                )
            )
        )
    )]
    {
        assert!(
            std::arch::is_aarch64_feature_detected!("neon"),
            "This binary was compiled assuming {:?}, but the current CPU doesn't support that",
            "neon",
        );
        assert!(
            std::arch::is_aarch64_feature_detected!("aes"),
            "This binary was compiled assuming {:?}, but the current CPU doesn't support that",
            "aes",
        );
    }
    #[cfg(
        all(
            all(),
            not(
                any(
                    all(
                        target_arch = "aarch64",
                        target_feature = "neon",
                        target_feature = "aes"
                    ),
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )
    )] {}
}
#[cfg(
    all(
        all(
            target_arch = "x86_64",
            target_feature = "avx",
            target_feature = "avx2",
            target_feature = "sse4.1",
            target_feature = "aes",
            target_feature = "sse4.2",
            target_feature = "ssse3",
            target_feature = "pclmulqdq"
        ),
        not(any())
    )
)]
mod internals {
    pub(super) type U8x16Internal = std::arch::x86_64::__m128i;
    pub(super) type U8x32Internal = std::arch::x86_64::__m256i;
    pub(super) type I8x16Internal = std::arch::x86_64::__m128i;
    pub(super) type I8x32Internal = std::arch::x86_64::__m256i;
    pub(super) type U16x8Internal = std::arch::x86_64::__m128i;
    pub(super) type U16x16Internal = std::arch::x86_64::__m256i;
    pub(super) type I16x8Internal = std::arch::x86_64::__m128i;
    pub(super) type I16x16Internal = std::arch::x86_64::__m256i;
    pub(super) type U32x4Internal = std::arch::x86_64::__m128i;
    pub(super) type U32x8Internal = std::arch::x86_64::__m256i;
    pub(super) type I32x4Internal = std::arch::x86_64::__m128i;
    pub(super) type I32x8Internal = std::arch::x86_64::__m256i;
    pub(super) type U64x2Internal = std::arch::x86_64::__m128i;
    pub(super) type U64x4Internal = std::arch::x86_64::__m256i;
    pub(super) type I64x2Internal = std::arch::x86_64::__m128i;
    pub(super) type I64x4Internal = std::arch::x86_64::__m256i;
}
#[cfg(
    all(
        all(target_arch = "aarch64", target_feature = "neon", target_feature = "aes"),
        not(
            any(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                any()
            )
        )
    )
)]
mod internals {
    pub(super) type U8x16Internal = [std::arch::aarch64::uint8x16_t; 1usize];
    pub(super) type U8x32Internal = [std::arch::aarch64::uint8x16_t; 2usize];
    pub(super) type I8x16Internal = [std::arch::aarch64::int8x16_t; 1usize];
    pub(super) type I8x32Internal = [std::arch::aarch64::int8x16_t; 2usize];
    pub(super) type U16x8Internal = [std::arch::aarch64::uint16x8_t; 1usize];
    pub(super) type U16x16Internal = [std::arch::aarch64::uint16x8_t; 2usize];
    pub(super) type I16x8Internal = [std::arch::aarch64::int16x8_t; 1usize];
    pub(super) type I16x16Internal = [std::arch::aarch64::int16x8_t; 2usize];
    pub(super) type U32x4Internal = [std::arch::aarch64::uint32x4_t; 1usize];
    pub(super) type U32x8Internal = [std::arch::aarch64::uint32x4_t; 2usize];
    pub(super) type I32x4Internal = [std::arch::aarch64::int32x4_t; 1usize];
    pub(super) type I32x8Internal = [std::arch::aarch64::int32x4_t; 2usize];
    pub(super) type U64x2Internal = [std::arch::aarch64::uint64x2_t; 1usize];
    pub(super) type U64x4Internal = [std::arch::aarch64::uint64x2_t; 2usize];
    pub(super) type I64x2Internal = [std::arch::aarch64::int64x2_t; 1usize];
    pub(super) type I64x4Internal = [std::arch::aarch64::int64x2_t; 2usize];
}
#[cfg(
    all(
        all(),
        not(
            any(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                any(
                    all(
                        target_arch = "x86_64",
                        target_feature = "avx",
                        target_feature = "avx2",
                        target_feature = "sse4.1",
                        target_feature = "aes",
                        target_feature = "sse4.2",
                        target_feature = "ssse3",
                        target_feature = "pclmulqdq"
                    ),
                    any()
                )
            )
        )
    )
)]
mod internals {
    pub(super) type U8x16Internal = [u8; 16usize];
    pub(super) type U8x32Internal = [u8; 32usize];
    pub(super) type I8x16Internal = [i8; 16usize];
    pub(super) type I8x32Internal = [i8; 32usize];
    pub(super) type U16x8Internal = [u16; 8usize];
    pub(super) type U16x16Internal = [u16; 16usize];
    pub(super) type I16x8Internal = [i16; 8usize];
    pub(super) type I16x16Internal = [i16; 16usize];
    pub(super) type U32x4Internal = [u32; 4usize];
    pub(super) type U32x8Internal = [u32; 8usize];
    pub(super) type I32x4Internal = [i32; 4usize];
    pub(super) type I32x8Internal = [i32; 8usize];
    pub(super) type U64x2Internal = [u64; 2usize];
    pub(super) type U64x4Internal = [u64; 4usize];
    pub(super) type I64x2Internal = [i64; 2usize];
    pub(super) type I64x4Internal = [i64; 4usize];
}
use internals::*;
impl From<[u8; 16usize]> for U8x16 {
    #[inline(always)]
    fn from(arr: [u8; 16usize]) -> U8x16 {
        bytemuck::cast(arr)
    }
}
impl From<U8x16> for [u8; 16usize] {
    #[inline(always)]
    fn from(arr: U8x16) -> [u8; 16usize] {
        bytemuck::cast(arr)
    }
}
impl U8x16 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: U8x16 = U8x16::from_array([
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as u8, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [u8; 16usize]) -> Self {
        unsafe { std::mem::transmute::<[u8; 16usize], U8x16>(arr) }
    }
}
impl serde::Serialize for U8x16 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[u8; 16usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for U8x16 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[u8; 16usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for U8x16 {
    type Output = U8x16;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
U8x16::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
    self.as_array()[4].wrapping_add(rhs.as_array()[4]),
    self.as_array()[5].wrapping_add(rhs.as_array()[5]),
    self.as_array()[6].wrapping_add(rhs.as_array()[6]),
    self.as_array()[7].wrapping_add(rhs.as_array()[7]),
    self.as_array()[8].wrapping_add(rhs.as_array()[8]),
    self.as_array()[9].wrapping_add(rhs.as_array()[9]),
    self.as_array()[10].wrapping_add(rhs.as_array()[10]),
    self.as_array()[11].wrapping_add(rhs.as_array()[11]),
    self.as_array()[12].wrapping_add(rhs.as_array()[12]),
    self.as_array()[13].wrapping_add(rhs.as_array()[13]),
    self.as_array()[14].wrapping_add(rhs.as_array()[14]),
    self.as_array()[15].wrapping_add(rhs.as_array()[15]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_add_epi8`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_add_epi8)
    - `PADDB xmm, xmm`
# Neon Intrinsics Used

* [`vaddq_u8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_u8)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: U8x16) -> U8x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U8x16(std::arch::x86_64::_mm_add_epi8(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U8x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_u8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U8x16::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
                self.as_array()[4].wrapping_add(rhs.as_array()[4]),
                self.as_array()[5].wrapping_add(rhs.as_array()[5]),
                self.as_array()[6].wrapping_add(rhs.as_array()[6]),
                self.as_array()[7].wrapping_add(rhs.as_array()[7]),
                self.as_array()[8].wrapping_add(rhs.as_array()[8]),
                self.as_array()[9].wrapping_add(rhs.as_array()[9]),
                self.as_array()[10].wrapping_add(rhs.as_array()[10]),
                self.as_array()[11].wrapping_add(rhs.as_array()[11]),
                self.as_array()[12].wrapping_add(rhs.as_array()[12]),
                self.as_array()[13].wrapping_add(rhs.as_array()[13]),
                self.as_array()[14].wrapping_add(rhs.as_array()[14]),
                self.as_array()[15].wrapping_add(rhs.as_array()[15]),
            ])
        }
    }
}
impl std::ops::AddAssign for U8x16 {
    #[inline(always)]
    fn add_assign(&mut self, other: U8x16) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for U8x16 {
    type Output = U8x16;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
U8x16::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
    self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
    self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
    self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
    self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
    self.as_array()[8].wrapping_sub(rhs.as_array()[8]),
    self.as_array()[9].wrapping_sub(rhs.as_array()[9]),
    self.as_array()[10].wrapping_sub(rhs.as_array()[10]),
    self.as_array()[11].wrapping_sub(rhs.as_array()[11]),
    self.as_array()[12].wrapping_sub(rhs.as_array()[12]),
    self.as_array()[13].wrapping_sub(rhs.as_array()[13]),
    self.as_array()[14].wrapping_sub(rhs.as_array()[14]),
    self.as_array()[15].wrapping_sub(rhs.as_array()[15]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_sub_epi8`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_sub_epi8)
    - `PSUBB xmm, xmm`
# Neon Intrinsics Used

* [`vsubq_u8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_u8)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: U8x16) -> U8x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U8x16(std::arch::x86_64::_mm_sub_epi8(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U8x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_u8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U8x16::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
                self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
                self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
                self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
                self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
                self.as_array()[8].wrapping_sub(rhs.as_array()[8]),
                self.as_array()[9].wrapping_sub(rhs.as_array()[9]),
                self.as_array()[10].wrapping_sub(rhs.as_array()[10]),
                self.as_array()[11].wrapping_sub(rhs.as_array()[11]),
                self.as_array()[12].wrapping_sub(rhs.as_array()[12]),
                self.as_array()[13].wrapping_sub(rhs.as_array()[13]),
                self.as_array()[14].wrapping_sub(rhs.as_array()[14]),
                self.as_array()[15].wrapping_sub(rhs.as_array()[15]),
            ])
        }
    }
}
impl std::ops::SubAssign for U8x16 {
    #[inline(always)]
    fn sub_assign(&mut self, other: U8x16) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for U8x16 {
    type Output = U8x16;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
U8x16::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
    self.as_array()[4] | rhs.as_array()[4],
    self.as_array()[5] | rhs.as_array()[5],
    self.as_array()[6] | rhs.as_array()[6],
    self.as_array()[7] | rhs.as_array()[7],
    self.as_array()[8] | rhs.as_array()[8],
    self.as_array()[9] | rhs.as_array()[9],
    self.as_array()[10] | rhs.as_array()[10],
    self.as_array()[11] | rhs.as_array()[11],
    self.as_array()[12] | rhs.as_array()[12],
    self.as_array()[13] | rhs.as_array()[13],
    self.as_array()[14] | rhs.as_array()[14],
    self.as_array()[15] | rhs.as_array()[15],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_or_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_or_si128)
    - `POR xmm, xmm`
# Neon Intrinsics Used

* [`vorrq_u8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_u8)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: U8x16) -> U8x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U8x16(std::arch::x86_64::_mm_or_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U8x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_u8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U8x16::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
                self.as_array()[4] | rhs.as_array()[4],
                self.as_array()[5] | rhs.as_array()[5],
                self.as_array()[6] | rhs.as_array()[6],
                self.as_array()[7] | rhs.as_array()[7],
                self.as_array()[8] | rhs.as_array()[8],
                self.as_array()[9] | rhs.as_array()[9],
                self.as_array()[10] | rhs.as_array()[10],
                self.as_array()[11] | rhs.as_array()[11],
                self.as_array()[12] | rhs.as_array()[12],
                self.as_array()[13] | rhs.as_array()[13],
                self.as_array()[14] | rhs.as_array()[14],
                self.as_array()[15] | rhs.as_array()[15],
            ])
        }
    }
}
impl std::ops::BitOrAssign for U8x16 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: U8x16) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for U8x16 {
    type Output = U8x16;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
U8x16::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
    self.as_array()[4] ^ rhs.as_array()[4],
    self.as_array()[5] ^ rhs.as_array()[5],
    self.as_array()[6] ^ rhs.as_array()[6],
    self.as_array()[7] ^ rhs.as_array()[7],
    self.as_array()[8] ^ rhs.as_array()[8],
    self.as_array()[9] ^ rhs.as_array()[9],
    self.as_array()[10] ^ rhs.as_array()[10],
    self.as_array()[11] ^ rhs.as_array()[11],
    self.as_array()[12] ^ rhs.as_array()[12],
    self.as_array()[13] ^ rhs.as_array()[13],
    self.as_array()[14] ^ rhs.as_array()[14],
    self.as_array()[15] ^ rhs.as_array()[15],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_xor_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_xor_si128)
    - `PXOR xmm, xmm`
# Neon Intrinsics Used

* [`veorq_u8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_u8)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: U8x16) -> U8x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U8x16(std::arch::x86_64::_mm_xor_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U8x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_u8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U8x16::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
                self.as_array()[4] ^ rhs.as_array()[4],
                self.as_array()[5] ^ rhs.as_array()[5],
                self.as_array()[6] ^ rhs.as_array()[6],
                self.as_array()[7] ^ rhs.as_array()[7],
                self.as_array()[8] ^ rhs.as_array()[8],
                self.as_array()[9] ^ rhs.as_array()[9],
                self.as_array()[10] ^ rhs.as_array()[10],
                self.as_array()[11] ^ rhs.as_array()[11],
                self.as_array()[12] ^ rhs.as_array()[12],
                self.as_array()[13] ^ rhs.as_array()[13],
                self.as_array()[14] ^ rhs.as_array()[14],
                self.as_array()[15] ^ rhs.as_array()[15],
            ])
        }
    }
}
impl std::ops::BitXorAssign for U8x16 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: U8x16) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for U8x16 {
    type Output = U8x16;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
U8x16::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
    self.as_array()[4] & rhs.as_array()[4],
    self.as_array()[5] & rhs.as_array()[5],
    self.as_array()[6] & rhs.as_array()[6],
    self.as_array()[7] & rhs.as_array()[7],
    self.as_array()[8] & rhs.as_array()[8],
    self.as_array()[9] & rhs.as_array()[9],
    self.as_array()[10] & rhs.as_array()[10],
    self.as_array()[11] & rhs.as_array()[11],
    self.as_array()[12] & rhs.as_array()[12],
    self.as_array()[13] & rhs.as_array()[13],
    self.as_array()[14] & rhs.as_array()[14],
    self.as_array()[15] & rhs.as_array()[15],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_and_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_and_si128)
    - `PAND xmm, xmm`
# Neon Intrinsics Used

* [`vandq_u8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_u8)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: U8x16) -> U8x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U8x16(std::arch::x86_64::_mm_and_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U8x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_u8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U8x16::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
                self.as_array()[4] & rhs.as_array()[4],
                self.as_array()[5] & rhs.as_array()[5],
                self.as_array()[6] & rhs.as_array()[6],
                self.as_array()[7] & rhs.as_array()[7],
                self.as_array()[8] & rhs.as_array()[8],
                self.as_array()[9] & rhs.as_array()[9],
                self.as_array()[10] & rhs.as_array()[10],
                self.as_array()[11] & rhs.as_array()[11],
                self.as_array()[12] & rhs.as_array()[12],
                self.as_array()[13] & rhs.as_array()[13],
                self.as_array()[14] & rhs.as_array()[14],
                self.as_array()[15] & rhs.as_array()[15],
            ])
        }
    }
}
impl std::ops::BitAndAssign for U8x16 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: U8x16) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[u8; 32usize]> for U8x32 {
    #[inline(always)]
    fn from(arr: [u8; 32usize]) -> U8x32 {
        bytemuck::cast(arr)
    }
}
impl From<U8x32> for [u8; 32usize] {
    #[inline(always)]
    fn from(arr: U8x32) -> [u8; 32usize] {
        bytemuck::cast(arr)
    }
}
impl U8x32 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: U8x32 = U8x32::from_array([
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
    23, 24, 25, 26, 27, 28, 29, 30, 31,
]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as u8, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [u8; 32usize]) -> Self {
        unsafe { std::mem::transmute::<[u8; 32usize], U8x32>(arr) }
    }
}
impl serde::Serialize for U8x32 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[u8; 32usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for U8x32 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[u8; 32usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for U8x32 {
    type Output = U8x32;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
U8x32::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
    self.as_array()[4].wrapping_add(rhs.as_array()[4]),
    self.as_array()[5].wrapping_add(rhs.as_array()[5]),
    self.as_array()[6].wrapping_add(rhs.as_array()[6]),
    self.as_array()[7].wrapping_add(rhs.as_array()[7]),
    self.as_array()[8].wrapping_add(rhs.as_array()[8]),
    self.as_array()[9].wrapping_add(rhs.as_array()[9]),
    self.as_array()[10].wrapping_add(rhs.as_array()[10]),
    self.as_array()[11].wrapping_add(rhs.as_array()[11]),
    self.as_array()[12].wrapping_add(rhs.as_array()[12]),
    self.as_array()[13].wrapping_add(rhs.as_array()[13]),
    self.as_array()[14].wrapping_add(rhs.as_array()[14]),
    self.as_array()[15].wrapping_add(rhs.as_array()[15]),
    self.as_array()[16].wrapping_add(rhs.as_array()[16]),
    self.as_array()[17].wrapping_add(rhs.as_array()[17]),
    self.as_array()[18].wrapping_add(rhs.as_array()[18]),
    self.as_array()[19].wrapping_add(rhs.as_array()[19]),
    self.as_array()[20].wrapping_add(rhs.as_array()[20]),
    self.as_array()[21].wrapping_add(rhs.as_array()[21]),
    self.as_array()[22].wrapping_add(rhs.as_array()[22]),
    self.as_array()[23].wrapping_add(rhs.as_array()[23]),
    self.as_array()[24].wrapping_add(rhs.as_array()[24]),
    self.as_array()[25].wrapping_add(rhs.as_array()[25]),
    self.as_array()[26].wrapping_add(rhs.as_array()[26]),
    self.as_array()[27].wrapping_add(rhs.as_array()[27]),
    self.as_array()[28].wrapping_add(rhs.as_array()[28]),
    self.as_array()[29].wrapping_add(rhs.as_array()[29]),
    self.as_array()[30].wrapping_add(rhs.as_array()[30]),
    self.as_array()[31].wrapping_add(rhs.as_array()[31]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_add_epi8`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_add_epi8)
    - `VPADDB ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vaddq_u8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_u8)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: U8x32) -> U8x32 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U8x32(std::arch::x86_64::_mm256_add_epi8(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U8x32(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_u8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U8x32::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
                self.as_array()[4].wrapping_add(rhs.as_array()[4]),
                self.as_array()[5].wrapping_add(rhs.as_array()[5]),
                self.as_array()[6].wrapping_add(rhs.as_array()[6]),
                self.as_array()[7].wrapping_add(rhs.as_array()[7]),
                self.as_array()[8].wrapping_add(rhs.as_array()[8]),
                self.as_array()[9].wrapping_add(rhs.as_array()[9]),
                self.as_array()[10].wrapping_add(rhs.as_array()[10]),
                self.as_array()[11].wrapping_add(rhs.as_array()[11]),
                self.as_array()[12].wrapping_add(rhs.as_array()[12]),
                self.as_array()[13].wrapping_add(rhs.as_array()[13]),
                self.as_array()[14].wrapping_add(rhs.as_array()[14]),
                self.as_array()[15].wrapping_add(rhs.as_array()[15]),
                self.as_array()[16].wrapping_add(rhs.as_array()[16]),
                self.as_array()[17].wrapping_add(rhs.as_array()[17]),
                self.as_array()[18].wrapping_add(rhs.as_array()[18]),
                self.as_array()[19].wrapping_add(rhs.as_array()[19]),
                self.as_array()[20].wrapping_add(rhs.as_array()[20]),
                self.as_array()[21].wrapping_add(rhs.as_array()[21]),
                self.as_array()[22].wrapping_add(rhs.as_array()[22]),
                self.as_array()[23].wrapping_add(rhs.as_array()[23]),
                self.as_array()[24].wrapping_add(rhs.as_array()[24]),
                self.as_array()[25].wrapping_add(rhs.as_array()[25]),
                self.as_array()[26].wrapping_add(rhs.as_array()[26]),
                self.as_array()[27].wrapping_add(rhs.as_array()[27]),
                self.as_array()[28].wrapping_add(rhs.as_array()[28]),
                self.as_array()[29].wrapping_add(rhs.as_array()[29]),
                self.as_array()[30].wrapping_add(rhs.as_array()[30]),
                self.as_array()[31].wrapping_add(rhs.as_array()[31]),
            ])
        }
    }
}
impl std::ops::AddAssign for U8x32 {
    #[inline(always)]
    fn add_assign(&mut self, other: U8x32) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for U8x32 {
    type Output = U8x32;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
U8x32::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
    self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
    self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
    self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
    self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
    self.as_array()[8].wrapping_sub(rhs.as_array()[8]),
    self.as_array()[9].wrapping_sub(rhs.as_array()[9]),
    self.as_array()[10].wrapping_sub(rhs.as_array()[10]),
    self.as_array()[11].wrapping_sub(rhs.as_array()[11]),
    self.as_array()[12].wrapping_sub(rhs.as_array()[12]),
    self.as_array()[13].wrapping_sub(rhs.as_array()[13]),
    self.as_array()[14].wrapping_sub(rhs.as_array()[14]),
    self.as_array()[15].wrapping_sub(rhs.as_array()[15]),
    self.as_array()[16].wrapping_sub(rhs.as_array()[16]),
    self.as_array()[17].wrapping_sub(rhs.as_array()[17]),
    self.as_array()[18].wrapping_sub(rhs.as_array()[18]),
    self.as_array()[19].wrapping_sub(rhs.as_array()[19]),
    self.as_array()[20].wrapping_sub(rhs.as_array()[20]),
    self.as_array()[21].wrapping_sub(rhs.as_array()[21]),
    self.as_array()[22].wrapping_sub(rhs.as_array()[22]),
    self.as_array()[23].wrapping_sub(rhs.as_array()[23]),
    self.as_array()[24].wrapping_sub(rhs.as_array()[24]),
    self.as_array()[25].wrapping_sub(rhs.as_array()[25]),
    self.as_array()[26].wrapping_sub(rhs.as_array()[26]),
    self.as_array()[27].wrapping_sub(rhs.as_array()[27]),
    self.as_array()[28].wrapping_sub(rhs.as_array()[28]),
    self.as_array()[29].wrapping_sub(rhs.as_array()[29]),
    self.as_array()[30].wrapping_sub(rhs.as_array()[30]),
    self.as_array()[31].wrapping_sub(rhs.as_array()[31]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_sub_epi8`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_sub_epi8)
    - `VPSUBB ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vsubq_u8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_u8)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: U8x32) -> U8x32 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U8x32(std::arch::x86_64::_mm256_sub_epi8(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U8x32(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_u8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U8x32::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
                self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
                self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
                self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
                self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
                self.as_array()[8].wrapping_sub(rhs.as_array()[8]),
                self.as_array()[9].wrapping_sub(rhs.as_array()[9]),
                self.as_array()[10].wrapping_sub(rhs.as_array()[10]),
                self.as_array()[11].wrapping_sub(rhs.as_array()[11]),
                self.as_array()[12].wrapping_sub(rhs.as_array()[12]),
                self.as_array()[13].wrapping_sub(rhs.as_array()[13]),
                self.as_array()[14].wrapping_sub(rhs.as_array()[14]),
                self.as_array()[15].wrapping_sub(rhs.as_array()[15]),
                self.as_array()[16].wrapping_sub(rhs.as_array()[16]),
                self.as_array()[17].wrapping_sub(rhs.as_array()[17]),
                self.as_array()[18].wrapping_sub(rhs.as_array()[18]),
                self.as_array()[19].wrapping_sub(rhs.as_array()[19]),
                self.as_array()[20].wrapping_sub(rhs.as_array()[20]),
                self.as_array()[21].wrapping_sub(rhs.as_array()[21]),
                self.as_array()[22].wrapping_sub(rhs.as_array()[22]),
                self.as_array()[23].wrapping_sub(rhs.as_array()[23]),
                self.as_array()[24].wrapping_sub(rhs.as_array()[24]),
                self.as_array()[25].wrapping_sub(rhs.as_array()[25]),
                self.as_array()[26].wrapping_sub(rhs.as_array()[26]),
                self.as_array()[27].wrapping_sub(rhs.as_array()[27]),
                self.as_array()[28].wrapping_sub(rhs.as_array()[28]),
                self.as_array()[29].wrapping_sub(rhs.as_array()[29]),
                self.as_array()[30].wrapping_sub(rhs.as_array()[30]),
                self.as_array()[31].wrapping_sub(rhs.as_array()[31]),
            ])
        }
    }
}
impl std::ops::SubAssign for U8x32 {
    #[inline(always)]
    fn sub_assign(&mut self, other: U8x32) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for U8x32 {
    type Output = U8x32;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
U8x32::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
    self.as_array()[4] | rhs.as_array()[4],
    self.as_array()[5] | rhs.as_array()[5],
    self.as_array()[6] | rhs.as_array()[6],
    self.as_array()[7] | rhs.as_array()[7],
    self.as_array()[8] | rhs.as_array()[8],
    self.as_array()[9] | rhs.as_array()[9],
    self.as_array()[10] | rhs.as_array()[10],
    self.as_array()[11] | rhs.as_array()[11],
    self.as_array()[12] | rhs.as_array()[12],
    self.as_array()[13] | rhs.as_array()[13],
    self.as_array()[14] | rhs.as_array()[14],
    self.as_array()[15] | rhs.as_array()[15],
    self.as_array()[16] | rhs.as_array()[16],
    self.as_array()[17] | rhs.as_array()[17],
    self.as_array()[18] | rhs.as_array()[18],
    self.as_array()[19] | rhs.as_array()[19],
    self.as_array()[20] | rhs.as_array()[20],
    self.as_array()[21] | rhs.as_array()[21],
    self.as_array()[22] | rhs.as_array()[22],
    self.as_array()[23] | rhs.as_array()[23],
    self.as_array()[24] | rhs.as_array()[24],
    self.as_array()[25] | rhs.as_array()[25],
    self.as_array()[26] | rhs.as_array()[26],
    self.as_array()[27] | rhs.as_array()[27],
    self.as_array()[28] | rhs.as_array()[28],
    self.as_array()[29] | rhs.as_array()[29],
    self.as_array()[30] | rhs.as_array()[30],
    self.as_array()[31] | rhs.as_array()[31],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_or_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_or_si256)
    - `VPOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vorrq_u8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_u8)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: U8x32) -> U8x32 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U8x32(std::arch::x86_64::_mm256_or_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U8x32(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_u8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U8x32::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
                self.as_array()[4] | rhs.as_array()[4],
                self.as_array()[5] | rhs.as_array()[5],
                self.as_array()[6] | rhs.as_array()[6],
                self.as_array()[7] | rhs.as_array()[7],
                self.as_array()[8] | rhs.as_array()[8],
                self.as_array()[9] | rhs.as_array()[9],
                self.as_array()[10] | rhs.as_array()[10],
                self.as_array()[11] | rhs.as_array()[11],
                self.as_array()[12] | rhs.as_array()[12],
                self.as_array()[13] | rhs.as_array()[13],
                self.as_array()[14] | rhs.as_array()[14],
                self.as_array()[15] | rhs.as_array()[15],
                self.as_array()[16] | rhs.as_array()[16],
                self.as_array()[17] | rhs.as_array()[17],
                self.as_array()[18] | rhs.as_array()[18],
                self.as_array()[19] | rhs.as_array()[19],
                self.as_array()[20] | rhs.as_array()[20],
                self.as_array()[21] | rhs.as_array()[21],
                self.as_array()[22] | rhs.as_array()[22],
                self.as_array()[23] | rhs.as_array()[23],
                self.as_array()[24] | rhs.as_array()[24],
                self.as_array()[25] | rhs.as_array()[25],
                self.as_array()[26] | rhs.as_array()[26],
                self.as_array()[27] | rhs.as_array()[27],
                self.as_array()[28] | rhs.as_array()[28],
                self.as_array()[29] | rhs.as_array()[29],
                self.as_array()[30] | rhs.as_array()[30],
                self.as_array()[31] | rhs.as_array()[31],
            ])
        }
    }
}
impl std::ops::BitOrAssign for U8x32 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: U8x32) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for U8x32 {
    type Output = U8x32;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
U8x32::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
    self.as_array()[4] ^ rhs.as_array()[4],
    self.as_array()[5] ^ rhs.as_array()[5],
    self.as_array()[6] ^ rhs.as_array()[6],
    self.as_array()[7] ^ rhs.as_array()[7],
    self.as_array()[8] ^ rhs.as_array()[8],
    self.as_array()[9] ^ rhs.as_array()[9],
    self.as_array()[10] ^ rhs.as_array()[10],
    self.as_array()[11] ^ rhs.as_array()[11],
    self.as_array()[12] ^ rhs.as_array()[12],
    self.as_array()[13] ^ rhs.as_array()[13],
    self.as_array()[14] ^ rhs.as_array()[14],
    self.as_array()[15] ^ rhs.as_array()[15],
    self.as_array()[16] ^ rhs.as_array()[16],
    self.as_array()[17] ^ rhs.as_array()[17],
    self.as_array()[18] ^ rhs.as_array()[18],
    self.as_array()[19] ^ rhs.as_array()[19],
    self.as_array()[20] ^ rhs.as_array()[20],
    self.as_array()[21] ^ rhs.as_array()[21],
    self.as_array()[22] ^ rhs.as_array()[22],
    self.as_array()[23] ^ rhs.as_array()[23],
    self.as_array()[24] ^ rhs.as_array()[24],
    self.as_array()[25] ^ rhs.as_array()[25],
    self.as_array()[26] ^ rhs.as_array()[26],
    self.as_array()[27] ^ rhs.as_array()[27],
    self.as_array()[28] ^ rhs.as_array()[28],
    self.as_array()[29] ^ rhs.as_array()[29],
    self.as_array()[30] ^ rhs.as_array()[30],
    self.as_array()[31] ^ rhs.as_array()[31],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_xor_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_xor_si256)
    - `VPXOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`veorq_u8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_u8)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: U8x32) -> U8x32 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U8x32(std::arch::x86_64::_mm256_xor_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U8x32(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_u8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U8x32::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
                self.as_array()[4] ^ rhs.as_array()[4],
                self.as_array()[5] ^ rhs.as_array()[5],
                self.as_array()[6] ^ rhs.as_array()[6],
                self.as_array()[7] ^ rhs.as_array()[7],
                self.as_array()[8] ^ rhs.as_array()[8],
                self.as_array()[9] ^ rhs.as_array()[9],
                self.as_array()[10] ^ rhs.as_array()[10],
                self.as_array()[11] ^ rhs.as_array()[11],
                self.as_array()[12] ^ rhs.as_array()[12],
                self.as_array()[13] ^ rhs.as_array()[13],
                self.as_array()[14] ^ rhs.as_array()[14],
                self.as_array()[15] ^ rhs.as_array()[15],
                self.as_array()[16] ^ rhs.as_array()[16],
                self.as_array()[17] ^ rhs.as_array()[17],
                self.as_array()[18] ^ rhs.as_array()[18],
                self.as_array()[19] ^ rhs.as_array()[19],
                self.as_array()[20] ^ rhs.as_array()[20],
                self.as_array()[21] ^ rhs.as_array()[21],
                self.as_array()[22] ^ rhs.as_array()[22],
                self.as_array()[23] ^ rhs.as_array()[23],
                self.as_array()[24] ^ rhs.as_array()[24],
                self.as_array()[25] ^ rhs.as_array()[25],
                self.as_array()[26] ^ rhs.as_array()[26],
                self.as_array()[27] ^ rhs.as_array()[27],
                self.as_array()[28] ^ rhs.as_array()[28],
                self.as_array()[29] ^ rhs.as_array()[29],
                self.as_array()[30] ^ rhs.as_array()[30],
                self.as_array()[31] ^ rhs.as_array()[31],
            ])
        }
    }
}
impl std::ops::BitXorAssign for U8x32 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: U8x32) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for U8x32 {
    type Output = U8x32;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
U8x32::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
    self.as_array()[4] & rhs.as_array()[4],
    self.as_array()[5] & rhs.as_array()[5],
    self.as_array()[6] & rhs.as_array()[6],
    self.as_array()[7] & rhs.as_array()[7],
    self.as_array()[8] & rhs.as_array()[8],
    self.as_array()[9] & rhs.as_array()[9],
    self.as_array()[10] & rhs.as_array()[10],
    self.as_array()[11] & rhs.as_array()[11],
    self.as_array()[12] & rhs.as_array()[12],
    self.as_array()[13] & rhs.as_array()[13],
    self.as_array()[14] & rhs.as_array()[14],
    self.as_array()[15] & rhs.as_array()[15],
    self.as_array()[16] & rhs.as_array()[16],
    self.as_array()[17] & rhs.as_array()[17],
    self.as_array()[18] & rhs.as_array()[18],
    self.as_array()[19] & rhs.as_array()[19],
    self.as_array()[20] & rhs.as_array()[20],
    self.as_array()[21] & rhs.as_array()[21],
    self.as_array()[22] & rhs.as_array()[22],
    self.as_array()[23] & rhs.as_array()[23],
    self.as_array()[24] & rhs.as_array()[24],
    self.as_array()[25] & rhs.as_array()[25],
    self.as_array()[26] & rhs.as_array()[26],
    self.as_array()[27] & rhs.as_array()[27],
    self.as_array()[28] & rhs.as_array()[28],
    self.as_array()[29] & rhs.as_array()[29],
    self.as_array()[30] & rhs.as_array()[30],
    self.as_array()[31] & rhs.as_array()[31],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_and_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_and_si256)
    - `VPAND ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vandq_u8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_u8)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: U8x32) -> U8x32 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U8x32(std::arch::x86_64::_mm256_and_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U8x32(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_u8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U8x32::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
                self.as_array()[4] & rhs.as_array()[4],
                self.as_array()[5] & rhs.as_array()[5],
                self.as_array()[6] & rhs.as_array()[6],
                self.as_array()[7] & rhs.as_array()[7],
                self.as_array()[8] & rhs.as_array()[8],
                self.as_array()[9] & rhs.as_array()[9],
                self.as_array()[10] & rhs.as_array()[10],
                self.as_array()[11] & rhs.as_array()[11],
                self.as_array()[12] & rhs.as_array()[12],
                self.as_array()[13] & rhs.as_array()[13],
                self.as_array()[14] & rhs.as_array()[14],
                self.as_array()[15] & rhs.as_array()[15],
                self.as_array()[16] & rhs.as_array()[16],
                self.as_array()[17] & rhs.as_array()[17],
                self.as_array()[18] & rhs.as_array()[18],
                self.as_array()[19] & rhs.as_array()[19],
                self.as_array()[20] & rhs.as_array()[20],
                self.as_array()[21] & rhs.as_array()[21],
                self.as_array()[22] & rhs.as_array()[22],
                self.as_array()[23] & rhs.as_array()[23],
                self.as_array()[24] & rhs.as_array()[24],
                self.as_array()[25] & rhs.as_array()[25],
                self.as_array()[26] & rhs.as_array()[26],
                self.as_array()[27] & rhs.as_array()[27],
                self.as_array()[28] & rhs.as_array()[28],
                self.as_array()[29] & rhs.as_array()[29],
                self.as_array()[30] & rhs.as_array()[30],
                self.as_array()[31] & rhs.as_array()[31],
            ])
        }
    }
}
impl std::ops::BitAndAssign for U8x32 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: U8x32) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[i8; 16usize]> for I8x16 {
    #[inline(always)]
    fn from(arr: [i8; 16usize]) -> I8x16 {
        bytemuck::cast(arr)
    }
}
impl From<I8x16> for [i8; 16usize] {
    #[inline(always)]
    fn from(arr: I8x16) -> [i8; 16usize] {
        bytemuck::cast(arr)
    }
}
impl I8x16 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: I8x16 = I8x16::from_array([
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as i8, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [i8; 16usize]) -> Self {
        unsafe { std::mem::transmute::<[i8; 16usize], I8x16>(arr) }
    }
}
impl serde::Serialize for I8x16 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[i8; 16usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for I8x16 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[i8; 16usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for I8x16 {
    type Output = I8x16;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
I8x16::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
    self.as_array()[4].wrapping_add(rhs.as_array()[4]),
    self.as_array()[5].wrapping_add(rhs.as_array()[5]),
    self.as_array()[6].wrapping_add(rhs.as_array()[6]),
    self.as_array()[7].wrapping_add(rhs.as_array()[7]),
    self.as_array()[8].wrapping_add(rhs.as_array()[8]),
    self.as_array()[9].wrapping_add(rhs.as_array()[9]),
    self.as_array()[10].wrapping_add(rhs.as_array()[10]),
    self.as_array()[11].wrapping_add(rhs.as_array()[11]),
    self.as_array()[12].wrapping_add(rhs.as_array()[12]),
    self.as_array()[13].wrapping_add(rhs.as_array()[13]),
    self.as_array()[14].wrapping_add(rhs.as_array()[14]),
    self.as_array()[15].wrapping_add(rhs.as_array()[15]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_add_epi8`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_add_epi8)
    - `PADDB xmm, xmm`
# Neon Intrinsics Used

* [`vaddq_s8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_s8)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: I8x16) -> I8x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I8x16(std::arch::x86_64::_mm_add_epi8(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I8x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_s8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I8x16::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
                self.as_array()[4].wrapping_add(rhs.as_array()[4]),
                self.as_array()[5].wrapping_add(rhs.as_array()[5]),
                self.as_array()[6].wrapping_add(rhs.as_array()[6]),
                self.as_array()[7].wrapping_add(rhs.as_array()[7]),
                self.as_array()[8].wrapping_add(rhs.as_array()[8]),
                self.as_array()[9].wrapping_add(rhs.as_array()[9]),
                self.as_array()[10].wrapping_add(rhs.as_array()[10]),
                self.as_array()[11].wrapping_add(rhs.as_array()[11]),
                self.as_array()[12].wrapping_add(rhs.as_array()[12]),
                self.as_array()[13].wrapping_add(rhs.as_array()[13]),
                self.as_array()[14].wrapping_add(rhs.as_array()[14]),
                self.as_array()[15].wrapping_add(rhs.as_array()[15]),
            ])
        }
    }
}
impl std::ops::AddAssign for I8x16 {
    #[inline(always)]
    fn add_assign(&mut self, other: I8x16) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for I8x16 {
    type Output = I8x16;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
I8x16::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
    self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
    self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
    self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
    self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
    self.as_array()[8].wrapping_sub(rhs.as_array()[8]),
    self.as_array()[9].wrapping_sub(rhs.as_array()[9]),
    self.as_array()[10].wrapping_sub(rhs.as_array()[10]),
    self.as_array()[11].wrapping_sub(rhs.as_array()[11]),
    self.as_array()[12].wrapping_sub(rhs.as_array()[12]),
    self.as_array()[13].wrapping_sub(rhs.as_array()[13]),
    self.as_array()[14].wrapping_sub(rhs.as_array()[14]),
    self.as_array()[15].wrapping_sub(rhs.as_array()[15]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_sub_epi8`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_sub_epi8)
    - `PSUBB xmm, xmm`
# Neon Intrinsics Used

* [`vsubq_s8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_s8)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: I8x16) -> I8x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I8x16(std::arch::x86_64::_mm_sub_epi8(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I8x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_s8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I8x16::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
                self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
                self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
                self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
                self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
                self.as_array()[8].wrapping_sub(rhs.as_array()[8]),
                self.as_array()[9].wrapping_sub(rhs.as_array()[9]),
                self.as_array()[10].wrapping_sub(rhs.as_array()[10]),
                self.as_array()[11].wrapping_sub(rhs.as_array()[11]),
                self.as_array()[12].wrapping_sub(rhs.as_array()[12]),
                self.as_array()[13].wrapping_sub(rhs.as_array()[13]),
                self.as_array()[14].wrapping_sub(rhs.as_array()[14]),
                self.as_array()[15].wrapping_sub(rhs.as_array()[15]),
            ])
        }
    }
}
impl std::ops::SubAssign for I8x16 {
    #[inline(always)]
    fn sub_assign(&mut self, other: I8x16) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for I8x16 {
    type Output = I8x16;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
I8x16::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
    self.as_array()[4] | rhs.as_array()[4],
    self.as_array()[5] | rhs.as_array()[5],
    self.as_array()[6] | rhs.as_array()[6],
    self.as_array()[7] | rhs.as_array()[7],
    self.as_array()[8] | rhs.as_array()[8],
    self.as_array()[9] | rhs.as_array()[9],
    self.as_array()[10] | rhs.as_array()[10],
    self.as_array()[11] | rhs.as_array()[11],
    self.as_array()[12] | rhs.as_array()[12],
    self.as_array()[13] | rhs.as_array()[13],
    self.as_array()[14] | rhs.as_array()[14],
    self.as_array()[15] | rhs.as_array()[15],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_or_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_or_si128)
    - `POR xmm, xmm`
# Neon Intrinsics Used

* [`vorrq_s8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_s8)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: I8x16) -> I8x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I8x16(std::arch::x86_64::_mm_or_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I8x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_s8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I8x16::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
                self.as_array()[4] | rhs.as_array()[4],
                self.as_array()[5] | rhs.as_array()[5],
                self.as_array()[6] | rhs.as_array()[6],
                self.as_array()[7] | rhs.as_array()[7],
                self.as_array()[8] | rhs.as_array()[8],
                self.as_array()[9] | rhs.as_array()[9],
                self.as_array()[10] | rhs.as_array()[10],
                self.as_array()[11] | rhs.as_array()[11],
                self.as_array()[12] | rhs.as_array()[12],
                self.as_array()[13] | rhs.as_array()[13],
                self.as_array()[14] | rhs.as_array()[14],
                self.as_array()[15] | rhs.as_array()[15],
            ])
        }
    }
}
impl std::ops::BitOrAssign for I8x16 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: I8x16) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for I8x16 {
    type Output = I8x16;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
I8x16::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
    self.as_array()[4] ^ rhs.as_array()[4],
    self.as_array()[5] ^ rhs.as_array()[5],
    self.as_array()[6] ^ rhs.as_array()[6],
    self.as_array()[7] ^ rhs.as_array()[7],
    self.as_array()[8] ^ rhs.as_array()[8],
    self.as_array()[9] ^ rhs.as_array()[9],
    self.as_array()[10] ^ rhs.as_array()[10],
    self.as_array()[11] ^ rhs.as_array()[11],
    self.as_array()[12] ^ rhs.as_array()[12],
    self.as_array()[13] ^ rhs.as_array()[13],
    self.as_array()[14] ^ rhs.as_array()[14],
    self.as_array()[15] ^ rhs.as_array()[15],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_xor_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_xor_si128)
    - `PXOR xmm, xmm`
# Neon Intrinsics Used

* [`veorq_s8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_s8)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: I8x16) -> I8x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I8x16(std::arch::x86_64::_mm_xor_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I8x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_s8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I8x16::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
                self.as_array()[4] ^ rhs.as_array()[4],
                self.as_array()[5] ^ rhs.as_array()[5],
                self.as_array()[6] ^ rhs.as_array()[6],
                self.as_array()[7] ^ rhs.as_array()[7],
                self.as_array()[8] ^ rhs.as_array()[8],
                self.as_array()[9] ^ rhs.as_array()[9],
                self.as_array()[10] ^ rhs.as_array()[10],
                self.as_array()[11] ^ rhs.as_array()[11],
                self.as_array()[12] ^ rhs.as_array()[12],
                self.as_array()[13] ^ rhs.as_array()[13],
                self.as_array()[14] ^ rhs.as_array()[14],
                self.as_array()[15] ^ rhs.as_array()[15],
            ])
        }
    }
}
impl std::ops::BitXorAssign for I8x16 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: I8x16) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for I8x16 {
    type Output = I8x16;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
I8x16::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
    self.as_array()[4] & rhs.as_array()[4],
    self.as_array()[5] & rhs.as_array()[5],
    self.as_array()[6] & rhs.as_array()[6],
    self.as_array()[7] & rhs.as_array()[7],
    self.as_array()[8] & rhs.as_array()[8],
    self.as_array()[9] & rhs.as_array()[9],
    self.as_array()[10] & rhs.as_array()[10],
    self.as_array()[11] & rhs.as_array()[11],
    self.as_array()[12] & rhs.as_array()[12],
    self.as_array()[13] & rhs.as_array()[13],
    self.as_array()[14] & rhs.as_array()[14],
    self.as_array()[15] & rhs.as_array()[15],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_and_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_and_si128)
    - `PAND xmm, xmm`
# Neon Intrinsics Used

* [`vandq_s8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_s8)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: I8x16) -> I8x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I8x16(std::arch::x86_64::_mm_and_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I8x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_s8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I8x16::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
                self.as_array()[4] & rhs.as_array()[4],
                self.as_array()[5] & rhs.as_array()[5],
                self.as_array()[6] & rhs.as_array()[6],
                self.as_array()[7] & rhs.as_array()[7],
                self.as_array()[8] & rhs.as_array()[8],
                self.as_array()[9] & rhs.as_array()[9],
                self.as_array()[10] & rhs.as_array()[10],
                self.as_array()[11] & rhs.as_array()[11],
                self.as_array()[12] & rhs.as_array()[12],
                self.as_array()[13] & rhs.as_array()[13],
                self.as_array()[14] & rhs.as_array()[14],
                self.as_array()[15] & rhs.as_array()[15],
            ])
        }
    }
}
impl std::ops::BitAndAssign for I8x16 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: I8x16) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[i8; 32usize]> for I8x32 {
    #[inline(always)]
    fn from(arr: [i8; 32usize]) -> I8x32 {
        bytemuck::cast(arr)
    }
}
impl From<I8x32> for [i8; 32usize] {
    #[inline(always)]
    fn from(arr: I8x32) -> [i8; 32usize] {
        bytemuck::cast(arr)
    }
}
impl I8x32 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: I8x32 = I8x32::from_array([
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
    23, 24, 25, 26, 27, 28, 29, 30, 31,
]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as i8, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [i8; 32usize]) -> Self {
        unsafe { std::mem::transmute::<[i8; 32usize], I8x32>(arr) }
    }
}
impl serde::Serialize for I8x32 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[i8; 32usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for I8x32 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[i8; 32usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for I8x32 {
    type Output = I8x32;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
I8x32::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
    self.as_array()[4].wrapping_add(rhs.as_array()[4]),
    self.as_array()[5].wrapping_add(rhs.as_array()[5]),
    self.as_array()[6].wrapping_add(rhs.as_array()[6]),
    self.as_array()[7].wrapping_add(rhs.as_array()[7]),
    self.as_array()[8].wrapping_add(rhs.as_array()[8]),
    self.as_array()[9].wrapping_add(rhs.as_array()[9]),
    self.as_array()[10].wrapping_add(rhs.as_array()[10]),
    self.as_array()[11].wrapping_add(rhs.as_array()[11]),
    self.as_array()[12].wrapping_add(rhs.as_array()[12]),
    self.as_array()[13].wrapping_add(rhs.as_array()[13]),
    self.as_array()[14].wrapping_add(rhs.as_array()[14]),
    self.as_array()[15].wrapping_add(rhs.as_array()[15]),
    self.as_array()[16].wrapping_add(rhs.as_array()[16]),
    self.as_array()[17].wrapping_add(rhs.as_array()[17]),
    self.as_array()[18].wrapping_add(rhs.as_array()[18]),
    self.as_array()[19].wrapping_add(rhs.as_array()[19]),
    self.as_array()[20].wrapping_add(rhs.as_array()[20]),
    self.as_array()[21].wrapping_add(rhs.as_array()[21]),
    self.as_array()[22].wrapping_add(rhs.as_array()[22]),
    self.as_array()[23].wrapping_add(rhs.as_array()[23]),
    self.as_array()[24].wrapping_add(rhs.as_array()[24]),
    self.as_array()[25].wrapping_add(rhs.as_array()[25]),
    self.as_array()[26].wrapping_add(rhs.as_array()[26]),
    self.as_array()[27].wrapping_add(rhs.as_array()[27]),
    self.as_array()[28].wrapping_add(rhs.as_array()[28]),
    self.as_array()[29].wrapping_add(rhs.as_array()[29]),
    self.as_array()[30].wrapping_add(rhs.as_array()[30]),
    self.as_array()[31].wrapping_add(rhs.as_array()[31]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_add_epi8`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_add_epi8)
    - `VPADDB ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vaddq_s8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_s8)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: I8x32) -> I8x32 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I8x32(std::arch::x86_64::_mm256_add_epi8(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I8x32(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_s8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I8x32::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
                self.as_array()[4].wrapping_add(rhs.as_array()[4]),
                self.as_array()[5].wrapping_add(rhs.as_array()[5]),
                self.as_array()[6].wrapping_add(rhs.as_array()[6]),
                self.as_array()[7].wrapping_add(rhs.as_array()[7]),
                self.as_array()[8].wrapping_add(rhs.as_array()[8]),
                self.as_array()[9].wrapping_add(rhs.as_array()[9]),
                self.as_array()[10].wrapping_add(rhs.as_array()[10]),
                self.as_array()[11].wrapping_add(rhs.as_array()[11]),
                self.as_array()[12].wrapping_add(rhs.as_array()[12]),
                self.as_array()[13].wrapping_add(rhs.as_array()[13]),
                self.as_array()[14].wrapping_add(rhs.as_array()[14]),
                self.as_array()[15].wrapping_add(rhs.as_array()[15]),
                self.as_array()[16].wrapping_add(rhs.as_array()[16]),
                self.as_array()[17].wrapping_add(rhs.as_array()[17]),
                self.as_array()[18].wrapping_add(rhs.as_array()[18]),
                self.as_array()[19].wrapping_add(rhs.as_array()[19]),
                self.as_array()[20].wrapping_add(rhs.as_array()[20]),
                self.as_array()[21].wrapping_add(rhs.as_array()[21]),
                self.as_array()[22].wrapping_add(rhs.as_array()[22]),
                self.as_array()[23].wrapping_add(rhs.as_array()[23]),
                self.as_array()[24].wrapping_add(rhs.as_array()[24]),
                self.as_array()[25].wrapping_add(rhs.as_array()[25]),
                self.as_array()[26].wrapping_add(rhs.as_array()[26]),
                self.as_array()[27].wrapping_add(rhs.as_array()[27]),
                self.as_array()[28].wrapping_add(rhs.as_array()[28]),
                self.as_array()[29].wrapping_add(rhs.as_array()[29]),
                self.as_array()[30].wrapping_add(rhs.as_array()[30]),
                self.as_array()[31].wrapping_add(rhs.as_array()[31]),
            ])
        }
    }
}
impl std::ops::AddAssign for I8x32 {
    #[inline(always)]
    fn add_assign(&mut self, other: I8x32) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for I8x32 {
    type Output = I8x32;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
I8x32::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
    self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
    self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
    self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
    self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
    self.as_array()[8].wrapping_sub(rhs.as_array()[8]),
    self.as_array()[9].wrapping_sub(rhs.as_array()[9]),
    self.as_array()[10].wrapping_sub(rhs.as_array()[10]),
    self.as_array()[11].wrapping_sub(rhs.as_array()[11]),
    self.as_array()[12].wrapping_sub(rhs.as_array()[12]),
    self.as_array()[13].wrapping_sub(rhs.as_array()[13]),
    self.as_array()[14].wrapping_sub(rhs.as_array()[14]),
    self.as_array()[15].wrapping_sub(rhs.as_array()[15]),
    self.as_array()[16].wrapping_sub(rhs.as_array()[16]),
    self.as_array()[17].wrapping_sub(rhs.as_array()[17]),
    self.as_array()[18].wrapping_sub(rhs.as_array()[18]),
    self.as_array()[19].wrapping_sub(rhs.as_array()[19]),
    self.as_array()[20].wrapping_sub(rhs.as_array()[20]),
    self.as_array()[21].wrapping_sub(rhs.as_array()[21]),
    self.as_array()[22].wrapping_sub(rhs.as_array()[22]),
    self.as_array()[23].wrapping_sub(rhs.as_array()[23]),
    self.as_array()[24].wrapping_sub(rhs.as_array()[24]),
    self.as_array()[25].wrapping_sub(rhs.as_array()[25]),
    self.as_array()[26].wrapping_sub(rhs.as_array()[26]),
    self.as_array()[27].wrapping_sub(rhs.as_array()[27]),
    self.as_array()[28].wrapping_sub(rhs.as_array()[28]),
    self.as_array()[29].wrapping_sub(rhs.as_array()[29]),
    self.as_array()[30].wrapping_sub(rhs.as_array()[30]),
    self.as_array()[31].wrapping_sub(rhs.as_array()[31]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_sub_epi8`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_sub_epi8)
    - `VPSUBB ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vsubq_s8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_s8)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: I8x32) -> I8x32 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I8x32(std::arch::x86_64::_mm256_sub_epi8(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I8x32(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_s8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I8x32::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
                self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
                self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
                self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
                self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
                self.as_array()[8].wrapping_sub(rhs.as_array()[8]),
                self.as_array()[9].wrapping_sub(rhs.as_array()[9]),
                self.as_array()[10].wrapping_sub(rhs.as_array()[10]),
                self.as_array()[11].wrapping_sub(rhs.as_array()[11]),
                self.as_array()[12].wrapping_sub(rhs.as_array()[12]),
                self.as_array()[13].wrapping_sub(rhs.as_array()[13]),
                self.as_array()[14].wrapping_sub(rhs.as_array()[14]),
                self.as_array()[15].wrapping_sub(rhs.as_array()[15]),
                self.as_array()[16].wrapping_sub(rhs.as_array()[16]),
                self.as_array()[17].wrapping_sub(rhs.as_array()[17]),
                self.as_array()[18].wrapping_sub(rhs.as_array()[18]),
                self.as_array()[19].wrapping_sub(rhs.as_array()[19]),
                self.as_array()[20].wrapping_sub(rhs.as_array()[20]),
                self.as_array()[21].wrapping_sub(rhs.as_array()[21]),
                self.as_array()[22].wrapping_sub(rhs.as_array()[22]),
                self.as_array()[23].wrapping_sub(rhs.as_array()[23]),
                self.as_array()[24].wrapping_sub(rhs.as_array()[24]),
                self.as_array()[25].wrapping_sub(rhs.as_array()[25]),
                self.as_array()[26].wrapping_sub(rhs.as_array()[26]),
                self.as_array()[27].wrapping_sub(rhs.as_array()[27]),
                self.as_array()[28].wrapping_sub(rhs.as_array()[28]),
                self.as_array()[29].wrapping_sub(rhs.as_array()[29]),
                self.as_array()[30].wrapping_sub(rhs.as_array()[30]),
                self.as_array()[31].wrapping_sub(rhs.as_array()[31]),
            ])
        }
    }
}
impl std::ops::SubAssign for I8x32 {
    #[inline(always)]
    fn sub_assign(&mut self, other: I8x32) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for I8x32 {
    type Output = I8x32;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
I8x32::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
    self.as_array()[4] | rhs.as_array()[4],
    self.as_array()[5] | rhs.as_array()[5],
    self.as_array()[6] | rhs.as_array()[6],
    self.as_array()[7] | rhs.as_array()[7],
    self.as_array()[8] | rhs.as_array()[8],
    self.as_array()[9] | rhs.as_array()[9],
    self.as_array()[10] | rhs.as_array()[10],
    self.as_array()[11] | rhs.as_array()[11],
    self.as_array()[12] | rhs.as_array()[12],
    self.as_array()[13] | rhs.as_array()[13],
    self.as_array()[14] | rhs.as_array()[14],
    self.as_array()[15] | rhs.as_array()[15],
    self.as_array()[16] | rhs.as_array()[16],
    self.as_array()[17] | rhs.as_array()[17],
    self.as_array()[18] | rhs.as_array()[18],
    self.as_array()[19] | rhs.as_array()[19],
    self.as_array()[20] | rhs.as_array()[20],
    self.as_array()[21] | rhs.as_array()[21],
    self.as_array()[22] | rhs.as_array()[22],
    self.as_array()[23] | rhs.as_array()[23],
    self.as_array()[24] | rhs.as_array()[24],
    self.as_array()[25] | rhs.as_array()[25],
    self.as_array()[26] | rhs.as_array()[26],
    self.as_array()[27] | rhs.as_array()[27],
    self.as_array()[28] | rhs.as_array()[28],
    self.as_array()[29] | rhs.as_array()[29],
    self.as_array()[30] | rhs.as_array()[30],
    self.as_array()[31] | rhs.as_array()[31],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_or_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_or_si256)
    - `VPOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vorrq_s8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_s8)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: I8x32) -> I8x32 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I8x32(std::arch::x86_64::_mm256_or_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I8x32(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_s8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I8x32::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
                self.as_array()[4] | rhs.as_array()[4],
                self.as_array()[5] | rhs.as_array()[5],
                self.as_array()[6] | rhs.as_array()[6],
                self.as_array()[7] | rhs.as_array()[7],
                self.as_array()[8] | rhs.as_array()[8],
                self.as_array()[9] | rhs.as_array()[9],
                self.as_array()[10] | rhs.as_array()[10],
                self.as_array()[11] | rhs.as_array()[11],
                self.as_array()[12] | rhs.as_array()[12],
                self.as_array()[13] | rhs.as_array()[13],
                self.as_array()[14] | rhs.as_array()[14],
                self.as_array()[15] | rhs.as_array()[15],
                self.as_array()[16] | rhs.as_array()[16],
                self.as_array()[17] | rhs.as_array()[17],
                self.as_array()[18] | rhs.as_array()[18],
                self.as_array()[19] | rhs.as_array()[19],
                self.as_array()[20] | rhs.as_array()[20],
                self.as_array()[21] | rhs.as_array()[21],
                self.as_array()[22] | rhs.as_array()[22],
                self.as_array()[23] | rhs.as_array()[23],
                self.as_array()[24] | rhs.as_array()[24],
                self.as_array()[25] | rhs.as_array()[25],
                self.as_array()[26] | rhs.as_array()[26],
                self.as_array()[27] | rhs.as_array()[27],
                self.as_array()[28] | rhs.as_array()[28],
                self.as_array()[29] | rhs.as_array()[29],
                self.as_array()[30] | rhs.as_array()[30],
                self.as_array()[31] | rhs.as_array()[31],
            ])
        }
    }
}
impl std::ops::BitOrAssign for I8x32 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: I8x32) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for I8x32 {
    type Output = I8x32;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
I8x32::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
    self.as_array()[4] ^ rhs.as_array()[4],
    self.as_array()[5] ^ rhs.as_array()[5],
    self.as_array()[6] ^ rhs.as_array()[6],
    self.as_array()[7] ^ rhs.as_array()[7],
    self.as_array()[8] ^ rhs.as_array()[8],
    self.as_array()[9] ^ rhs.as_array()[9],
    self.as_array()[10] ^ rhs.as_array()[10],
    self.as_array()[11] ^ rhs.as_array()[11],
    self.as_array()[12] ^ rhs.as_array()[12],
    self.as_array()[13] ^ rhs.as_array()[13],
    self.as_array()[14] ^ rhs.as_array()[14],
    self.as_array()[15] ^ rhs.as_array()[15],
    self.as_array()[16] ^ rhs.as_array()[16],
    self.as_array()[17] ^ rhs.as_array()[17],
    self.as_array()[18] ^ rhs.as_array()[18],
    self.as_array()[19] ^ rhs.as_array()[19],
    self.as_array()[20] ^ rhs.as_array()[20],
    self.as_array()[21] ^ rhs.as_array()[21],
    self.as_array()[22] ^ rhs.as_array()[22],
    self.as_array()[23] ^ rhs.as_array()[23],
    self.as_array()[24] ^ rhs.as_array()[24],
    self.as_array()[25] ^ rhs.as_array()[25],
    self.as_array()[26] ^ rhs.as_array()[26],
    self.as_array()[27] ^ rhs.as_array()[27],
    self.as_array()[28] ^ rhs.as_array()[28],
    self.as_array()[29] ^ rhs.as_array()[29],
    self.as_array()[30] ^ rhs.as_array()[30],
    self.as_array()[31] ^ rhs.as_array()[31],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_xor_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_xor_si256)
    - `VPXOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`veorq_s8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_s8)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: I8x32) -> I8x32 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I8x32(std::arch::x86_64::_mm256_xor_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I8x32(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_s8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I8x32::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
                self.as_array()[4] ^ rhs.as_array()[4],
                self.as_array()[5] ^ rhs.as_array()[5],
                self.as_array()[6] ^ rhs.as_array()[6],
                self.as_array()[7] ^ rhs.as_array()[7],
                self.as_array()[8] ^ rhs.as_array()[8],
                self.as_array()[9] ^ rhs.as_array()[9],
                self.as_array()[10] ^ rhs.as_array()[10],
                self.as_array()[11] ^ rhs.as_array()[11],
                self.as_array()[12] ^ rhs.as_array()[12],
                self.as_array()[13] ^ rhs.as_array()[13],
                self.as_array()[14] ^ rhs.as_array()[14],
                self.as_array()[15] ^ rhs.as_array()[15],
                self.as_array()[16] ^ rhs.as_array()[16],
                self.as_array()[17] ^ rhs.as_array()[17],
                self.as_array()[18] ^ rhs.as_array()[18],
                self.as_array()[19] ^ rhs.as_array()[19],
                self.as_array()[20] ^ rhs.as_array()[20],
                self.as_array()[21] ^ rhs.as_array()[21],
                self.as_array()[22] ^ rhs.as_array()[22],
                self.as_array()[23] ^ rhs.as_array()[23],
                self.as_array()[24] ^ rhs.as_array()[24],
                self.as_array()[25] ^ rhs.as_array()[25],
                self.as_array()[26] ^ rhs.as_array()[26],
                self.as_array()[27] ^ rhs.as_array()[27],
                self.as_array()[28] ^ rhs.as_array()[28],
                self.as_array()[29] ^ rhs.as_array()[29],
                self.as_array()[30] ^ rhs.as_array()[30],
                self.as_array()[31] ^ rhs.as_array()[31],
            ])
        }
    }
}
impl std::ops::BitXorAssign for I8x32 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: I8x32) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for I8x32 {
    type Output = I8x32;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
I8x32::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
    self.as_array()[4] & rhs.as_array()[4],
    self.as_array()[5] & rhs.as_array()[5],
    self.as_array()[6] & rhs.as_array()[6],
    self.as_array()[7] & rhs.as_array()[7],
    self.as_array()[8] & rhs.as_array()[8],
    self.as_array()[9] & rhs.as_array()[9],
    self.as_array()[10] & rhs.as_array()[10],
    self.as_array()[11] & rhs.as_array()[11],
    self.as_array()[12] & rhs.as_array()[12],
    self.as_array()[13] & rhs.as_array()[13],
    self.as_array()[14] & rhs.as_array()[14],
    self.as_array()[15] & rhs.as_array()[15],
    self.as_array()[16] & rhs.as_array()[16],
    self.as_array()[17] & rhs.as_array()[17],
    self.as_array()[18] & rhs.as_array()[18],
    self.as_array()[19] & rhs.as_array()[19],
    self.as_array()[20] & rhs.as_array()[20],
    self.as_array()[21] & rhs.as_array()[21],
    self.as_array()[22] & rhs.as_array()[22],
    self.as_array()[23] & rhs.as_array()[23],
    self.as_array()[24] & rhs.as_array()[24],
    self.as_array()[25] & rhs.as_array()[25],
    self.as_array()[26] & rhs.as_array()[26],
    self.as_array()[27] & rhs.as_array()[27],
    self.as_array()[28] & rhs.as_array()[28],
    self.as_array()[29] & rhs.as_array()[29],
    self.as_array()[30] & rhs.as_array()[30],
    self.as_array()[31] & rhs.as_array()[31],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_and_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_and_si256)
    - `VPAND ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vandq_s8`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_s8)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: I8x32) -> I8x32 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I8x32(std::arch::x86_64::_mm256_and_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I8x32(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_s8(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I8x32::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
                self.as_array()[4] & rhs.as_array()[4],
                self.as_array()[5] & rhs.as_array()[5],
                self.as_array()[6] & rhs.as_array()[6],
                self.as_array()[7] & rhs.as_array()[7],
                self.as_array()[8] & rhs.as_array()[8],
                self.as_array()[9] & rhs.as_array()[9],
                self.as_array()[10] & rhs.as_array()[10],
                self.as_array()[11] & rhs.as_array()[11],
                self.as_array()[12] & rhs.as_array()[12],
                self.as_array()[13] & rhs.as_array()[13],
                self.as_array()[14] & rhs.as_array()[14],
                self.as_array()[15] & rhs.as_array()[15],
                self.as_array()[16] & rhs.as_array()[16],
                self.as_array()[17] & rhs.as_array()[17],
                self.as_array()[18] & rhs.as_array()[18],
                self.as_array()[19] & rhs.as_array()[19],
                self.as_array()[20] & rhs.as_array()[20],
                self.as_array()[21] & rhs.as_array()[21],
                self.as_array()[22] & rhs.as_array()[22],
                self.as_array()[23] & rhs.as_array()[23],
                self.as_array()[24] & rhs.as_array()[24],
                self.as_array()[25] & rhs.as_array()[25],
                self.as_array()[26] & rhs.as_array()[26],
                self.as_array()[27] & rhs.as_array()[27],
                self.as_array()[28] & rhs.as_array()[28],
                self.as_array()[29] & rhs.as_array()[29],
                self.as_array()[30] & rhs.as_array()[30],
                self.as_array()[31] & rhs.as_array()[31],
            ])
        }
    }
}
impl std::ops::BitAndAssign for I8x32 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: I8x32) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[u16; 8usize]> for U16x8 {
    #[inline(always)]
    fn from(arr: [u16; 8usize]) -> U16x8 {
        bytemuck::cast(arr)
    }
}
impl From<U16x8> for [u16; 8usize] {
    #[inline(always)]
    fn from(arr: U16x8) -> [u16; 8usize] {
        bytemuck::cast(arr)
    }
}
impl U16x8 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: U16x8 = U16x8::from_array([0, 1, 2, 3, 4, 5, 6, 7]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as u16, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [u16; 8usize]) -> Self {
        unsafe { std::mem::transmute::<[u16; 8usize], U16x8>(arr) }
    }
}
impl serde::Serialize for U16x8 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[u16; 8usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for U16x8 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[u16; 8usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for U16x8 {
    type Output = U16x8;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
U16x8::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
    self.as_array()[4].wrapping_add(rhs.as_array()[4]),
    self.as_array()[5].wrapping_add(rhs.as_array()[5]),
    self.as_array()[6].wrapping_add(rhs.as_array()[6]),
    self.as_array()[7].wrapping_add(rhs.as_array()[7]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_add_epi16`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_add_epi16)
    - `PADDW xmm, xmm`
# Neon Intrinsics Used

* [`vaddq_u16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_u16)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.8H,Vn.8H,Vm.8H`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: U16x8) -> U16x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U16x8(std::arch::x86_64::_mm_add_epi16(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U16x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_u16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U16x8::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
                self.as_array()[4].wrapping_add(rhs.as_array()[4]),
                self.as_array()[5].wrapping_add(rhs.as_array()[5]),
                self.as_array()[6].wrapping_add(rhs.as_array()[6]),
                self.as_array()[7].wrapping_add(rhs.as_array()[7]),
            ])
        }
    }
}
impl std::ops::AddAssign for U16x8 {
    #[inline(always)]
    fn add_assign(&mut self, other: U16x8) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for U16x8 {
    type Output = U16x8;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
U16x8::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
    self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
    self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
    self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
    self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_sub_epi16`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_sub_epi16)
    - `PSUBW xmm, xmm`
# Neon Intrinsics Used

* [`vsubq_u16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_u16)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.8H,Vn.8H,Vm.8H`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: U16x8) -> U16x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U16x8(std::arch::x86_64::_mm_sub_epi16(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U16x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_u16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U16x8::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
                self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
                self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
                self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
                self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
            ])
        }
    }
}
impl std::ops::SubAssign for U16x8 {
    #[inline(always)]
    fn sub_assign(&mut self, other: U16x8) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for U16x8 {
    type Output = U16x8;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
U16x8::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
    self.as_array()[4] | rhs.as_array()[4],
    self.as_array()[5] | rhs.as_array()[5],
    self.as_array()[6] | rhs.as_array()[6],
    self.as_array()[7] | rhs.as_array()[7],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_or_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_or_si128)
    - `POR xmm, xmm`
# Neon Intrinsics Used

* [`vorrq_u16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_u16)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: U16x8) -> U16x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U16x8(std::arch::x86_64::_mm_or_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U16x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_u16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U16x8::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
                self.as_array()[4] | rhs.as_array()[4],
                self.as_array()[5] | rhs.as_array()[5],
                self.as_array()[6] | rhs.as_array()[6],
                self.as_array()[7] | rhs.as_array()[7],
            ])
        }
    }
}
impl std::ops::BitOrAssign for U16x8 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: U16x8) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for U16x8 {
    type Output = U16x8;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
U16x8::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
    self.as_array()[4] ^ rhs.as_array()[4],
    self.as_array()[5] ^ rhs.as_array()[5],
    self.as_array()[6] ^ rhs.as_array()[6],
    self.as_array()[7] ^ rhs.as_array()[7],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_xor_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_xor_si128)
    - `PXOR xmm, xmm`
# Neon Intrinsics Used

* [`veorq_u16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_u16)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: U16x8) -> U16x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U16x8(std::arch::x86_64::_mm_xor_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U16x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_u16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U16x8::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
                self.as_array()[4] ^ rhs.as_array()[4],
                self.as_array()[5] ^ rhs.as_array()[5],
                self.as_array()[6] ^ rhs.as_array()[6],
                self.as_array()[7] ^ rhs.as_array()[7],
            ])
        }
    }
}
impl std::ops::BitXorAssign for U16x8 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: U16x8) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for U16x8 {
    type Output = U16x8;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
U16x8::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
    self.as_array()[4] & rhs.as_array()[4],
    self.as_array()[5] & rhs.as_array()[5],
    self.as_array()[6] & rhs.as_array()[6],
    self.as_array()[7] & rhs.as_array()[7],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_and_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_and_si128)
    - `PAND xmm, xmm`
# Neon Intrinsics Used

* [`vandq_u16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_u16)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: U16x8) -> U16x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U16x8(std::arch::x86_64::_mm_and_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U16x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_u16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U16x8::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
                self.as_array()[4] & rhs.as_array()[4],
                self.as_array()[5] & rhs.as_array()[5],
                self.as_array()[6] & rhs.as_array()[6],
                self.as_array()[7] & rhs.as_array()[7],
            ])
        }
    }
}
impl std::ops::BitAndAssign for U16x8 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: U16x8) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[u16; 16usize]> for U16x16 {
    #[inline(always)]
    fn from(arr: [u16; 16usize]) -> U16x16 {
        bytemuck::cast(arr)
    }
}
impl From<U16x16> for [u16; 16usize] {
    #[inline(always)]
    fn from(arr: U16x16) -> [u16; 16usize] {
        bytemuck::cast(arr)
    }
}
impl U16x16 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: U16x16 = U16x16::from_array([
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as u16, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [u16; 16usize]) -> Self {
        unsafe { std::mem::transmute::<[u16; 16usize], U16x16>(arr) }
    }
}
impl serde::Serialize for U16x16 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[u16; 16usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for U16x16 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[u16; 16usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for U16x16 {
    type Output = U16x16;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
U16x16::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
    self.as_array()[4].wrapping_add(rhs.as_array()[4]),
    self.as_array()[5].wrapping_add(rhs.as_array()[5]),
    self.as_array()[6].wrapping_add(rhs.as_array()[6]),
    self.as_array()[7].wrapping_add(rhs.as_array()[7]),
    self.as_array()[8].wrapping_add(rhs.as_array()[8]),
    self.as_array()[9].wrapping_add(rhs.as_array()[9]),
    self.as_array()[10].wrapping_add(rhs.as_array()[10]),
    self.as_array()[11].wrapping_add(rhs.as_array()[11]),
    self.as_array()[12].wrapping_add(rhs.as_array()[12]),
    self.as_array()[13].wrapping_add(rhs.as_array()[13]),
    self.as_array()[14].wrapping_add(rhs.as_array()[14]),
    self.as_array()[15].wrapping_add(rhs.as_array()[15]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_add_epi16`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_add_epi16)
    - `VPADDW ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vaddq_u16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_u16)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.8H,Vn.8H,Vm.8H`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: U16x16) -> U16x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U16x16(std::arch::x86_64::_mm256_add_epi16(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U16x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_u16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U16x16::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
                self.as_array()[4].wrapping_add(rhs.as_array()[4]),
                self.as_array()[5].wrapping_add(rhs.as_array()[5]),
                self.as_array()[6].wrapping_add(rhs.as_array()[6]),
                self.as_array()[7].wrapping_add(rhs.as_array()[7]),
                self.as_array()[8].wrapping_add(rhs.as_array()[8]),
                self.as_array()[9].wrapping_add(rhs.as_array()[9]),
                self.as_array()[10].wrapping_add(rhs.as_array()[10]),
                self.as_array()[11].wrapping_add(rhs.as_array()[11]),
                self.as_array()[12].wrapping_add(rhs.as_array()[12]),
                self.as_array()[13].wrapping_add(rhs.as_array()[13]),
                self.as_array()[14].wrapping_add(rhs.as_array()[14]),
                self.as_array()[15].wrapping_add(rhs.as_array()[15]),
            ])
        }
    }
}
impl std::ops::AddAssign for U16x16 {
    #[inline(always)]
    fn add_assign(&mut self, other: U16x16) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for U16x16 {
    type Output = U16x16;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
U16x16::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
    self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
    self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
    self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
    self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
    self.as_array()[8].wrapping_sub(rhs.as_array()[8]),
    self.as_array()[9].wrapping_sub(rhs.as_array()[9]),
    self.as_array()[10].wrapping_sub(rhs.as_array()[10]),
    self.as_array()[11].wrapping_sub(rhs.as_array()[11]),
    self.as_array()[12].wrapping_sub(rhs.as_array()[12]),
    self.as_array()[13].wrapping_sub(rhs.as_array()[13]),
    self.as_array()[14].wrapping_sub(rhs.as_array()[14]),
    self.as_array()[15].wrapping_sub(rhs.as_array()[15]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_sub_epi16`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_sub_epi16)
    - `VPSUBW ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vsubq_u16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_u16)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.8H,Vn.8H,Vm.8H`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: U16x16) -> U16x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U16x16(std::arch::x86_64::_mm256_sub_epi16(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U16x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_u16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U16x16::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
                self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
                self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
                self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
                self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
                self.as_array()[8].wrapping_sub(rhs.as_array()[8]),
                self.as_array()[9].wrapping_sub(rhs.as_array()[9]),
                self.as_array()[10].wrapping_sub(rhs.as_array()[10]),
                self.as_array()[11].wrapping_sub(rhs.as_array()[11]),
                self.as_array()[12].wrapping_sub(rhs.as_array()[12]),
                self.as_array()[13].wrapping_sub(rhs.as_array()[13]),
                self.as_array()[14].wrapping_sub(rhs.as_array()[14]),
                self.as_array()[15].wrapping_sub(rhs.as_array()[15]),
            ])
        }
    }
}
impl std::ops::SubAssign for U16x16 {
    #[inline(always)]
    fn sub_assign(&mut self, other: U16x16) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for U16x16 {
    type Output = U16x16;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
U16x16::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
    self.as_array()[4] | rhs.as_array()[4],
    self.as_array()[5] | rhs.as_array()[5],
    self.as_array()[6] | rhs.as_array()[6],
    self.as_array()[7] | rhs.as_array()[7],
    self.as_array()[8] | rhs.as_array()[8],
    self.as_array()[9] | rhs.as_array()[9],
    self.as_array()[10] | rhs.as_array()[10],
    self.as_array()[11] | rhs.as_array()[11],
    self.as_array()[12] | rhs.as_array()[12],
    self.as_array()[13] | rhs.as_array()[13],
    self.as_array()[14] | rhs.as_array()[14],
    self.as_array()[15] | rhs.as_array()[15],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_or_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_or_si256)
    - `VPOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vorrq_u16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_u16)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: U16x16) -> U16x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U16x16(std::arch::x86_64::_mm256_or_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U16x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_u16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U16x16::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
                self.as_array()[4] | rhs.as_array()[4],
                self.as_array()[5] | rhs.as_array()[5],
                self.as_array()[6] | rhs.as_array()[6],
                self.as_array()[7] | rhs.as_array()[7],
                self.as_array()[8] | rhs.as_array()[8],
                self.as_array()[9] | rhs.as_array()[9],
                self.as_array()[10] | rhs.as_array()[10],
                self.as_array()[11] | rhs.as_array()[11],
                self.as_array()[12] | rhs.as_array()[12],
                self.as_array()[13] | rhs.as_array()[13],
                self.as_array()[14] | rhs.as_array()[14],
                self.as_array()[15] | rhs.as_array()[15],
            ])
        }
    }
}
impl std::ops::BitOrAssign for U16x16 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: U16x16) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for U16x16 {
    type Output = U16x16;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
U16x16::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
    self.as_array()[4] ^ rhs.as_array()[4],
    self.as_array()[5] ^ rhs.as_array()[5],
    self.as_array()[6] ^ rhs.as_array()[6],
    self.as_array()[7] ^ rhs.as_array()[7],
    self.as_array()[8] ^ rhs.as_array()[8],
    self.as_array()[9] ^ rhs.as_array()[9],
    self.as_array()[10] ^ rhs.as_array()[10],
    self.as_array()[11] ^ rhs.as_array()[11],
    self.as_array()[12] ^ rhs.as_array()[12],
    self.as_array()[13] ^ rhs.as_array()[13],
    self.as_array()[14] ^ rhs.as_array()[14],
    self.as_array()[15] ^ rhs.as_array()[15],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_xor_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_xor_si256)
    - `VPXOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`veorq_u16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_u16)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: U16x16) -> U16x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U16x16(std::arch::x86_64::_mm256_xor_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U16x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_u16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U16x16::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
                self.as_array()[4] ^ rhs.as_array()[4],
                self.as_array()[5] ^ rhs.as_array()[5],
                self.as_array()[6] ^ rhs.as_array()[6],
                self.as_array()[7] ^ rhs.as_array()[7],
                self.as_array()[8] ^ rhs.as_array()[8],
                self.as_array()[9] ^ rhs.as_array()[9],
                self.as_array()[10] ^ rhs.as_array()[10],
                self.as_array()[11] ^ rhs.as_array()[11],
                self.as_array()[12] ^ rhs.as_array()[12],
                self.as_array()[13] ^ rhs.as_array()[13],
                self.as_array()[14] ^ rhs.as_array()[14],
                self.as_array()[15] ^ rhs.as_array()[15],
            ])
        }
    }
}
impl std::ops::BitXorAssign for U16x16 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: U16x16) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for U16x16 {
    type Output = U16x16;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
U16x16::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
    self.as_array()[4] & rhs.as_array()[4],
    self.as_array()[5] & rhs.as_array()[5],
    self.as_array()[6] & rhs.as_array()[6],
    self.as_array()[7] & rhs.as_array()[7],
    self.as_array()[8] & rhs.as_array()[8],
    self.as_array()[9] & rhs.as_array()[9],
    self.as_array()[10] & rhs.as_array()[10],
    self.as_array()[11] & rhs.as_array()[11],
    self.as_array()[12] & rhs.as_array()[12],
    self.as_array()[13] & rhs.as_array()[13],
    self.as_array()[14] & rhs.as_array()[14],
    self.as_array()[15] & rhs.as_array()[15],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_and_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_and_si256)
    - `VPAND ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vandq_u16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_u16)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: U16x16) -> U16x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U16x16(std::arch::x86_64::_mm256_and_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U16x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_u16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U16x16::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
                self.as_array()[4] & rhs.as_array()[4],
                self.as_array()[5] & rhs.as_array()[5],
                self.as_array()[6] & rhs.as_array()[6],
                self.as_array()[7] & rhs.as_array()[7],
                self.as_array()[8] & rhs.as_array()[8],
                self.as_array()[9] & rhs.as_array()[9],
                self.as_array()[10] & rhs.as_array()[10],
                self.as_array()[11] & rhs.as_array()[11],
                self.as_array()[12] & rhs.as_array()[12],
                self.as_array()[13] & rhs.as_array()[13],
                self.as_array()[14] & rhs.as_array()[14],
                self.as_array()[15] & rhs.as_array()[15],
            ])
        }
    }
}
impl std::ops::BitAndAssign for U16x16 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: U16x16) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[i16; 8usize]> for I16x8 {
    #[inline(always)]
    fn from(arr: [i16; 8usize]) -> I16x8 {
        bytemuck::cast(arr)
    }
}
impl From<I16x8> for [i16; 8usize] {
    #[inline(always)]
    fn from(arr: I16x8) -> [i16; 8usize] {
        bytemuck::cast(arr)
    }
}
impl I16x8 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: I16x8 = I16x8::from_array([0, 1, 2, 3, 4, 5, 6, 7]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as i16, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [i16; 8usize]) -> Self {
        unsafe { std::mem::transmute::<[i16; 8usize], I16x8>(arr) }
    }
}
impl serde::Serialize for I16x8 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[i16; 8usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for I16x8 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[i16; 8usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for I16x8 {
    type Output = I16x8;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
I16x8::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
    self.as_array()[4].wrapping_add(rhs.as_array()[4]),
    self.as_array()[5].wrapping_add(rhs.as_array()[5]),
    self.as_array()[6].wrapping_add(rhs.as_array()[6]),
    self.as_array()[7].wrapping_add(rhs.as_array()[7]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_add_epi16`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_add_epi16)
    - `PADDW xmm, xmm`
# Neon Intrinsics Used

* [`vaddq_s16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_s16)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.8H,Vn.8H,Vm.8H`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: I16x8) -> I16x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I16x8(std::arch::x86_64::_mm_add_epi16(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I16x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_s16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I16x8::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
                self.as_array()[4].wrapping_add(rhs.as_array()[4]),
                self.as_array()[5].wrapping_add(rhs.as_array()[5]),
                self.as_array()[6].wrapping_add(rhs.as_array()[6]),
                self.as_array()[7].wrapping_add(rhs.as_array()[7]),
            ])
        }
    }
}
impl std::ops::AddAssign for I16x8 {
    #[inline(always)]
    fn add_assign(&mut self, other: I16x8) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for I16x8 {
    type Output = I16x8;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
I16x8::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
    self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
    self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
    self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
    self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_sub_epi16`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_sub_epi16)
    - `PSUBW xmm, xmm`
# Neon Intrinsics Used

* [`vsubq_s16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_s16)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.8H,Vn.8H,Vm.8H`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: I16x8) -> I16x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I16x8(std::arch::x86_64::_mm_sub_epi16(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I16x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_s16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I16x8::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
                self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
                self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
                self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
                self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
            ])
        }
    }
}
impl std::ops::SubAssign for I16x8 {
    #[inline(always)]
    fn sub_assign(&mut self, other: I16x8) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for I16x8 {
    type Output = I16x8;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
I16x8::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
    self.as_array()[4] | rhs.as_array()[4],
    self.as_array()[5] | rhs.as_array()[5],
    self.as_array()[6] | rhs.as_array()[6],
    self.as_array()[7] | rhs.as_array()[7],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_or_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_or_si128)
    - `POR xmm, xmm`
# Neon Intrinsics Used

* [`vorrq_s16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_s16)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: I16x8) -> I16x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I16x8(std::arch::x86_64::_mm_or_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I16x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_s16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I16x8::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
                self.as_array()[4] | rhs.as_array()[4],
                self.as_array()[5] | rhs.as_array()[5],
                self.as_array()[6] | rhs.as_array()[6],
                self.as_array()[7] | rhs.as_array()[7],
            ])
        }
    }
}
impl std::ops::BitOrAssign for I16x8 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: I16x8) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for I16x8 {
    type Output = I16x8;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
I16x8::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
    self.as_array()[4] ^ rhs.as_array()[4],
    self.as_array()[5] ^ rhs.as_array()[5],
    self.as_array()[6] ^ rhs.as_array()[6],
    self.as_array()[7] ^ rhs.as_array()[7],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_xor_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_xor_si128)
    - `PXOR xmm, xmm`
# Neon Intrinsics Used

* [`veorq_s16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_s16)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: I16x8) -> I16x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I16x8(std::arch::x86_64::_mm_xor_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I16x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_s16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I16x8::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
                self.as_array()[4] ^ rhs.as_array()[4],
                self.as_array()[5] ^ rhs.as_array()[5],
                self.as_array()[6] ^ rhs.as_array()[6],
                self.as_array()[7] ^ rhs.as_array()[7],
            ])
        }
    }
}
impl std::ops::BitXorAssign for I16x8 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: I16x8) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for I16x8 {
    type Output = I16x8;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
I16x8::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
    self.as_array()[4] & rhs.as_array()[4],
    self.as_array()[5] & rhs.as_array()[5],
    self.as_array()[6] & rhs.as_array()[6],
    self.as_array()[7] & rhs.as_array()[7],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_and_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_and_si128)
    - `PAND xmm, xmm`
# Neon Intrinsics Used

* [`vandq_s16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_s16)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: I16x8) -> I16x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I16x8(std::arch::x86_64::_mm_and_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I16x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_s16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I16x8::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
                self.as_array()[4] & rhs.as_array()[4],
                self.as_array()[5] & rhs.as_array()[5],
                self.as_array()[6] & rhs.as_array()[6],
                self.as_array()[7] & rhs.as_array()[7],
            ])
        }
    }
}
impl std::ops::BitAndAssign for I16x8 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: I16x8) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[i16; 16usize]> for I16x16 {
    #[inline(always)]
    fn from(arr: [i16; 16usize]) -> I16x16 {
        bytemuck::cast(arr)
    }
}
impl From<I16x16> for [i16; 16usize] {
    #[inline(always)]
    fn from(arr: I16x16) -> [i16; 16usize] {
        bytemuck::cast(arr)
    }
}
impl I16x16 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: I16x16 = I16x16::from_array([
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as i16, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [i16; 16usize]) -> Self {
        unsafe { std::mem::transmute::<[i16; 16usize], I16x16>(arr) }
    }
}
impl serde::Serialize for I16x16 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[i16; 16usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for I16x16 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[i16; 16usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for I16x16 {
    type Output = I16x16;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
I16x16::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
    self.as_array()[4].wrapping_add(rhs.as_array()[4]),
    self.as_array()[5].wrapping_add(rhs.as_array()[5]),
    self.as_array()[6].wrapping_add(rhs.as_array()[6]),
    self.as_array()[7].wrapping_add(rhs.as_array()[7]),
    self.as_array()[8].wrapping_add(rhs.as_array()[8]),
    self.as_array()[9].wrapping_add(rhs.as_array()[9]),
    self.as_array()[10].wrapping_add(rhs.as_array()[10]),
    self.as_array()[11].wrapping_add(rhs.as_array()[11]),
    self.as_array()[12].wrapping_add(rhs.as_array()[12]),
    self.as_array()[13].wrapping_add(rhs.as_array()[13]),
    self.as_array()[14].wrapping_add(rhs.as_array()[14]),
    self.as_array()[15].wrapping_add(rhs.as_array()[15]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_add_epi16`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_add_epi16)
    - `VPADDW ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vaddq_s16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_s16)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.8H,Vn.8H,Vm.8H`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: I16x16) -> I16x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I16x16(std::arch::x86_64::_mm256_add_epi16(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I16x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_s16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I16x16::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
                self.as_array()[4].wrapping_add(rhs.as_array()[4]),
                self.as_array()[5].wrapping_add(rhs.as_array()[5]),
                self.as_array()[6].wrapping_add(rhs.as_array()[6]),
                self.as_array()[7].wrapping_add(rhs.as_array()[7]),
                self.as_array()[8].wrapping_add(rhs.as_array()[8]),
                self.as_array()[9].wrapping_add(rhs.as_array()[9]),
                self.as_array()[10].wrapping_add(rhs.as_array()[10]),
                self.as_array()[11].wrapping_add(rhs.as_array()[11]),
                self.as_array()[12].wrapping_add(rhs.as_array()[12]),
                self.as_array()[13].wrapping_add(rhs.as_array()[13]),
                self.as_array()[14].wrapping_add(rhs.as_array()[14]),
                self.as_array()[15].wrapping_add(rhs.as_array()[15]),
            ])
        }
    }
}
impl std::ops::AddAssign for I16x16 {
    #[inline(always)]
    fn add_assign(&mut self, other: I16x16) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for I16x16 {
    type Output = I16x16;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
I16x16::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
    self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
    self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
    self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
    self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
    self.as_array()[8].wrapping_sub(rhs.as_array()[8]),
    self.as_array()[9].wrapping_sub(rhs.as_array()[9]),
    self.as_array()[10].wrapping_sub(rhs.as_array()[10]),
    self.as_array()[11].wrapping_sub(rhs.as_array()[11]),
    self.as_array()[12].wrapping_sub(rhs.as_array()[12]),
    self.as_array()[13].wrapping_sub(rhs.as_array()[13]),
    self.as_array()[14].wrapping_sub(rhs.as_array()[14]),
    self.as_array()[15].wrapping_sub(rhs.as_array()[15]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_sub_epi16`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_sub_epi16)
    - `VPSUBW ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vsubq_s16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_s16)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.8H,Vn.8H,Vm.8H`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: I16x16) -> I16x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I16x16(std::arch::x86_64::_mm256_sub_epi16(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I16x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_s16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I16x16::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
                self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
                self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
                self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
                self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
                self.as_array()[8].wrapping_sub(rhs.as_array()[8]),
                self.as_array()[9].wrapping_sub(rhs.as_array()[9]),
                self.as_array()[10].wrapping_sub(rhs.as_array()[10]),
                self.as_array()[11].wrapping_sub(rhs.as_array()[11]),
                self.as_array()[12].wrapping_sub(rhs.as_array()[12]),
                self.as_array()[13].wrapping_sub(rhs.as_array()[13]),
                self.as_array()[14].wrapping_sub(rhs.as_array()[14]),
                self.as_array()[15].wrapping_sub(rhs.as_array()[15]),
            ])
        }
    }
}
impl std::ops::SubAssign for I16x16 {
    #[inline(always)]
    fn sub_assign(&mut self, other: I16x16) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for I16x16 {
    type Output = I16x16;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
I16x16::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
    self.as_array()[4] | rhs.as_array()[4],
    self.as_array()[5] | rhs.as_array()[5],
    self.as_array()[6] | rhs.as_array()[6],
    self.as_array()[7] | rhs.as_array()[7],
    self.as_array()[8] | rhs.as_array()[8],
    self.as_array()[9] | rhs.as_array()[9],
    self.as_array()[10] | rhs.as_array()[10],
    self.as_array()[11] | rhs.as_array()[11],
    self.as_array()[12] | rhs.as_array()[12],
    self.as_array()[13] | rhs.as_array()[13],
    self.as_array()[14] | rhs.as_array()[14],
    self.as_array()[15] | rhs.as_array()[15],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_or_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_or_si256)
    - `VPOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vorrq_s16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_s16)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: I16x16) -> I16x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I16x16(std::arch::x86_64::_mm256_or_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I16x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_s16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I16x16::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
                self.as_array()[4] | rhs.as_array()[4],
                self.as_array()[5] | rhs.as_array()[5],
                self.as_array()[6] | rhs.as_array()[6],
                self.as_array()[7] | rhs.as_array()[7],
                self.as_array()[8] | rhs.as_array()[8],
                self.as_array()[9] | rhs.as_array()[9],
                self.as_array()[10] | rhs.as_array()[10],
                self.as_array()[11] | rhs.as_array()[11],
                self.as_array()[12] | rhs.as_array()[12],
                self.as_array()[13] | rhs.as_array()[13],
                self.as_array()[14] | rhs.as_array()[14],
                self.as_array()[15] | rhs.as_array()[15],
            ])
        }
    }
}
impl std::ops::BitOrAssign for I16x16 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: I16x16) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for I16x16 {
    type Output = I16x16;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
I16x16::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
    self.as_array()[4] ^ rhs.as_array()[4],
    self.as_array()[5] ^ rhs.as_array()[5],
    self.as_array()[6] ^ rhs.as_array()[6],
    self.as_array()[7] ^ rhs.as_array()[7],
    self.as_array()[8] ^ rhs.as_array()[8],
    self.as_array()[9] ^ rhs.as_array()[9],
    self.as_array()[10] ^ rhs.as_array()[10],
    self.as_array()[11] ^ rhs.as_array()[11],
    self.as_array()[12] ^ rhs.as_array()[12],
    self.as_array()[13] ^ rhs.as_array()[13],
    self.as_array()[14] ^ rhs.as_array()[14],
    self.as_array()[15] ^ rhs.as_array()[15],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_xor_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_xor_si256)
    - `VPXOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`veorq_s16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_s16)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: I16x16) -> I16x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I16x16(std::arch::x86_64::_mm256_xor_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I16x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_s16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I16x16::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
                self.as_array()[4] ^ rhs.as_array()[4],
                self.as_array()[5] ^ rhs.as_array()[5],
                self.as_array()[6] ^ rhs.as_array()[6],
                self.as_array()[7] ^ rhs.as_array()[7],
                self.as_array()[8] ^ rhs.as_array()[8],
                self.as_array()[9] ^ rhs.as_array()[9],
                self.as_array()[10] ^ rhs.as_array()[10],
                self.as_array()[11] ^ rhs.as_array()[11],
                self.as_array()[12] ^ rhs.as_array()[12],
                self.as_array()[13] ^ rhs.as_array()[13],
                self.as_array()[14] ^ rhs.as_array()[14],
                self.as_array()[15] ^ rhs.as_array()[15],
            ])
        }
    }
}
impl std::ops::BitXorAssign for I16x16 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: I16x16) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for I16x16 {
    type Output = I16x16;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
I16x16::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
    self.as_array()[4] & rhs.as_array()[4],
    self.as_array()[5] & rhs.as_array()[5],
    self.as_array()[6] & rhs.as_array()[6],
    self.as_array()[7] & rhs.as_array()[7],
    self.as_array()[8] & rhs.as_array()[8],
    self.as_array()[9] & rhs.as_array()[9],
    self.as_array()[10] & rhs.as_array()[10],
    self.as_array()[11] & rhs.as_array()[11],
    self.as_array()[12] & rhs.as_array()[12],
    self.as_array()[13] & rhs.as_array()[13],
    self.as_array()[14] & rhs.as_array()[14],
    self.as_array()[15] & rhs.as_array()[15],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_and_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_and_si256)
    - `VPAND ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vandq_s16`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_s16)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: I16x16) -> I16x16 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I16x16(std::arch::x86_64::_mm256_and_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I16x16(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_s16(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I16x16::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
                self.as_array()[4] & rhs.as_array()[4],
                self.as_array()[5] & rhs.as_array()[5],
                self.as_array()[6] & rhs.as_array()[6],
                self.as_array()[7] & rhs.as_array()[7],
                self.as_array()[8] & rhs.as_array()[8],
                self.as_array()[9] & rhs.as_array()[9],
                self.as_array()[10] & rhs.as_array()[10],
                self.as_array()[11] & rhs.as_array()[11],
                self.as_array()[12] & rhs.as_array()[12],
                self.as_array()[13] & rhs.as_array()[13],
                self.as_array()[14] & rhs.as_array()[14],
                self.as_array()[15] & rhs.as_array()[15],
            ])
        }
    }
}
impl std::ops::BitAndAssign for I16x16 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: I16x16) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[u32; 4usize]> for U32x4 {
    #[inline(always)]
    fn from(arr: [u32; 4usize]) -> U32x4 {
        bytemuck::cast(arr)
    }
}
impl From<U32x4> for [u32; 4usize] {
    #[inline(always)]
    fn from(arr: U32x4) -> [u32; 4usize] {
        bytemuck::cast(arr)
    }
}
impl U32x4 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: U32x4 = U32x4::from_array([0, 1, 2, 3]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as u32, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [u32; 4usize]) -> Self {
        unsafe { std::mem::transmute::<[u32; 4usize], U32x4>(arr) }
    }
}
impl serde::Serialize for U32x4 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[u32; 4usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for U32x4 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[u32; 4usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for U32x4 {
    type Output = U32x4;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
U32x4::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_add_epi32`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_add_epi32)
    - `PADDD xmm, xmm`
# Neon Intrinsics Used

* [`vaddq_u32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_u32)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.4S,Vn.4S,Vm.4S`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: U32x4) -> U32x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U32x4(std::arch::x86_64::_mm_add_epi32(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U32x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_u32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U32x4::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
            ])
        }
    }
}
impl std::ops::AddAssign for U32x4 {
    #[inline(always)]
    fn add_assign(&mut self, other: U32x4) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for U32x4 {
    type Output = U32x4;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
U32x4::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_sub_epi32`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_sub_epi32)
    - `PSUBD xmm, xmm`
# Neon Intrinsics Used

* [`vsubq_u32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_u32)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.4S,Vn.4S,Vm.4S`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: U32x4) -> U32x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U32x4(std::arch::x86_64::_mm_sub_epi32(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U32x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_u32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U32x4::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
            ])
        }
    }
}
impl std::ops::SubAssign for U32x4 {
    #[inline(always)]
    fn sub_assign(&mut self, other: U32x4) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for U32x4 {
    type Output = U32x4;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
U32x4::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_or_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_or_si128)
    - `POR xmm, xmm`
# Neon Intrinsics Used

* [`vorrq_u32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_u32)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: U32x4) -> U32x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U32x4(std::arch::x86_64::_mm_or_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U32x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_u32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U32x4::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
            ])
        }
    }
}
impl std::ops::BitOrAssign for U32x4 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: U32x4) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for U32x4 {
    type Output = U32x4;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
U32x4::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_xor_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_xor_si128)
    - `PXOR xmm, xmm`
# Neon Intrinsics Used

* [`veorq_u32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_u32)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: U32x4) -> U32x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U32x4(std::arch::x86_64::_mm_xor_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U32x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_u32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U32x4::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
            ])
        }
    }
}
impl std::ops::BitXorAssign for U32x4 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: U32x4) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for U32x4 {
    type Output = U32x4;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
U32x4::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_and_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_and_si128)
    - `PAND xmm, xmm`
# Neon Intrinsics Used

* [`vandq_u32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_u32)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: U32x4) -> U32x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U32x4(std::arch::x86_64::_mm_and_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U32x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_u32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U32x4::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
            ])
        }
    }
}
impl std::ops::BitAndAssign for U32x4 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: U32x4) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[u32; 8usize]> for U32x8 {
    #[inline(always)]
    fn from(arr: [u32; 8usize]) -> U32x8 {
        bytemuck::cast(arr)
    }
}
impl From<U32x8> for [u32; 8usize] {
    #[inline(always)]
    fn from(arr: U32x8) -> [u32; 8usize] {
        bytemuck::cast(arr)
    }
}
impl U32x8 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: U32x8 = U32x8::from_array([0, 1, 2, 3, 4, 5, 6, 7]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as u32, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [u32; 8usize]) -> Self {
        unsafe { std::mem::transmute::<[u32; 8usize], U32x8>(arr) }
    }
}
impl serde::Serialize for U32x8 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[u32; 8usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for U32x8 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[u32; 8usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for U32x8 {
    type Output = U32x8;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
U32x8::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
    self.as_array()[4].wrapping_add(rhs.as_array()[4]),
    self.as_array()[5].wrapping_add(rhs.as_array()[5]),
    self.as_array()[6].wrapping_add(rhs.as_array()[6]),
    self.as_array()[7].wrapping_add(rhs.as_array()[7]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_add_epi32`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_add_epi32)
    - `VPADDD ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vaddq_u32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_u32)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.4S,Vn.4S,Vm.4S`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: U32x8) -> U32x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U32x8(std::arch::x86_64::_mm256_add_epi32(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U32x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_u32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U32x8::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
                self.as_array()[4].wrapping_add(rhs.as_array()[4]),
                self.as_array()[5].wrapping_add(rhs.as_array()[5]),
                self.as_array()[6].wrapping_add(rhs.as_array()[6]),
                self.as_array()[7].wrapping_add(rhs.as_array()[7]),
            ])
        }
    }
}
impl std::ops::AddAssign for U32x8 {
    #[inline(always)]
    fn add_assign(&mut self, other: U32x8) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for U32x8 {
    type Output = U32x8;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
U32x8::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
    self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
    self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
    self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
    self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_sub_epi32`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_sub_epi32)
    - `VPSUBD ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vsubq_u32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_u32)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.4S,Vn.4S,Vm.4S`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: U32x8) -> U32x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U32x8(std::arch::x86_64::_mm256_sub_epi32(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U32x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_u32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U32x8::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
                self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
                self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
                self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
                self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
            ])
        }
    }
}
impl std::ops::SubAssign for U32x8 {
    #[inline(always)]
    fn sub_assign(&mut self, other: U32x8) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for U32x8 {
    type Output = U32x8;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
U32x8::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
    self.as_array()[4] | rhs.as_array()[4],
    self.as_array()[5] | rhs.as_array()[5],
    self.as_array()[6] | rhs.as_array()[6],
    self.as_array()[7] | rhs.as_array()[7],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_or_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_or_si256)
    - `VPOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vorrq_u32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_u32)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: U32x8) -> U32x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U32x8(std::arch::x86_64::_mm256_or_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U32x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_u32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U32x8::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
                self.as_array()[4] | rhs.as_array()[4],
                self.as_array()[5] | rhs.as_array()[5],
                self.as_array()[6] | rhs.as_array()[6],
                self.as_array()[7] | rhs.as_array()[7],
            ])
        }
    }
}
impl std::ops::BitOrAssign for U32x8 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: U32x8) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for U32x8 {
    type Output = U32x8;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
U32x8::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
    self.as_array()[4] ^ rhs.as_array()[4],
    self.as_array()[5] ^ rhs.as_array()[5],
    self.as_array()[6] ^ rhs.as_array()[6],
    self.as_array()[7] ^ rhs.as_array()[7],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_xor_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_xor_si256)
    - `VPXOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`veorq_u32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_u32)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: U32x8) -> U32x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U32x8(std::arch::x86_64::_mm256_xor_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U32x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_u32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U32x8::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
                self.as_array()[4] ^ rhs.as_array()[4],
                self.as_array()[5] ^ rhs.as_array()[5],
                self.as_array()[6] ^ rhs.as_array()[6],
                self.as_array()[7] ^ rhs.as_array()[7],
            ])
        }
    }
}
impl std::ops::BitXorAssign for U32x8 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: U32x8) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for U32x8 {
    type Output = U32x8;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
U32x8::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
    self.as_array()[4] & rhs.as_array()[4],
    self.as_array()[5] & rhs.as_array()[5],
    self.as_array()[6] & rhs.as_array()[6],
    self.as_array()[7] & rhs.as_array()[7],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_and_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_and_si256)
    - `VPAND ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vandq_u32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_u32)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: U32x8) -> U32x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U32x8(std::arch::x86_64::_mm256_and_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U32x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_u32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U32x8::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
                self.as_array()[4] & rhs.as_array()[4],
                self.as_array()[5] & rhs.as_array()[5],
                self.as_array()[6] & rhs.as_array()[6],
                self.as_array()[7] & rhs.as_array()[7],
            ])
        }
    }
}
impl std::ops::BitAndAssign for U32x8 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: U32x8) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[i32; 4usize]> for I32x4 {
    #[inline(always)]
    fn from(arr: [i32; 4usize]) -> I32x4 {
        bytemuck::cast(arr)
    }
}
impl From<I32x4> for [i32; 4usize] {
    #[inline(always)]
    fn from(arr: I32x4) -> [i32; 4usize] {
        bytemuck::cast(arr)
    }
}
impl I32x4 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: I32x4 = I32x4::from_array([0, 1, 2, 3]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as i32, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [i32; 4usize]) -> Self {
        unsafe { std::mem::transmute::<[i32; 4usize], I32x4>(arr) }
    }
}
impl serde::Serialize for I32x4 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[i32; 4usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for I32x4 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[i32; 4usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for I32x4 {
    type Output = I32x4;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
I32x4::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_add_epi32`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_add_epi32)
    - `PADDD xmm, xmm`
# Neon Intrinsics Used

* [`vaddq_s32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_s32)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.4S,Vn.4S,Vm.4S`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: I32x4) -> I32x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I32x4(std::arch::x86_64::_mm_add_epi32(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I32x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_s32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I32x4::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
            ])
        }
    }
}
impl std::ops::AddAssign for I32x4 {
    #[inline(always)]
    fn add_assign(&mut self, other: I32x4) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for I32x4 {
    type Output = I32x4;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
I32x4::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_sub_epi32`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_sub_epi32)
    - `PSUBD xmm, xmm`
# Neon Intrinsics Used

* [`vsubq_s32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_s32)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.4S,Vn.4S,Vm.4S`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: I32x4) -> I32x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I32x4(std::arch::x86_64::_mm_sub_epi32(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I32x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_s32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I32x4::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
            ])
        }
    }
}
impl std::ops::SubAssign for I32x4 {
    #[inline(always)]
    fn sub_assign(&mut self, other: I32x4) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for I32x4 {
    type Output = I32x4;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
I32x4::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_or_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_or_si128)
    - `POR xmm, xmm`
# Neon Intrinsics Used

* [`vorrq_s32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_s32)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: I32x4) -> I32x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I32x4(std::arch::x86_64::_mm_or_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I32x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_s32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I32x4::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
            ])
        }
    }
}
impl std::ops::BitOrAssign for I32x4 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: I32x4) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for I32x4 {
    type Output = I32x4;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
I32x4::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_xor_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_xor_si128)
    - `PXOR xmm, xmm`
# Neon Intrinsics Used

* [`veorq_s32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_s32)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: I32x4) -> I32x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I32x4(std::arch::x86_64::_mm_xor_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I32x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_s32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I32x4::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
            ])
        }
    }
}
impl std::ops::BitXorAssign for I32x4 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: I32x4) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for I32x4 {
    type Output = I32x4;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
I32x4::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_and_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_and_si128)
    - `PAND xmm, xmm`
# Neon Intrinsics Used

* [`vandq_s32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_s32)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: I32x4) -> I32x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I32x4(std::arch::x86_64::_mm_and_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I32x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_s32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I32x4::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
            ])
        }
    }
}
impl std::ops::BitAndAssign for I32x4 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: I32x4) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[i32; 8usize]> for I32x8 {
    #[inline(always)]
    fn from(arr: [i32; 8usize]) -> I32x8 {
        bytemuck::cast(arr)
    }
}
impl From<I32x8> for [i32; 8usize] {
    #[inline(always)]
    fn from(arr: I32x8) -> [i32; 8usize] {
        bytemuck::cast(arr)
    }
}
impl I32x8 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: I32x8 = I32x8::from_array([0, 1, 2, 3, 4, 5, 6, 7]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as i32, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [i32; 8usize]) -> Self {
        unsafe { std::mem::transmute::<[i32; 8usize], I32x8>(arr) }
    }
}
impl serde::Serialize for I32x8 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[i32; 8usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for I32x8 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[i32; 8usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for I32x8 {
    type Output = I32x8;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
I32x8::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
    self.as_array()[4].wrapping_add(rhs.as_array()[4]),
    self.as_array()[5].wrapping_add(rhs.as_array()[5]),
    self.as_array()[6].wrapping_add(rhs.as_array()[6]),
    self.as_array()[7].wrapping_add(rhs.as_array()[7]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_add_epi32`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_add_epi32)
    - `VPADDD ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vaddq_s32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_s32)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.4S,Vn.4S,Vm.4S`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: I32x8) -> I32x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I32x8(std::arch::x86_64::_mm256_add_epi32(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I32x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_s32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I32x8::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
                self.as_array()[4].wrapping_add(rhs.as_array()[4]),
                self.as_array()[5].wrapping_add(rhs.as_array()[5]),
                self.as_array()[6].wrapping_add(rhs.as_array()[6]),
                self.as_array()[7].wrapping_add(rhs.as_array()[7]),
            ])
        }
    }
}
impl std::ops::AddAssign for I32x8 {
    #[inline(always)]
    fn add_assign(&mut self, other: I32x8) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for I32x8 {
    type Output = I32x8;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
I32x8::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
    self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
    self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
    self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
    self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_sub_epi32`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_sub_epi32)
    - `VPSUBD ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vsubq_s32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_s32)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.4S,Vn.4S,Vm.4S`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: I32x8) -> I32x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I32x8(std::arch::x86_64::_mm256_sub_epi32(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I32x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_s32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I32x8::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
                self.as_array()[4].wrapping_sub(rhs.as_array()[4]),
                self.as_array()[5].wrapping_sub(rhs.as_array()[5]),
                self.as_array()[6].wrapping_sub(rhs.as_array()[6]),
                self.as_array()[7].wrapping_sub(rhs.as_array()[7]),
            ])
        }
    }
}
impl std::ops::SubAssign for I32x8 {
    #[inline(always)]
    fn sub_assign(&mut self, other: I32x8) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for I32x8 {
    type Output = I32x8;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
I32x8::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
    self.as_array()[4] | rhs.as_array()[4],
    self.as_array()[5] | rhs.as_array()[5],
    self.as_array()[6] | rhs.as_array()[6],
    self.as_array()[7] | rhs.as_array()[7],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_or_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_or_si256)
    - `VPOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vorrq_s32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_s32)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: I32x8) -> I32x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I32x8(std::arch::x86_64::_mm256_or_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I32x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_s32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I32x8::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
                self.as_array()[4] | rhs.as_array()[4],
                self.as_array()[5] | rhs.as_array()[5],
                self.as_array()[6] | rhs.as_array()[6],
                self.as_array()[7] | rhs.as_array()[7],
            ])
        }
    }
}
impl std::ops::BitOrAssign for I32x8 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: I32x8) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for I32x8 {
    type Output = I32x8;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
I32x8::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
    self.as_array()[4] ^ rhs.as_array()[4],
    self.as_array()[5] ^ rhs.as_array()[5],
    self.as_array()[6] ^ rhs.as_array()[6],
    self.as_array()[7] ^ rhs.as_array()[7],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_xor_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_xor_si256)
    - `VPXOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`veorq_s32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_s32)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: I32x8) -> I32x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I32x8(std::arch::x86_64::_mm256_xor_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I32x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_s32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I32x8::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
                self.as_array()[4] ^ rhs.as_array()[4],
                self.as_array()[5] ^ rhs.as_array()[5],
                self.as_array()[6] ^ rhs.as_array()[6],
                self.as_array()[7] ^ rhs.as_array()[7],
            ])
        }
    }
}
impl std::ops::BitXorAssign for I32x8 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: I32x8) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for I32x8 {
    type Output = I32x8;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
I32x8::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
    self.as_array()[4] & rhs.as_array()[4],
    self.as_array()[5] & rhs.as_array()[5],
    self.as_array()[6] & rhs.as_array()[6],
    self.as_array()[7] & rhs.as_array()[7],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_and_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_and_si256)
    - `VPAND ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vandq_s32`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_s32)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: I32x8) -> I32x8 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I32x8(std::arch::x86_64::_mm256_and_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I32x8(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_s32(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I32x8::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
                self.as_array()[4] & rhs.as_array()[4],
                self.as_array()[5] & rhs.as_array()[5],
                self.as_array()[6] & rhs.as_array()[6],
                self.as_array()[7] & rhs.as_array()[7],
            ])
        }
    }
}
impl std::ops::BitAndAssign for I32x8 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: I32x8) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[u64; 2usize]> for U64x2 {
    #[inline(always)]
    fn from(arr: [u64; 2usize]) -> U64x2 {
        bytemuck::cast(arr)
    }
}
impl From<U64x2> for [u64; 2usize] {
    #[inline(always)]
    fn from(arr: U64x2) -> [u64; 2usize] {
        bytemuck::cast(arr)
    }
}
impl U64x2 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: U64x2 = U64x2::from_array([0, 1]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as u64, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [u64; 2usize]) -> Self {
        unsafe { std::mem::transmute::<[u64; 2usize], U64x2>(arr) }
    }
}
impl serde::Serialize for U64x2 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[u64; 2usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for U64x2 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[u64; 2usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for U64x2 {
    type Output = U64x2;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
U64x2::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_add_epi64`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_add_epi64)
    - `PADDQ xmm, xmm`
# Neon Intrinsics Used

* [`vaddq_u64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_u64)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.2D,Vn.2D,Vm.2D`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: U64x2) -> U64x2 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U64x2(std::arch::x86_64::_mm_add_epi64(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U64x2(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_u64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U64x2::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
            ])
        }
    }
}
impl std::ops::AddAssign for U64x2 {
    #[inline(always)]
    fn add_assign(&mut self, other: U64x2) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for U64x2 {
    type Output = U64x2;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
U64x2::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_sub_epi64`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_sub_epi64)
    - `PSUBQ xmm, xmm`
# Neon Intrinsics Used

* [`vsubq_u64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_u64)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.2D,Vn.2D,Vm.2D`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: U64x2) -> U64x2 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U64x2(std::arch::x86_64::_mm_sub_epi64(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U64x2(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_u64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U64x2::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
            ])
        }
    }
}
impl std::ops::SubAssign for U64x2 {
    #[inline(always)]
    fn sub_assign(&mut self, other: U64x2) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for U64x2 {
    type Output = U64x2;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
U64x2::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_or_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_or_si128)
    - `POR xmm, xmm`
# Neon Intrinsics Used

* [`vorrq_u64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_u64)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: U64x2) -> U64x2 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U64x2(std::arch::x86_64::_mm_or_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U64x2(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_u64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U64x2::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
            ])
        }
    }
}
impl std::ops::BitOrAssign for U64x2 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: U64x2) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for U64x2 {
    type Output = U64x2;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
U64x2::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_xor_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_xor_si128)
    - `PXOR xmm, xmm`
# Neon Intrinsics Used

* [`veorq_u64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_u64)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: U64x2) -> U64x2 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U64x2(std::arch::x86_64::_mm_xor_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U64x2(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_u64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U64x2::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
            ])
        }
    }
}
impl std::ops::BitXorAssign for U64x2 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: U64x2) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for U64x2 {
    type Output = U64x2;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
U64x2::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_and_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_and_si128)
    - `PAND xmm, xmm`
# Neon Intrinsics Used

* [`vandq_u64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_u64)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: U64x2) -> U64x2 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U64x2(std::arch::x86_64::_mm_and_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U64x2(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_u64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U64x2::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
            ])
        }
    }
}
impl std::ops::BitAndAssign for U64x2 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: U64x2) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[u64; 4usize]> for U64x4 {
    #[inline(always)]
    fn from(arr: [u64; 4usize]) -> U64x4 {
        bytemuck::cast(arr)
    }
}
impl From<U64x4> for [u64; 4usize] {
    #[inline(always)]
    fn from(arr: U64x4) -> [u64; 4usize] {
        bytemuck::cast(arr)
    }
}
impl U64x4 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: U64x4 = U64x4::from_array([0, 1, 2, 3]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as u64, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [u64; 4usize]) -> Self {
        unsafe { std::mem::transmute::<[u64; 4usize], U64x4>(arr) }
    }
}
impl serde::Serialize for U64x4 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[u64; 4usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for U64x4 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[u64; 4usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for U64x4 {
    type Output = U64x4;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
U64x4::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_add_epi64`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_add_epi64)
    - `VPADDQ ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vaddq_u64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_u64)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.2D,Vn.2D,Vm.2D`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: U64x4) -> U64x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U64x4(std::arch::x86_64::_mm256_add_epi64(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U64x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_u64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U64x4::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
            ])
        }
    }
}
impl std::ops::AddAssign for U64x4 {
    #[inline(always)]
    fn add_assign(&mut self, other: U64x4) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for U64x4 {
    type Output = U64x4;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
U64x4::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_sub_epi64`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_sub_epi64)
    - `VPSUBQ ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vsubq_u64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_u64)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.2D,Vn.2D,Vm.2D`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: U64x4) -> U64x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U64x4(std::arch::x86_64::_mm256_sub_epi64(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U64x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_u64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U64x4::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
            ])
        }
    }
}
impl std::ops::SubAssign for U64x4 {
    #[inline(always)]
    fn sub_assign(&mut self, other: U64x4) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for U64x4 {
    type Output = U64x4;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
U64x4::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_or_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_or_si256)
    - `VPOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vorrq_u64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_u64)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: U64x4) -> U64x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U64x4(std::arch::x86_64::_mm256_or_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U64x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_u64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U64x4::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
            ])
        }
    }
}
impl std::ops::BitOrAssign for U64x4 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: U64x4) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for U64x4 {
    type Output = U64x4;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
U64x4::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_xor_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_xor_si256)
    - `VPXOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`veorq_u64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_u64)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: U64x4) -> U64x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U64x4(std::arch::x86_64::_mm256_xor_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U64x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_u64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U64x4::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
            ])
        }
    }
}
impl std::ops::BitXorAssign for U64x4 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: U64x4) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for U64x4 {
    type Output = U64x4;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
U64x4::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_and_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_and_si256)
    - `VPAND ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vandq_u64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_u64)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: U64x4) -> U64x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { U64x4(std::arch::x86_64::_mm256_and_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            U64x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_u64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            U64x4::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
            ])
        }
    }
}
impl std::ops::BitAndAssign for U64x4 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: U64x4) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[i64; 2usize]> for I64x2 {
    #[inline(always)]
    fn from(arr: [i64; 2usize]) -> I64x2 {
        bytemuck::cast(arr)
    }
}
impl From<I64x2> for [i64; 2usize] {
    #[inline(always)]
    fn from(arr: I64x2) -> [i64; 2usize] {
        bytemuck::cast(arr)
    }
}
impl I64x2 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: I64x2 = I64x2::from_array([0, 1]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as i64, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [i64; 2usize]) -> Self {
        unsafe { std::mem::transmute::<[i64; 2usize], I64x2>(arr) }
    }
}
impl serde::Serialize for I64x2 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[i64; 2usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for I64x2 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[i64; 2usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for I64x2 {
    type Output = I64x2;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
I64x2::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_add_epi64`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_add_epi64)
    - `PADDQ xmm, xmm`
# Neon Intrinsics Used

* [`vaddq_s64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_s64)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.2D,Vn.2D,Vm.2D`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: I64x2) -> I64x2 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I64x2(std::arch::x86_64::_mm_add_epi64(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I64x2(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_s64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I64x2::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
            ])
        }
    }
}
impl std::ops::AddAssign for I64x2 {
    #[inline(always)]
    fn add_assign(&mut self, other: I64x2) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for I64x2 {
    type Output = I64x2;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
I64x2::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_sub_epi64`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_sub_epi64)
    - `PSUBQ xmm, xmm`
# Neon Intrinsics Used

* [`vsubq_s64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_s64)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.2D,Vn.2D,Vm.2D`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: I64x2) -> I64x2 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I64x2(std::arch::x86_64::_mm_sub_epi64(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I64x2(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_s64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I64x2::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
            ])
        }
    }
}
impl std::ops::SubAssign for I64x2 {
    #[inline(always)]
    fn sub_assign(&mut self, other: I64x2) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for I64x2 {
    type Output = I64x2;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
I64x2::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_or_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_or_si128)
    - `POR xmm, xmm`
# Neon Intrinsics Used

* [`vorrq_s64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_s64)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: I64x2) -> I64x2 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I64x2(std::arch::x86_64::_mm_or_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I64x2(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_s64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I64x2::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
            ])
        }
    }
}
impl std::ops::BitOrAssign for I64x2 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: I64x2) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for I64x2 {
    type Output = I64x2;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
I64x2::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_xor_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_xor_si128)
    - `PXOR xmm, xmm`
# Neon Intrinsics Used

* [`veorq_s64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_s64)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: I64x2) -> I64x2 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I64x2(std::arch::x86_64::_mm_xor_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I64x2(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_s64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I64x2::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
            ])
        }
    }
}
impl std::ops::BitXorAssign for I64x2 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: I64x2) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for I64x2 {
    type Output = I64x2;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
I64x2::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm_and_si128`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm_and_si128)
    - `PAND xmm, xmm`
# Neon Intrinsics Used

* [`vandq_s64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_s64)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: I64x2) -> I64x2 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I64x2(std::arch::x86_64::_mm_and_si128(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I64x2(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_s64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I64x2::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
            ])
        }
    }
}
impl std::ops::BitAndAssign for I64x2 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: I64x2) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
impl From<[i64; 4usize]> for I64x4 {
    #[inline(always)]
    fn from(arr: [i64; 4usize]) -> I64x4 {
        bytemuck::cast(arr)
    }
}
impl From<I64x4> for [i64; 4usize] {
    #[inline(always)]
    fn from(arr: I64x4) -> [i64; 4usize] {
        bytemuck::cast(arr)
    }
}
impl I64x4 {
    /// Create a vector from an array.
    ///
    /// Unlike the `From` trait function, the `from_array` function is `const`.
    /// # Example
    /**```
# use vectoreyes :: * ;
const MY_EXTREMELY_FUN_VALUE: I64x4 = I64x4::from_array([0, 1, 2, 3]);
for (i, value) in MY_EXTREMELY_FUN_VALUE.as_array().iter().copied().enumerate() {
    assert_eq!(i as i64, value);
}
```
*/
    #[inline(always)]
    pub const fn from_array(arr: [i64; 4usize]) -> Self {
        unsafe { std::mem::transmute::<[i64; 4usize], I64x4>(arr) }
    }
}
impl serde::Serialize for I64x4 {
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: serde::Serializer,
    {
        <[i64; 4usize]>::from(*self).serialize(serializer)
    }
}
impl<'de> serde::Deserialize<'de> for I64x4 {
    fn deserialize<D>(deserializer: D) -> Result<Self, D::Error>
    where
        D: serde::Deserializer<'de>,
    {
        <[i64; 4usize]>::deserialize(deserializer).map(Self::from_array)
    }
}
impl std::ops::Add for I64x4 {
    type Output = I64x4;
    ///Perform a pairwise `wrapping_add`
    ///
    /// # Scalar Equivalent
    /**```ignore
I64x4::from([
    self.as_array()[0].wrapping_add(rhs.as_array()[0]),
    self.as_array()[1].wrapping_add(rhs.as_array()[1]),
    self.as_array()[2].wrapping_add(rhs.as_array()[2]),
    self.as_array()[3].wrapping_add(rhs.as_array()[3]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_add_epi64`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_add_epi64)
    - `VPADDQ ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vaddq_s64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vaddq_s64)
    - This intrinsic compiles to the following instructions:
        * [`ADD Vd.2D,Vn.2D,Vm.2D`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ADD--vector---Add--vector--?lang=en)
*/
    #[inline(always)]
    fn add(self, rhs: I64x4) -> I64x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I64x4(std::arch::x86_64::_mm256_add_epi64(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I64x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vaddq_s64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I64x4::from([
                self.as_array()[0].wrapping_add(rhs.as_array()[0]),
                self.as_array()[1].wrapping_add(rhs.as_array()[1]),
                self.as_array()[2].wrapping_add(rhs.as_array()[2]),
                self.as_array()[3].wrapping_add(rhs.as_array()[3]),
            ])
        }
    }
}
impl std::ops::AddAssign for I64x4 {
    #[inline(always)]
    fn add_assign(&mut self, other: I64x4) {
        *self = std::ops::Add::add(*self, other);
    }
}
impl std::ops::Sub for I64x4 {
    type Output = I64x4;
    ///Perform a pairwise `wrapping_sub`
    ///
    /// # Scalar Equivalent
    /**```ignore
I64x4::from([
    self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
    self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
    self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
    self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_sub_epi64`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_sub_epi64)
    - `VPSUBQ ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vsubq_s64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vsubq_s64)
    - This intrinsic compiles to the following instructions:
        * [`SUB Vd.2D,Vn.2D,Vm.2D`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/SUB--vector---Subtract--vector--?lang=en)
*/
    #[inline(always)]
    fn sub(self, rhs: I64x4) -> I64x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I64x4(std::arch::x86_64::_mm256_sub_epi64(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I64x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vsubq_s64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I64x4::from([
                self.as_array()[0].wrapping_sub(rhs.as_array()[0]),
                self.as_array()[1].wrapping_sub(rhs.as_array()[1]),
                self.as_array()[2].wrapping_sub(rhs.as_array()[2]),
                self.as_array()[3].wrapping_sub(rhs.as_array()[3]),
            ])
        }
    }
}
impl std::ops::SubAssign for I64x4 {
    #[inline(always)]
    fn sub_assign(&mut self, other: I64x4) {
        *self = std::ops::Sub::sub(*self, other);
    }
}
impl std::ops::BitOr for I64x4 {
    type Output = I64x4;
    ///Perform a pairwise bitwise or
    ///
    /// # Scalar Equivalent
    /**```ignore
I64x4::from([
    self.as_array()[0] | rhs.as_array()[0],
    self.as_array()[1] | rhs.as_array()[1],
    self.as_array()[2] | rhs.as_array()[2],
    self.as_array()[3] | rhs.as_array()[3],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_or_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_or_si256)
    - `VPOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vorrq_s64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vorrq_s64)
    - This intrinsic compiles to the following instructions:
        * [`ORR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/ORR--vector--register---Bitwise-inclusive-OR--vector--register--?lang=en)
*/
    #[inline(always)]
    fn bitor(self, rhs: I64x4) -> I64x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I64x4(std::arch::x86_64::_mm256_or_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I64x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vorrq_s64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I64x4::from([
                self.as_array()[0] | rhs.as_array()[0],
                self.as_array()[1] | rhs.as_array()[1],
                self.as_array()[2] | rhs.as_array()[2],
                self.as_array()[3] | rhs.as_array()[3],
            ])
        }
    }
}
impl std::ops::BitOrAssign for I64x4 {
    #[inline(always)]
    fn bitor_assign(&mut self, other: I64x4) {
        *self = std::ops::BitOr::bitor(*self, other);
    }
}
impl std::ops::BitXor for I64x4 {
    type Output = I64x4;
    ///Perform a pairwise bitwise xor
    ///
    /// # Scalar Equivalent
    /**```ignore
I64x4::from([
    self.as_array()[0] ^ rhs.as_array()[0],
    self.as_array()[1] ^ rhs.as_array()[1],
    self.as_array()[2] ^ rhs.as_array()[2],
    self.as_array()[3] ^ rhs.as_array()[3],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_xor_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_xor_si256)
    - `VPXOR ymm, ymm, ymm`
# Neon Intrinsics Used

* [`veorq_s64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/veorq_s64)
    - This intrinsic compiles to the following instructions:
        * [`EOR Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/EOR--vector---Bitwise-Exclusive-OR--vector--?lang=en)
*/
    #[inline(always)]
    fn bitxor(self, rhs: I64x4) -> I64x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I64x4(std::arch::x86_64::_mm256_xor_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I64x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::veorq_s64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I64x4::from([
                self.as_array()[0] ^ rhs.as_array()[0],
                self.as_array()[1] ^ rhs.as_array()[1],
                self.as_array()[2] ^ rhs.as_array()[2],
                self.as_array()[3] ^ rhs.as_array()[3],
            ])
        }
    }
}
impl std::ops::BitXorAssign for I64x4 {
    #[inline(always)]
    fn bitxor_assign(&mut self, other: I64x4) {
        *self = std::ops::BitXor::bitxor(*self, other);
    }
}
impl std::ops::BitAnd for I64x4 {
    type Output = I64x4;
    ///Perform a pairwise bitwise and
    ///
    /// # Scalar Equivalent
    /**```ignore
I64x4::from([
    self.as_array()[0] & rhs.as_array()[0],
    self.as_array()[1] & rhs.as_array()[1],
    self.as_array()[2] & rhs.as_array()[2],
    self.as_array()[3] & rhs.as_array()[3],
])
```
*/
    ///
    /**# AVX2 Intrinsics Used

* [`_mm256_and_si256`](https://software.intel.com/sites/landingpage/IntrinsicsGuide/#text=_mm256_and_si256)
    - `VPAND ymm, ymm, ymm`
# Neon Intrinsics Used

* [`vandq_s64`](https://developer.arm.com/architectures/instruction-sets/intrinsics/vandq_s64)
    - This intrinsic compiles to the following instructions:
        * [`AND Vd.16B,Vn.16B,Vm.16B`](https://developer.arm.com/documentation/ddi0596/2021-03/SIMD-FP-Instructions/AND--vector---Bitwise-AND--vector--?lang=en)
*/
    #[inline(always)]
    fn bitand(self, rhs: I64x4) -> I64x4 {
        #[cfg(
            all(
                all(
                    target_arch = "x86_64",
                    target_feature = "avx",
                    target_feature = "avx2",
                    target_feature = "sse4.1",
                    target_feature = "aes",
                    target_feature = "sse4.2",
                    target_feature = "ssse3",
                    target_feature = "pclmulqdq"
                ),
                not(any())
            )
        )] { unsafe { I64x4(std::arch::x86_64::_mm256_and_si256(self.0, rhs.0)) } }
        #[cfg(
            all(
                all(
                    target_arch = "aarch64",
                    target_feature = "neon",
                    target_feature = "aes"
                ),
                not(
                    any(
                        all(
                            target_arch = "x86_64",
                            target_feature = "avx",
                            target_feature = "avx2",
                            target_feature = "sse4.1",
                            target_feature = "aes",
                            target_feature = "sse4.2",
                            target_feature = "ssse3",
                            target_feature = "pclmulqdq"
                        ),
                        any()
                    )
                )
            )
        )]
        {
            I64x4(
                self
                    .0
                    .array_zip(rhs.0)
                    .array_map(
                        #[inline(always)]
                        |(a, b)| unsafe { std::arch::aarch64::vandq_s64(a, b) },
                    ),
            )
        }
        #[cfg(
            all(
                all(),
                not(
                    any(
                        all(
                            target_arch = "aarch64",
                            target_feature = "neon",
                            target_feature = "aes"
                        ),
                        any(
                            all(
                                target_arch = "x86_64",
                                target_feature = "avx",
                                target_feature = "avx2",
                                target_feature = "sse4.1",
                                target_feature = "aes",
                                target_feature = "sse4.2",
                                target_feature = "ssse3",
                                target_feature = "pclmulqdq"
                            ),
                            any()
                        )
                    )
                )
            )
        )]
        {
            I64x4::from([
                self.as_array()[0] & rhs.as_array()[0],
                self.as_array()[1] & rhs.as_array()[1],
                self.as_array()[2] & rhs.as_array()[2],
                self.as_array()[3] & rhs.as_array()[3],
            ])
        }
    }
}
impl std::ops::BitAndAssign for I64x4 {
    #[inline(always)]
    fn bitand_assign(&mut self, other: I64x4) {
        *self = std::ops::BitAnd::bitand(*self, other);
    }
}
