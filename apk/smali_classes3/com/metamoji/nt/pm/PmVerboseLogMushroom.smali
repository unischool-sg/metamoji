.class public Lcom/metamoji/nt/pm/PmVerboseLogMushroom;
.super Lcom/metamoji/nt/pm/PmPoisonousMushroom;
.source "PmVerboseLogMushroom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/pm/PmVerboseLogMushroom$Key;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALID_TERM:J = 0x36ee80L

.field public static final TYPE:Ljava/lang/String; = "PMVLOGMR"


# instance fields
.field private mLevel:I

.field private mValidTerm:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    const-string v0, "PMVLOGMR"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mLevel:I

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mValidTerm:J

    return-void
.end method


# virtual methods
.method public detox(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 174
    :cond_1
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 175
    const-string v1, "PMVLOGMR"

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 176
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->setFileLogLevel(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public eat()Z
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 140
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 142
    const-string v1, "PMVLOGMR"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    .line 143
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    iget-object v3, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mExpirationDate:Ljava/util/Date;

    invoke-static {v3}, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->getDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget v3, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mLevel:I

    invoke-virtual {p0, v3}, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->levelString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    .line 147
    iget v0, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mLevel:I

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->setFileLogLevel(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public genom()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-super {p0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->genom()Ljava/util/HashMap;

    move-result-object v0

    .line 190
    iget v1, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mLevel:I

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->levelString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Level"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-wide v1, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mValidTerm:J

    const-wide/32 v3, 0x36ee80

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 192
    const-string v3, "ValidTerm"

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->validTermString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public initByDic(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    const-string v0, "Level"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->parseLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mLevel:I

    .line 46
    const-string v0, "ValidTerm"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->parseValidTerm(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mValidTerm:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const-wide/32 v0, 0x36ee80

    .line 48
    iput-wide v0, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mValidTerm:J

    .line 50
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mValidTerm:J

    add-long/2addr v0, v2

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mExpirationDate:Ljava/util/Date;

    return-void
.end method

.method levelString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 97
    :pswitch_0
    const-string p1, "assert"

    return-object p1

    .line 91
    :pswitch_1
    const-string p1, "error"

    return-object p1

    .line 93
    :pswitch_2
    const-string/jumbo p1, "warn"

    return-object p1

    .line 95
    :pswitch_3
    const-string p1, "info"

    return-object p1

    .line 89
    :pswitch_4
    const-string p1, "debug"

    return-object p1

    .line 87
    :pswitch_5
    const-string/jumbo p1, "verbose"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method parseLevel(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_5

    .line 61
    const-string/jumbo v1, "verbose"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iput v0, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mLevel:I

    goto :goto_0

    .line 63
    :cond_0
    const-string v1, "debug"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x3

    .line 64
    iput p1, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mLevel:I

    goto :goto_0

    .line 65
    :cond_1
    const-string v1, "error"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x6

    .line 66
    iput p1, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mLevel:I

    goto :goto_0

    .line 67
    :cond_2
    const-string/jumbo v1, "warn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x5

    .line 68
    iput p1, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mLevel:I

    goto :goto_0

    .line 69
    :cond_3
    const-string v1, "info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p1, 0x4

    .line 70
    iput p1, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mLevel:I

    goto :goto_0

    .line 71
    :cond_4
    const-string v1, "assert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x7

    .line 72
    iput p1, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mLevel:I

    :cond_5
    :goto_0
    return v0
.end method

.method parseValidTerm(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 124
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method validTermString(J)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "0x%x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public vomit()V
    .locals 2

    .line 158
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 160
    const-string v1, "PMVLOGMR"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mExpirationDate:Ljava/util/Date;

    const/4 v1, 0x1

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->parseLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;->mLevel:I

    .line 163
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->setFileLogLevel(I)V

    return-void
.end method
