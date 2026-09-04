.class public Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;
.super Lcom/metamoji/nt/pm/PmPoisonousMushroom;
.source "PmPurchasedProductMushroom.java"


# static fields
.field public static final LIMIT_DAY:Ljava/lang/String; = "PMLM"

.field public static final TYPE:Ljava/lang/String; = "PMPCDPD"

.field public static sCheckedExpirationDate:Ljava/util/Date; = null

.field public static sNeedCheck:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    const-string v0, "PMPCDPD"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static isMushroomEnabled()Z
    .locals 2

    .line 90
    sget-boolean v0, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->sNeedCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 91
    sput-boolean v0, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->sNeedCheck:Z

    .line 92
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 93
    const-string v1, "PMLM"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->sCheckedExpirationDate:Ljava/util/Date;

    .line 96
    :cond_0
    sget-object v0, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->sCheckedExpirationDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->isExpired(Ljava/util/Date;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public detox(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 65
    :cond_1
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 66
    const-string v1, "PMLM"

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 67
    sput-object p1, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->sCheckedExpirationDate:Ljava/util/Date;

    .line 68
    sput-boolean v0, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->sNeedCheck:Z

    const/4 p1, 0x1

    return p1
.end method

.method public eat()Z
    .locals 4

    .line 35
    invoke-virtual {p0}, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 38
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->mExpirationDate:Ljava/util/Date;

    invoke-static {v2}, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->getDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PMLM"

    invoke-virtual {v0, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->mExpirationDate:Ljava/util/Date;

    sput-object v0, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->sCheckedExpirationDate:Ljava/util/Date;

    .line 41
    sput-boolean v1, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->sNeedCheck:Z

    const/4 v0, 0x1

    return v0
.end method

.method public genom()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-super {p0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->genom()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public vomit()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 53
    const-string v1, "PMLM"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;->mExpirationDate:Ljava/util/Date;

    return-void
.end method
