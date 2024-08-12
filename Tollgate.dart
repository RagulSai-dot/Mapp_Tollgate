import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toll Gate App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.orange,
        fontFamily: 'OpenSans',
      ),
      home: LoginPage(),
      routes: {
        '/dashboard': (context) => Dashboard(),
        '/tollList': (context) => TollList(),
        '/addToll': (context) => AddTollPayment(),
        '/settings': (context) => SettingsPage(),
        '/help': (context) => HelpPage(),
        '/fastag': (context) => FastagPage(), // New route for FASTag services page
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUQEhIWFRUWFRgVFhcWFRUWFhcXFxUYGBUYFRUYHSkgGBomGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGi0mHyYtLS0tLy8uKy8tLS0tKy0tLS0tLS0rLS0tLS0tLSstLS0tLS8tLS0tLS8tLS0tLS0tLf/AABEIAKsBJwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAADAQIEBQYAB//EAEkQAAIBAgQCBgUJBAgGAgMAAAECEQADBBIhMQVBBhMiUWFxMoGRobEUI0JSYnKSwdEzgrLhFUNTY5OiwtIWo9Pi8PGD4wdEVP/EABoBAQEBAQEBAQAAAAAAAAAAAAABAgMEBQb/xAAuEQACAgEEAQIDBwUAAAAAAAAAAQIREgMTITFBBFEiYfAUUpGhseHxQmJxwdH/2gAMAwEAAhEDEQA/AKpUp4WiBKeEr9CfEoGFpctFC07JQtAQlPVaIEp4ShRgWnBaIEpwWoUGFpctFy0uSgoDlpctGyV2SoWgWWuijZK7LSxQGK6KNlrstLFAYrstGy12WgoFlrstFy12ShaAxXRRsldkqCgMV0UXLXZaAFFNIopWkigBEU2KNlpMtUlAStNK0fLSZaCiPlppWpBWmMtARyKGwqQVphWhCMwobLUkrTClQEQpXVIKUtQE8LTwtOC0RVrVloGFpwWihKcFpYoEFpwWihacFpYoGFpwWiBacFqWWgQWnZKIFp2WlloDkpclGy12WpYoDkpclGy12WlloDkpMtHy12WligOWuy0bLS5aligGWuy0bLSZaWKA5a7JR8tJlpYoBlpCtHK00rSxQArSZaOVpMtWxQDLSZaNlpMtLJQLLSFaKRSRQAStDZaklaYVqkIxWmMtSilMZaCiIVppSpJSm5KAjFK6pGSloCQooqilVKIq1LLQgWnBacFp4WpZaBhacBT8tLlpYoYBTgKdlpwFLA0CnRShacBSyjctKFpwFOC1LLQzLXZaJlroqWKBxSZaJFdFAMiuiiRXRSwDiky0WK6KWUFlrstFikiligRFNK0bLSZaEA5aQrRstdkq2KI5WmlakFaQrSxRHK0mWjlaaVq2SgGWkK0fLSZaWKI5WmFKllKGUpZKIxSmlakFKaVpYoj5a6jFa6liisXpPZiclzbaF9npVydKLefKbdzLybs92srMgcqy4SnhK8m9I9O2jVr0ms/Uuc+S/wC7nSjpPa07Fzb6o0203/8AIrKhadlqb0hto1adJrJ+i40n0fdod6f/AMSWPt7T6B9nn7qyOWlim9IbaNcektj7f+G/6Uj9JrABIDk8h1bifdWUC0/LTekNpGsHSTD97/4V3n+7Tl6R4fbM+8fsb3+zasoFpctN+RdpGvHH8N/aHeNUuD3laeOP4XnfQaxrI9s7DTescqmiqppvsbSNcnHsIxhcTZJJiOsSdN9JqRZx1pvRuI2gOjAiGkKZ8YNYyDXHDqd1B8wDTffsTaRupHfSxWDGCtja2o1B0UDn4UdLcbM4gz2blxRJ8A1a3/kTaNrFLFY5btwCFvXRAgdvN/GDJ8TR0x+IH9ex29JLZ2+6o3q7yG2zVZaXLWXXi+KBnPaYQdDbYa8jIepK9IL062bZE8rrAxHcUgmfEVVqomDL/LSFapl6R/WsPt9FrZE9wlh7akrx+xsesGsfs3PrlQdK0px9yYsn5a7LURON4Yx88qzEBzkOugENGvhUq3irbQFdWnaGB+FXJEoXLSZaLFdlq2SgOWkK0bLSZaWKAFaTJUjLTStLFAMlIVo5WmEUsUBIppWjEUhFWxRHK0MipJWhstLJQAiupXWupYo8UvOymGu3gfI+49ZrTRif7+97P/sq5w+BLFiJYzAAAYqQRrDaRtqD3V2Kwmg6xRO3alD5AkCR5TXxcmfRSsqBiP7+7+E/9SjDiC83u+rMPjdI91PfCQY6k+16aMMP7Bva/wClMi4ku5aGUOt+8QdiCWHl6Qg+BqGLjH0cU37xuD9R76kYY9XOWy0HcZmg+ojfxqQcFZyZ1R+4qWgg/h1HjUzouJER7v8A/S0+DA/B591GzXh6V66vmrfrVhZ4ECFYKRmXOPnFJyn7OWdYImhnBi2NVv2/3wv+gVcxgRPlbj/9ojzVh8RSf0hc5YsH91z8ENFkFtBcaeyJyOxPd6PltrUrGcIVEL3AqNoRbOl069wc5RudRypufMYENeI3uWJX8J/O3UmxjcXur5wN4RTHmMoNNSxbW3mRgGIDCRmefqgxAE0S7h+yLedQfSac2pOu4U+Puq7hMBG43iQe0FXwK/zqVa4viztbVvJGP8LU23wnE5ZVjl7zchP+ZC09MDKg3eqY/VUJnH4XRfjTd+Y2wo41iB6WH/y3B8a7/iVh6Vn/ADkfFajrh4fs27oEaDVifHsldPXTnuXlhRdcffDIfIn+cVrdZNtFmnSC1Et2T3Alj7hFcvSOwdw481H5Gqx0xQjNLfurc9+vvoDkqYfqvH5tDHn1S0WqyOCL9eOYc/TjzVv0o44nYP8AWp6yB8azIezzQN9xbg97XAPdTGFokEWnA8biyP3ch+NaWqTA1q4i2fRuIfJlP508rWSY8hduJ4BVHvVl+FNOGUxrz1Zc4J8SDInyNaWqTA1pFDawpMlVJ7yBNZZcHfk9XebSN7hTf7zROlHXE4i2YvNeQDf5pW/jI08Zra1EZcGaa0SsZXdY2C3HA2j0QY2PdUu1xK+u14nwdUYbc4APvrJv0lA9FGbxZlX/ACqp+NGwnSLNpkWeQzlZ8pET4E1taiM4Gyt8evDdLbeTMnuhvGpVrpApJz2riDvADg+pJPurG2ukVrZ0uWyNCCAfgZ91WOE4rh32ur+8cp/zRWlqfMy4GtscTsucq3FzfVJhvwnWpUVnFtKwgww8YYUS1h8voMyfdY5d/qGV91bUzOBekUwiq23fvrpmW794dW3rZQVP4RRhxVR+0VrXiwBTzNxSVUfeIramjLiyURSRT1YESCCDsQZHtrorVkoGVobLRiKawpZKIzrXURlrqoo804MLjadWVBOYtJUmIgACDlkzOo151O6ScNv/ACa6WAChS0TrAM7Dnp4VO6OYCct5+0VEIDGRR9iJ/IidqteNXVa09tvpKViQdwRtvXy4rjk9rZieF3/mbfbUdgaMJOmn1h3VMTEf3lv8J/31R4W9ct2UCFXEsCVdYBmRvrzPsotviV6RIAE69pDHuryOPJ6E+DQYjGiOybc/ZV/Z+0NSugtotcuOWQ8vnCoHLSGJE9o1mLuMukekp9n6VfdHuKYi1YHVhSbksxI+qxCgEaxH5VUq7K2ehPhRl9CyT5WjuY7Mj0fLTejvbVrQtXEtlV8ATr4prWQscfxg9K3bYAaSl0mfMeZ1qdb6SuVNu5ZChoUlSxPdu9rT8VdG49mPiGngqdu5ahWVWaJ0IzHKoDAk6Ad3nVtc6H4a52Rh0QsILr1vZZtjrppMmg2sdBIAOQkZs2GcmIAJW4s8hppQLnHr+VlFm0RrqVuBo1+zppWU4laZkcNwGcPYhPnjeuWtyesK3XQECdFXLE8/VWz/AOEbIgA3kbSWCrm8TIGYeU1RYDE3EdbptrdhYQOYAnmO87+2avF6RuGj5NbIJAkXWXnvAM7cq0q8kd+Cvx3Q20TC377OdYdD6iWOupEVIwX/AOP7QIBvDX0s6t/pj41Zpxco/wCyLmNX64LDQZgEz3CpuG431hK5TaC6sxuo3Z17icvmfjtn4Oy/F0YnG9F7wb5kW27RTRZnUk6XJ5LI8DQBwe91gtsbpYK5yqpQiCpgBiukAnT6vOvQ7eJtEDKXIGpyhbnLbIJYHXu5UHiF5HQqGRRcyqsq1pmI1MIZJ38PVTFULPPbmGYEqbV4xvnUBfWTmFLftdmHW3lI2a6keHoAEe2vVbWIskRbuKwMdm2yNMbaEbU3F8KXEAC8isF0EIIUTMZgNT41HBrplUkeOYXBpLDKNDp6ZO06RIjzFEfBT6Jy/wDwhveUFbnongEb5Vay9sZCrQpyg5hsQZ9GqrjDFH6qzc69tR2baaH1LDer28qy8uy/CZC7hnWc11gJ0AGUnx0I09dXvCcAhwpuXLbu1y69vMGbMqrZFwEAyvI7jnvRn6O3VAvXyqZtmecs+ECPVVxwrFW1tC18ptq3XM+zBWU2cgUkCPS17WlbUuaMteTEY7hqlBdt/OLvlPzbKuYoCVIae0GGhNR8OqLmlXB+jluBQT9oZNPMTW8xGDcWHdlQfM2/nFCm0T8qOggm3sQYH1vKq7DDMYXeP6u+yjzKF4PkCtbTMtGVxN1TEWx9rrG6z2GBUPqVkkosfZzKR6ySPdWl4rhMShBcgoT6Re4D5EG4QPME1VXULHsZojUEsY/ekaeYrfPRgLxfgFyxAbtLAJOjKpI9E3AAQ0FdIEyDrFUeJwDn9mxjQQCQdeUgAHbmAa9a41gw1y4DIJw5MH0WAtsR/mA8OzvWDxHCD1SNIlkLxMggNGmvh796ttCkzLWzkP7R0Yd2ZWHgSIMVa2ekeJsnIblwxyZFf3sZ99dctE6HKR3GD7NZHqpL2C7IBBAKyvKPFW/Izt660pGcS6wnTsgxcs5vFex7iT+VaLhvS3B3DDObR/vBlH4xKj1mvL3RkbIbj8jI1jXnrp5UTPP030J5f91dFNmXFHsq8LSOssN1ZOsprbbxZAcrT3iD40tjEnMbVxclwCY1Ksu2a20aidxuJEjUE+S8M4tesHNZu3VjUrAKttoyEkH/ANwa9E4L0jTG2zbZerxNsdYmmjlQScmpIkSpXuJ35dIahiUC+imkU+kNd7OVAGFLSsKWlko8nwnExZlOpdY0A6yRPPKApE+vlSG/n/aX2B5KmQqR4rAPtrYcIwpwwNq4zroSXm1lB01LmCu48dNKuL13h5AS41q5A3eLjbblzJn1zXhWm2u6PTlXg8ywuH6pSttg8tmhlA5HuY+r10tvF3c2U2ViJLECAO8aGT4V6G3Rjh9zW3CkmJtXTqe4CSJ8IqBe6BKq/N4pkAOmdVjU96leZrD9PLvs6LWiZizxe0BDWm0ntFUBOvMZABRV4xbPo3LqD7K2yPhVnc6I4oZgty3cyRm5HVc2gYEnTuNQsT0bxIY22w5JChjlWTBkAjKZ3U8uVed6buj0XxfgfgceHfTE3YQZ3BUCVXXkBAp5xNwksMao1JgtlA8ANah8NwLWlvm5bdAbRnMrKQcwUAFwJ0afbUBrAbRXYczKTAB11U71hx5oZF/hnxmrrea5pCBbiwSd2MkSB3d5FNPywOqu98gkTDsVAJ1zEaCqe5bGmVkgdlQTlMch2gNfzNX/AArDucTZUhv2NsvrovzIOWJ3kiT5eNFG2G+A/SHFPayIrMgyBiVYrrrEkev21BwOOvGLr3buT6Cda8ue8meynjz2HhJ6T426uJcK7BECrlXYtlBJbuEMPE+8QcfxZxduIFtkI7LLIpCqGIA23gbb6VJr4maj0Tm4viC0C62Y6wDCgcyZ0CipDcauquUXWYzJYganuUEaD3mqH+llJKiwhzEEhS6ExzOVoA8OVWrvZti0/VsWuKcoRw0Q0SAwOY7+FYUbLZa4bitxR1l9l1ErbFu1nbxZsug8fjT8P0kuzmYItvlIeTHJFza+ZqmNu0SHe4/aOgdFJJ5zD9ojTl7am4Tg6u2a9fQA+gpzKXEkbEaQQRB7u6usdKT6MPUiuy2wHSMSzphwg2Z2uhVAH2im+u2tCwnSrDdZKm6ADqxLm2Ty2YE6xplk0ziHR63dAAbMF2VLttogxLKG09h8+QpcJ0bjF2wXLhJuFQOwmX0QGiCcxXbuNdn6ecFk2clrRk6SL67fW2bma7k61QGExmCMxAA3P7Q6Dv10onDuLWrJMWxBAIuMSHPhqMm/KY2JrD9OrzXMSba6qihYJCqWOpJ+tuojwqpwWBuiMt4Jts7oNdoVPS9tSEa5YnK+Eet2+M2WBuMdRyaAgPLVT2zMcgNqiY3hVnENnuWwxictsIhjkXdRCjUGSNeZERWR4VhW16y+ziCRltQSY2DI06wNak2L2J1NouNAdQQdToZOjbb11zic6YfinBXt5cPbcHMTIzBUiWYB2JCmMoM95HOqyzwxwMzhQPAt8at+knEmw1lWch7p7KAgRJ1OgA0HfzPnUrhnTdXtJhr2GtkPkWR2W7RXWRrzEnxNXTjkm10JyxpPsz9uGYW9ToSJkCQJj2eVXGF6SYZ0XD3MHbS2SASshlkgFg05pjx5VIx3BlVxctOCM5zKAcqjeA8doxOkD86ocZdsWmKlizfVykgb6SBApljKkKyVs1GJ48MKxw62TlRjbKhg0SDLEXDsQZzAzrrylE4xhrqBP2ZVHAFwCCScwykSO+Ziq08GvXRYvWRmS5bD3WcjstmOfUwSO7Q7VBezbstlfE9a86JbCKo8Gdt/aDXSm+zNpdEEYcT2hJ7hlA9grTYvhC3LFogbpaXlAY5sw8GHPzqBeRtgAoPcB3c2BM+6olrFmwwcvrIMAEgkbSp9PfuqSS8Fi2VXG8FCcw1sqROYGGPokgev1ctap7YJ3n/mH2aVe8Uv3MU2loIqxoJAnLlE9YpHv0k78+wfALjMgyyWJaAqTkBAbIzAKSARpM7VnLwacPJTlYIME/4m9XnRrhlxr6dXIKOrOwJIVVM5SSfSbaPE1pOGdDCuU3XAAnspBMFi2XrCBpLNsOe9afCYJLa5LahVHIfEnmfGusYN98HOUope44CkIopWmEV6DgBYV1OYV1AeYXOk6OMrO8dWdWUyXlRDZWaRlB8PdVXex6zpkj7OYecroTUy5wq0ySsDMQASDv4a+FVuJ4DdXVYYeBg6b6V4pRbR6OC5u40ItpVlSy52NslTLN2c0amEy6eJrR9FekTFhZvMWVmAVmJBB7j3yfjXm+IzW1UEQc7yCPs2/wBatuE4d4F9mVVmYL9oxDEKm50HhWY3F8Bo9tNhTvPtNLZwqCSsiRrsZHrBrH3+OkW+ssvdI/vFEHX6MyCOU8qkYbpZbgKRfz7EdVbI03jtiRpXeWpBO6IlNqr4L49o2I0yu+48CBI8QfdUG50Psv2m1OupVSR64ofCONEvcU2+zbtNcBiGYqpaI22nXSq88au37xt2rr21EEAKIKrGYlxrJM6T3anY+fW19PTi5z5X7HSGnKTSiW2J6IYYkfNAS30WuLyJ7yBt3Utjo+tq6LwA9AWhrJAQIupgckqibj15La37d83VcSmYQPSy5gGAP04AOvftpo+E8QuXmYPGVBbggbs9oXHJ79WFTT1NPWWUV/KK1PTeLK7F9Gg9xrhLzchuxC6FTlBJcT6J5VEvdGb91S6lYc5gCFIGbfRl35TPKqLHY5hebrGOVnLKWLNCjNChQCYIYR5VqOH8ce2YLhlyh8o5IGy5oI2MHmNe6YHk1dTRjNKdq/rs9EdyUXSRTr0VuWw0WU10ObJGnOAy6eRA0mp1zhRNtEWwrlLZnK1yRLuYWM0jUb1eY3pdYVurB1BCk5SRmZgqgR4tvyof9PgM90AAAJbaZAzs2VBqNdYG3P2a1dTQ0XUpP+SR3Jx4SMje4EyIWXsPzVmIbaea7+eWonFGKNaWXB6pAWyzBMkguNJknQVe4rizYuTbswQGz9sAjSCfEEEQJ8aifL7rYWbSguoti4pBJ6tj2HUeDc+6a9UZqLpPg4NOXaKnhPD8RfaFxDohuFYQchGshtfTHftW46N8KNu2SzsxLES50ADHbWIkn2DuqkwFnELdthmeTqwVUZRIH0hqBMaaarWr46epwyJmM5raZhOZu0uY6Dc/nXOTyfZYrEoE4BhCr3LxHWF3Paff5rOSFblmPKpeGwWHRmAtWxCspaFiSLcKBuCM28czFZHFEi8py3GlxrnOk+HcJJ8hVjYwFlrlwKhZ0JLNnlcrBVVpn6zgQJ3paaJizWYnieHVsue2uW4dZQKB1R29c6/yqDwWwvV9erdg2lBOYn0c2fWdhMeo1S8JwZxGKNkorICxNyCGjLvrtqRoTvV10qxa2wmDtLCwucDZUkBV9epPgPGszVs1FVyeZdMbrYhxiFZTbGiKM5YAOAZGWATMnXl4CptrhV1kwzJbY62TIUn0kskb+vfuNROkuFTOTkXe2D2RMF0gaeEj1nvr0DhlhcDhBiL4hgiAIBBUlUUIANMxIEnl6jXoyxXBzxyfIPjnEfk9pA5LtsAF7IHM5Qeys/GoOE4acfcF3EWsttQBmhVZwvoplAk6fS3A5mtHgOJJiMArXFGe4Xtsq6HOj5lI5gZWTXw8ah4zEdSgRVZApUo2oBbeBI7R5z4VqFRVvsjuTpdHdLuE3ewWdbdlU+bsLmGYiAMwEA5ezpOkDvqmwnBrNlEAUKTOXd2TtcixiII1M77VeW+IviLua+w61VRFsgMAofN2+4aoTvvA2ihXbvacG0rqhPaMyFHosO0NT2zz2FWXIjx2VRwqlsocqsatlZ7mctqAZXKsd3M0ZeAYR9XN24Bl2Cglte8lm7tIgjxFR+NcSNl1AyiZLhcvK4wMxOpATu2rO4/j/aQoNUPeQD2p176KEvAlOKXPB6FZbC2ouC02uglQxGWObGQZPfR249ZP0XP7o/WvKsRxu7cS3aYKcgIBIknMQdZ+6BTsPxm/bR7YaAw5jUbHsndZgbVt5QMKUZnpZ6S4ecstPd2Z7/rVAx3TCyo7CszcpAC7TvPdBnWvNeHuTdBHINP4GifZ66F8p013ET569/nWHqyLhE9Hs9M7f0l2Gsbs2mw5fS93jUDifTvXLZSARIdhJ5TCju1FYa3j9NCNtqD8vOh002Ed1Z3ZjBF7f45iboM3yQDpBCHfSYiuqgXFkHs6DwpKw5zLSLSwsWbQEgdcOf22qeSSee7/AMafpTLWECIqXD6LZoUjeSQDy507F4xba9r0j6KDczrLHu1rs+ERcsFav2w1xbyBxn0BEknqrfM7R7dak2OrPZCqNAJ10zE7yRt6M9xFUTRcbMyhmJ7uXOKtUXKEMACNRGkRqCOek1iNmnRp2wITDPla01wsoCh1BCEMGGXVT9HWZEc6srHFE6xFvKzW8wYgPmjmQSPHwjQb1S8MLduyDqgzj6RNvcSeRAIPkfCtD0etobgNxhE8/wD3XNxllbOilHGkCx2IwpxIvWrV3KPogNmIy6gPyMSPdzmuV0N4utm5bWdCRlIDKNCXQhoyxNbi/wBQLiuMuWNYgj3k1S8ZvIGm1ej7v8hUnBzVNIzCSRXDo9cZFW1bU21YZAhtsqr2m5eItmrxrPVWzmnNJMGeVq2oiRoJU1T2cc4OlwE940PtqQOkV5TqS3mAR+tNPTx6RZTsyzFUZStu9IAILP6L8x2yQQJPKlsYe40SuhXIwy52CAzlBUEbmtPe6QC5AdBv/wCQDVVxbFqLT9TZLNEKA0HWQdZ3Ek+s1yl6W17/AIG1r82dhcKrXbgDMjEMw7EOFHKSNAcwkVW8Sxyej16AALIbMe0hldCv0SARB35Cs2mKxlvq2OHvsyDI0lmS4msZhGjgfTGvwoY4riYFtbN4qLnWAXHOeIMIznVlDQdeQg1wehqfdv8AzX17V/pnTch7/qay7ilyhmeQQwzBlMhR2jrpAMeFIuNQEkAhidWHVzCyAk5wSN9NANaqcNw/rEU3LCZsonMimDzg89aV+jqf2A/dbL7pFdJeklLyyL1CXsaHh3HlS6Llx7jADaFCiASSO1G5Ub/R7gTUzGdILV+4pGZcqswUkSTbcF4CEzDLlInke8E4m50etgareXyuORqCDu3cze099KvDgGBF6/IJIJYyCdCQSJBI50+zaqVKRVqwb5Rd3eNqihy5ylHuhs+aVylWIYbwI9bDTeqDh/SCyW6xrhBJgK18MAO0BOYidU37nXuJE2xgrQjt3iA2bL1sKWmSSoABkjXvqfgcLhVXKbbHtM0kofSYsfeTVh6WSTV9iWpF10E6PdL8PaVslxZIFz5y4suGAEb6MmvY0PdNVWK47muOwIu5m1ZRnG/ZJyKY1CkjQ5SdARlN4mEwfLT91T+VFGEw49G6B+7Hwrp9m/uZMn4SM/h+NJnR2sB2DZ5e2xObdCwUASsEbwCEOxlZmO49dxDnrLD5QroAoUAhnWGALmHyjQnbLtrAtGwyH+uU+eUfzoT8PHLqm8gG/wBNIekiv6mHqz+6VODuX7Yi2mg26xhnMR6RzneI/e55e13DsJdtsT1ecErMvmPZ5jWEJk7HkPITr9kLuEX1KP0qJfxSAQFL/dLn/XFb+yr7z/Ezve8SdfXMWcK1tnAL5dSTzkuSSNSPI8qzirxHMzM3pDKRmDDLOgC5QB2c2vMnlT73ELv0bDx4lz7tai3OL3xurL5Sp9pFbwa6M5QfZOvXb7LDqQcrCVKxJAns6c55/HTPXeHuPPzUf6vP2VPPG3O5Y/eZW+K0z+kxzT3Wv+nVW4vP1+BHHSfn8v3Ky2jg6rp5gkR3CfDaY19dXlrjeVDFu2GIy620nlrm37xpqT3bmFcxSnkB/wDGlM61fD/DUfA1ak/Jmor6/ckYfiNsABkugrIGW8+U9xgvPqO1CxmMQgKtjNvLXDmYTtruw33mmF08PYw/OmHL4e1v1rRlxG2QkjSd5zKG5cu7XlUtrVgnkPO2PcM2tQ2jv97UJj4+9v0pijLRLv4XDxIYz4WwPg9LVXcLco9q11KQ5LPH44WtNGYiPun8z+tUTXWYyxJJ3J5Cmvck5jr3VxOnnUfJS34CAzMSNAI8p/lNWeIIy6cqicGTLbnmTP5frUm4CQdeRqohL+WmzdS8o7YIOuxAUAqR3EaEdxNavA4m2CtxAuRxIncd6mOYOlYu4EckFiMoOwE6d1dwniMSgJgmVBiSQIPgCQPdWmQ9GvXbZMqVHf2dfHUioWJA759QHwqktcVjSVPq18jRf6SPICPKiQJDQKb15FR/ls7iu6+tUQlriu8e6jLfHdUDNNcJFWiFmlzzHrp+YHmfXr8arFc08YgDc+/X2UBaPfJESJ5SJHsBFCw6tMuykdwtsvvDGq9uK2l0NxB5moNzpHaG0t5AfE0tDk0rkcgvloT7yKaiDXrDl/cY+06istc6VfVt/ib8hUK90kxB2cL4KB+c1MkKZrr1i2ScpnyCifIZ591Q7uCWJPvBHvIj31j7/ErzelcY+uB7BpUXrTvUyRqjWXjbGgBY/Y7R/wApNV2I4jl0Ft1P2iR7qqVx9z+0f8Rj2TR7fFro2b/Kvv0qcAM3F7vIx7/jQnx7ndj8PhThxUH0rFpu85WDe0GkbE4c72XXxS7PudT8aUiqckC+UnvPqJFccUe8+uD8aVksHa5cX71tT71b8qF8mB9G9bPnnX+JQPfUwRta815HfKPBfwgfCKeuLI20+67D86AcJc5AN91lf+Emg3EZfSUjzBHxqYl3n5JpxZP0rn45+IoZug/SPrRT76h567rKUNxPtEssPrJ60A+C00jwQ+sj8xUbra7rKvJLi/H1+ZIKH+zHqLH/AFUNlA3Rx6/+2hZhThdjZiPWacionHJ9oesH8hTCF+s34R/uonXHvnzg/Gml/BT6o+FLGKBsi/WPrH866nFh9X2E/nSUv5Ex+f6/8K1dfKnDU0h2NPwnpgeI+IrBDRYdIAHcBRTEbxUe65CkiovXMQde/kK2QWzdMuSN1JHxqOgACnnBg85zNREYwfuH8qg3v6vzb4tRkRosPiAy5uY0b9ak2cUKpeHHtr4jXx0ol4wxirdCi+F8GkOKA5/+eqofD7QYCRP/AKqHcYyRymrkSiyv8SA9ndURuNsD2R7T8RVaTqa5BoazbLRMvcZvNpIHkP1molzEXG9JmPmTHsppphNSyjhXE0grpoDsxpc9JTTQD81JmoZpoNAGzUuagzS1QEJrpoZrpoQITTc1NFIaAdmotvFuuiuw8mI+BqOaSaWCU2Oc7w33lVj7SKT5SvO2p8sy/Ax7qimkpYoldZaP0XHkwPuKj412W2drhH3k/NSai0lWxRK6nuuIf3sv8YFccJc5KT92G/hmolJQBXBG4I8xFMz04Yq4NnbyzGPZRcLfLtDZT5os+2KAB1tdVvi8BbAkL7z8JpauIyP/2Q=='),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    fillColor: Colors.black,
                    filled: true,
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    fillColor: Colors.black,
                    filled: true,
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toll Dashboard'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Total Payments: \$200',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 20),
            _buildDashboardButton(
              context,
              'FASTag Services',
              Icons.local_offer,
              '/fastag',
              Colors.teal,
            ),
            SizedBox(height: 10),
            _buildDashboardButton(
              context,
              'View Toll Payments',
              Icons.payment,
              '/tollList',
              Colors.orange,
            ),
            SizedBox(height: 10),
            _buildDashboardButton(
              context,
              'Add New Toll Payment',
              Icons.add,
              '/addToll',
              Colors.blue,
            ),
            SizedBox(height: 10),
            _buildDashboardButton(
              context,
              'Settings',
              Icons.settings,
              '/settings',
              Colors.green,
            ),
            SizedBox(height: 10),
            _buildDashboardButton(
              context,
              'Help',
              Icons.help,
              '/help',
              Colors.purple,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardButton(BuildContext context, String text, IconData icon, String route, Color color) {
    return ElevatedButton.icon(
      onPressed: () => Navigator.pushNamed(context, route),
      icon: Icon(icon, color: Colors.white),
      label: Text(text),
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: Size(double.infinity, 50), // Make button full width
      ),
    );
  }
}

