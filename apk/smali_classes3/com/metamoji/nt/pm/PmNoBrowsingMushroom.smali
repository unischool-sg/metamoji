.class public Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;
.super Lcom/metamoji/nt/pm/PmPoisonousMushroom;
.source "PmNoBrowsingMushroom.java"


# static fields
.field public static final LIMIT_DAY:Ljava/lang/String; = "MMJPMNoBrowsingLimit"

.field public static final TYPE:Ljava/lang/String; = "PMNOBRWS"

.field private static sCheckedExpirationDate:Ljava/util/Date; = null

.field private static sNeedCheck:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    const-string v0, "PMNOBRWS"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static isMushroomEnabled()Z
    .locals 2

    .line 83
    sget-boolean v0, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->sNeedCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 84
    sput-boolean v0, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->sNeedCheck:Z

    .line 85
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 86
    const-string v1, "MMJPMNoBrowsingLimit"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->sCheckedExpirationDate:Ljava/util/Date;

    .line 89
    :cond_0
    sget-object v0, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->sCheckedExpirationDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->isExpired(Ljava/util/Date;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public detox(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 66
    :cond_1
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 67
    const-string v1, "MMJPMNoBrowsingLimit"

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 69
    sput-object p1, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->sCheckedExpirationDate:Ljava/util/Date;

    .line 70
    sput-boolean v0, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->sNeedCheck:Z

    .line 72
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtFeatureManager;->notifyConditionChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public eat()Z
    .locals 4

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 37
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->mExpirationDate:Ljava/util/Date;

    invoke-static {v2}, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->getDateStr(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MMJPMNoBrowsingLimit"

    invoke-virtual {v0, v3, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->mExpirationDate:Ljava/util/Date;

    sput-object v0, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->sCheckedExpirationDate:Ljava/util/Date;

    .line 41
    sput-boolean v1, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->sNeedCheck:Z

    .line 43
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtFeatureManager;->notifyConditionChanged()V

    const/4 v0, 0x1

    return v0
.end method

.method public vomit()V
    .locals 2

    .line 53
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 54
    const-string v1, "MMJPMNoBrowsingLimit"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->mExpirationDate:Ljava/util/Date;

    return-void
.end method
