@testset "Offsets" begin
    @testset "UTC" begin
        before_leap = UTCEpoch(2012, 6, 30, 23, 59, 59.0)
        before_leap_dt = DateTime(2012, 6, 30, 23, 59, 59.0)
        start_leap = UTCEpoch(2012, 6, 30, 23, 59, 60.0)
        start_leap_dt = DateTime(2012, 6, 30, 23, 59, 60.0)
        during_leap = UTCEpoch(2012, 6, 30, 23, 59, 60.3)
        during_leap_dt = DateTime(2012, 6, 30, 23, 59, 60.3)
        after_leap = UTCEpoch(2012, 7, 1)
        after_leap_dt = DateTime(2012, 7, 1)

        @test tai_offset(UTC, date(before_leap_dt), time(before_leap_dt)) == 34.0
        @test tai_offset(UTC, date(start_leap_dt), time(start_leap_dt)) == 34.0
        @test tai_offset(UTC, date(during_leap_dt), time(during_leap_dt)) == 34.0
        @test tai_offset(UTC, date(after_leap_dt), time(after_leap_dt)) == 35.0
    end
end
