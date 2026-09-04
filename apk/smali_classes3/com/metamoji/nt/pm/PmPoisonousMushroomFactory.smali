.class public Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory;
.super Ljava/lang/Object;
.source "PmPoisonousMushroomFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;
    }
.end annotation


# static fields
.field private static final mCreators:[Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    .line 18
    new-array v0, v0, [Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;

    new-instance v1, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;

    const-string v2, "PMPCDPD"

    const-class v3, Lcom/metamoji/nt/pm/PmPurchasedProductMushroom;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;

    const-string v2, "PMVLOGMR"

    const-class v3, Lcom/metamoji/nt/pm/PmVerboseLogMushroom;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;

    const-string v2, "PMNOBRWS"

    const-class v3, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory;->mCreators:[Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/metamoji/nt/pm/PmPoisonousMushroom;
    .locals 4

    .line 71
    :try_start_0
    sget-object v0, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory;->mCreators:[Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 72
    sget-object v2, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory;->mCreators:[Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;

    aget-object v3, v2, v1

    invoke-static {v3}, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;->-$$Nest$fgetmType(Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    aget-object p0, v2, v1

    invoke-virtual {p0}, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;->create()Lcom/metamoji/nt/pm/PmPoisonousMushroom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 77
    const-string v0, "cannot create poisonous mushroom."

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Ljava/util/Map;)Lcom/metamoji/nt/pm/PmPoisonousMushroom;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/nt/pm/PmPoisonousMushroom;"
        }
    .end annotation

    .line 56
    const-string v0, "PMTYPE"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    :try_start_0
    sget-object v1, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory;->mCreators:[Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 59
    sget-object v3, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory;->mCreators:[Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;

    aget-object v4, v3, v2

    invoke-static {v4}, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;->-$$Nest$fgetmType(Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    aget-object v0, v3, v2

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;->create(Ljava/util/Map;)Lcom/metamoji/nt/pm/PmPoisonousMushroom;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 64
    const-string v0, "cannot create poisonous mushroom."

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
