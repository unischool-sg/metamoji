.class public abstract Lcom/metamoji/nt/pm/PmPoisonousMushroom;
.super Ljava/lang/Object;
.source "PmPoisonousMushroom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/pm/PmPoisonousMushroom$Key;,
        Lcom/metamoji/nt/pm/PmPoisonousMushroom$Type;
    }
.end annotation


# static fields
.field private static NANO100_TIME_19700101:J = 0x89f7ff5f7b58000L


# instance fields
.field protected mAntidote:Z

.field protected mExpirationDate:Ljava/util/Date;

.field protected mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->mType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->mExpirationDate:Ljava/util/Date;

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->mAntidote:Z

    return-void
.end method

.method public static getDateStr(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 141
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    sget-wide v2, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->NANO100_TIME_19700101:J

    add-long/2addr v0, v2

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%1$x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static isExpired(Ljava/util/Date;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 94
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    const-string v0, "0x"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 153
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 154
    new-instance p0, Ljava/util/Date;

    sget-wide v4, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->NANO100_TIME_19700101:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method


# virtual methods
.method public abstract detox(Z)Z
.end method

.method public abstract eat()Z
.end method

.method public genom()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    const-string v1, "PMTYPE"

    iget-object v2, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->mExpirationDate:Ljava/util/Date;

    invoke-static {v1}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->getDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PMLM"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-boolean v1, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->mAntidote:Z

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "ANTIDOTE"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public initByDic(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    const-string v0, "PMLM"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    invoke-static {v0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->mExpirationDate:Ljava/util/Date;

    .line 61
    const-string v0, "ANTIDOTE"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 62
    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->mAntidote:Z

    return-void
.end method

.method public isAntidote()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->mAntidote:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->mExpirationDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->isExpired(Ljava/util/Date;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract vomit()V
.end method
