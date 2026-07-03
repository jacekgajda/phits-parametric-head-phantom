      function usrdefres(heat)

      implicit real*8 (a-h,o-z)

      include 'param00.inc'
      include 'param.inc'

      parameter (a = 0.121d0, b = 4.72d0, c = 1.32d0)
      parameter (const = 235.4820045d0)
      parameter (opt = 1.d-12)
      parameter (twopi = 6.283185307179586d0)

      fwhm = sqrt(a + b * heat + c * heat * heat)
      sigma = fwhm / const

      u1 = opt + (1.d0 - 2.d0*opt) * unirn(dummy) ! u1 clamped from opt to 1 - opt
      u2 = unirn(dummy)

      gauss = sqrt(-2.d0 * log(u1)) * cos(twopi * u2)

      smeared = heat + sigma * gauss

      if (smeared .lt. 0.d0) smeared = 0.d0

      usrdefres = smeared

      return
      end