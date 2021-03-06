# This is a simple helper class that gets a random url from teh uifaces.com
# website of varying size.
#
# TODO - This file should NOT be left in production.
class UIFaces
  class << self
    def random(size = :epic)
      self.send(size, all.sample)
    end

    def [](key)
      if key.kind_of?(Integer)
        self.send(:epic, all[key])
      else
        self.send(:epic, key)
      end
    end

    def epic(username)
      url(username, 128)
    end

    def bigger(username)
      url(username, 73)
    end

    def normal(username)
      url(username, 48)
    end

    def mini(username)
      url(username, 24)
    end

    def url(username, size)
      "https://s3.amazonaws.com/uifaces/faces/twitter/#{username}/#{size}.jpg"
    end

    def all
      %w(
        jsa
        iflendra
        gerrenlamson
        rem
        mjar81
        brad_frost
        kastov_yury
        jadlimcaco
        vladabazhan
        tonystubblebine
        mantia
        csswizardry
        ekvium
        eduardo_olv
        mghoz
        sillyleo
        idiot
        guiiipontes
        cemshid
        whale
        nzcode
        mlane
        rogie
        mizko
        adellecharles
        enda
        c_southam
        tomaslau
        sachagreif
        abecherian
        jina
        mattsince87
        nexy_dre
        vladarbatov
        felipenogs
        davidburlton
        rssems
        shalt0ni
        jollynutlet
        chadengle
        _hartjeg
        dancounsell
        adhamdannaway
        mattchevy
        sindresorhus
        kurafire
        ateneupopular
        vista
        peterlandt
        glif
        peterme
        tonypeterson
        soffes
        minipunk
        tsu_vip
        pixeliris
        jaredfitch
        robinraszka
        motherfuton
        kevin_granger
        thrivesolo
        iconfinder
        kerem
        erondu
        dingyi
        gt
        alexmarin
        suprb
        pinceladasdaweb
        leemunroe
        stillnotdavid
        boheme
        aaroni
        ManikRathee
        _shahedk
        emirik
        dannpetty
        andrewaashen
        mrjohnwalker
        arminophen
        dakshbhagya
        dustinlamont
        kfriedson
        timoni
        teclaro
        ladylexy
        _everaldo
        joshhemsley
        polovecn
        abbsol
        flamekaizar
        teleject
        brandclay
        9lessons
        ok
        do_fox
        brynn
        fran6
        itsjonq
        tonychester
        zakiwarfel
        jlantunez
        lucaorio_
        jodyferry
        adambetts
        mijustin
        darrellwhitelaw
        _arashasghari
        kolage
        jonatan
        vocino
        kosmar
        superjunaid
        geekandco
        allisongrayce
        akifyaldir
        danbenoni
        fffabs
        joelbirch47
        mutlu82
        nick_persad
        madysondesigns
        soyjavi
        kaibrach
        linkibol
        uxceo
        lobanovskiy
        engle
        sydlawrence
        claudioguglieri
        cbillins
        madebyivor
        sortino
        mikeluby
        beacrea
        alexcwilliams
        joshaustin
        tofslie
        stephane
        neutralthoughts
        jm_denis
        th3ya0vi
        dwaldron
        holdenweb
        florianmascaro
        riklomas
        jasongraphix
        ryanbattles
        adnanzulkarnain
        jinuem
        commadelimited
        steno
        themadray
        simobenso
        cristianovalim
        oykun
        nisaanjani
        angelceballos
        stylecampaign
        annapickard
        BillSKenney
        theastronuts
        syswarren
        geoffrey_crofte
        therealmarvin
        sircookieface
        ludensk
        z6v
        jessedodds
        linclark
        ahmetalpbalkan
        wiseacre
        benhowdle
        alexcican
        bmosk9
        michzen
        beastydesign
        burakdonertas
        brajeshwar
        joshuasortino
        atariboy
        artexor
        catarino
        cdharrison
        hvpandya
        jaredbooye
        myusuf3
        su
        thierrykoblentz
        celikovic
        nucliweb
        3en
        bermonpainter
        rafaelks
        horaciosoares
        dotmariusz
        oguzhan_aktepe
        derekebradley
        seannieuwoudt
        jamesslock
        madedigital
        VinThomas
        Chakintosh
        timmillwood
        victorerixon
        salleedesign
        tzmartin
        chatyrko
        vasjenkatro
        pacmanalgieri
        jeremylv
        mko
        nathanieldeal
        nettatheninja
        dreamreflex
        noxdzine
        robertvhoesel
        barthchalvet
        _victa
        thomweerd
        twikito
        orbuch
        olivierpineda
        tvrdek
        curiousoffice
        jpfaraco
        coreyweb
        ramikh81
        markdalgleish
        saschamt
        mds
        andretacuyan
        jackmcdade
        jasonlong
        draganbabic
        chexee
        moscoz
        littlenono
        axel
        p_cherkashin
        gabrielvaldivia
        jaavid
        nachtmeister
        mademyday
        dccfoux
        osvaldas
        christauziet
        waferbaby
        chandlervdw
        jorgecerda
        ankitind
      )
    end
  end
end
