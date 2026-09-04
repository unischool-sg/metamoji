.class public Lcom/metamoji/mazec/purchase/util/NtLocaleUtils;
.super Ljava/lang/Object;
.source "NtLocaleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLocale()Lcom/metamoji/mazec/purchase/util/NtLocale;
    .locals 3

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->en:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->ja:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 64
    :cond_1
    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->en:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 67
    :cond_2
    const-string v2, "fr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->fr:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 69
    :cond_3
    const-string v2, "de"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 70
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->de:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 71
    :cond_4
    const-string v2, "it"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 72
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->it:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 73
    :cond_5
    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 74
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->zhHant:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 78
    :cond_6
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->zhHans:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 80
    :cond_7
    const-string v0, "ko"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 81
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->ko:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 82
    :cond_8
    const-string v0, "es"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 83
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->es:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 84
    :cond_9
    const-string/jumbo v0, "ru"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 85
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->ru:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 86
    :cond_a
    const-string v0, "pt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->pt:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 88
    :cond_b
    const-string v0, "nl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 89
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->nl:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 90
    :cond_c
    const-string v0, "pl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 91
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->pl:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0

    .line 93
    :cond_d
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocale;->en:Lcom/metamoji/mazec/purchase/util/NtLocale;

    return-object v0
.end method

.method public static getMazecLocaleStr(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;
    .locals 2

    .line 18
    const-string v0, "en_US"

    if-nez p0, :cond_0

    return-object v0

    .line 21
    :cond_0
    sget-object v1, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils$1;->$SwitchMap$com$metamoji$mazec$purchase$util$NtLocale:[I

    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtLocale;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-object v0

    .line 47
    :pswitch_1
    const-string p0, "pl_PL"

    return-object p0

    .line 45
    :pswitch_2
    const-string p0, "nl_NL"

    return-object p0

    .line 43
    :pswitch_3
    const-string p0, "pt_BR"

    return-object p0

    .line 41
    :pswitch_4
    const-string/jumbo p0, "ru_RU"

    return-object p0

    .line 39
    :pswitch_5
    const-string p0, "es_ES"

    return-object p0

    .line 37
    :pswitch_6
    const-string p0, "ko_KR"

    return-object p0

    .line 35
    :pswitch_7
    const-string/jumbo p0, "zh_CN"

    return-object p0

    .line 33
    :pswitch_8
    const-string/jumbo p0, "zh_TW"

    return-object p0

    .line 31
    :pswitch_9
    const-string p0, "it_IT"

    return-object p0

    .line 29
    :pswitch_a
    const-string p0, "de_DE"

    return-object p0

    .line 27
    :pswitch_b
    const-string p0, "fr_FR"

    return-object p0

    .line 23
    :pswitch_c
    const-string p0, "ja_JP"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static localeStringFromLocale(Lcom/metamoji/mazec/purchase/util/NtLocale;)Ljava/lang/String;
    .locals 2

    .line 101
    sget-object v0, Lcom/metamoji/mazec/purchase/util/NtLocaleUtils$1;->$SwitchMap$com$metamoji$mazec$purchase$util$NtLocale:[I

    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtLocale;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtLocale;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 103
    :cond_0
    const-string/jumbo p0, "zh-Hans"

    return-object p0

    .line 105
    :cond_1
    const-string/jumbo p0, "zh-Hant"

    return-object p0
.end method
