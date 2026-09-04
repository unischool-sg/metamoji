.class public Lcom/metamoji/nt/NtLocaleUtils;
.super Ljava/lang/Object;
.source "NtLocaleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLocale()Lcom/metamoji/nt/NtLocale;
    .locals 3

    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18
    sget-object v0, Lcom/metamoji/nt/NtLocale;->en:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 21
    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    sget-object v0, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 23
    :cond_1
    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    sget-object v0, Lcom/metamoji/nt/NtLocale;->en:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 26
    :cond_2
    const-string v2, "fr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 27
    sget-object v0, Lcom/metamoji/nt/NtLocale;->fr:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 28
    :cond_3
    const-string v2, "de"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29
    sget-object v0, Lcom/metamoji/nt/NtLocale;->de:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 30
    :cond_4
    const-string v2, "it"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 31
    sget-object v0, Lcom/metamoji/nt/NtLocale;->it:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 32
    :cond_5
    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 33
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    sget-object v0, Lcom/metamoji/nt/NtLocale;->zhHant:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 37
    :cond_6
    sget-object v0, Lcom/metamoji/nt/NtLocale;->zhHans:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 39
    :cond_7
    const-string v0, "ko"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 40
    sget-object v0, Lcom/metamoji/nt/NtLocale;->ko:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 41
    :cond_8
    const-string v0, "es"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    sget-object v0, Lcom/metamoji/nt/NtLocale;->es:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 43
    :cond_9
    const-string/jumbo v0, "ru"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 44
    sget-object v0, Lcom/metamoji/nt/NtLocale;->ru:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 45
    :cond_a
    const-string v0, "pt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    sget-object v0, Lcom/metamoji/nt/NtLocale;->pt:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 47
    :cond_b
    const-string v0, "nl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 48
    sget-object v0, Lcom/metamoji/nt/NtLocale;->nl:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 49
    :cond_c
    const-string v0, "pl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 50
    sget-object v0, Lcom/metamoji/nt/NtLocale;->pl:Lcom/metamoji/nt/NtLocale;

    return-object v0

    .line 52
    :cond_d
    sget-object v0, Lcom/metamoji/nt/NtLocale;->en:Lcom/metamoji/nt/NtLocale;

    return-object v0
.end method

.method public static localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;
    .locals 2

    .line 61
    sget-object v0, Lcom/metamoji/nt/NtLocaleUtils$1;->$SwitchMap$com$metamoji$nt$NtLocale:[I

    invoke-virtual {p0}, Lcom/metamoji/nt/NtLocale;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/nt/NtLocale;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    const-string/jumbo p0, "zh-Hant"

    return-object p0

    .line 63
    :cond_1
    const-string/jumbo p0, "zh-Hans"

    return-object p0
.end method