class TollList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toll Payments'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            ListTile(
              title: Text('Toll at Main St'),
              subtitle: Text('2024-08-10'),
              trailing: Text('-\$20', style: TextStyle(color: Colors.red)),
              leading: Icon(Icons.location_on, color: Colors.blue),
            ),
            ListTile(
              title: Text('Toll at Elm St'),
              subtitle: Text('2024-08-09'),
              trailing: Text('-\$15', style: TextStyle(color: Colors.red)),
              leading: Icon(Icons.location_on, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class AddTollPayment extends StatefulWidget {
  @override
  _AddTollPaymentState createState() => _AddTollPaymentState();
}

class _AddTollPaymentState extends State<AddTollPayment> {
  final _amountController = TextEditingController();
  final _locationController = TextEditingController();
  String _selectedPaymentMethod = 'Cell phone bill';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Toll Payment'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                labelText: 'Toll Location',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Choose payment method',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildPaymentMethodOption('Cell phone bill'),
            _buildPaymentMethodOption('Google Wallet'),
            _buildPaymentMethodOption('Credit card'),
            _buildPaymentMethodOption('PayPal'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final amount = _amountController.text;
                final location = _locationController.text;
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Payment Successful'),
                      content: Text('Paid \$${amount} at ${location} using $_selectedPaymentMethod.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethodOption(String method) {
    return RadioListTile(
      title: Text(method),
      value: method,
      groupValue: _selectedPaymentMethod,
      onChanged: (String? value) {
        setState(() {
          _selectedPaymentMethod = value!;
        });
      },
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account'),
              onTap: () {
                // Handle account settings
              },
            ),
            ListTile(
              leading: Icon(Icons.security),
              title: Text('Privacy'),
              onTap: () {
                // Handle privacy settings
              },
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              onTap: () {
                // Handle language settings
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help & Support'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How can we help you?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.support_agent),
              title: Text('Customer Support'),
              subtitle: Text('Contact our 24/7 support team'),
              onTap: () {
                // Handle customer support
              },
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Send Feedback'),
              subtitle: Text('Let us know your thoughts'),
              onTap: () {
                // Handle sending feedback
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Optimized FASTag Page
class FastagPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FASTag Services'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: 4,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return _buildFastagSection(
                title: "Check Vehicle's FASTag",
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Vehicle Number',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality to check FASTag status
                      },
                      child: Text('CHECK STATUS'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                    ),
                  ],
                ),
              );
            case 1:
              return _buildFastagSection(
                title: "Instant Recharge",
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildFastagButton(Icons.account_balance_wallet, 'UPI Recharge'),
                    _buildFastagButton(Icons.account_balance, 'Wallet Recharge'),
                    _buildFastagButton(Icons.login, 'Log on to Bank Portal'),
                  ],
                ),
              );
            case 2:
              return _buildFastagSection(
                title: "Activate NHAI FASTag/Wallet",
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildFastagButton(Icons.check_circle, 'Activate FASTag'),
                    _buildFastagButton(Icons.add_circle_outline, 'Create FASTag Wallet'),
                    _buildFastagButton(Icons.account_balance_wallet, 'Access Your FASTag Wallet'),
                  ],
                ),
              );
            case 3:
              return _buildFastagSection(
                title: "Buy FASTag",
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildFastagButton(Icons.location_on, 'Search Nearby POS'),
                    _buildFastagButton(Icons.shopping_cart, 'Buy Online'),
                    _buildFastagButton(Icons.link, 'Link With Bank A/c'),
                  ],
                ),
              );
            default:
              return Container(); // Should never reach here
          }
        },
      ),
    );
  }

  Widget _buildFastagSection({required String title, required Widget child}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 10),
          child,
        ],
      ),
    );
  }

  Widget _buildFastagButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.green),
        SizedBox(height: 5),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }
}
