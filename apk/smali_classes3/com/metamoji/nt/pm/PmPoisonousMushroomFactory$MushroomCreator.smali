.class Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;
.super Ljava/lang/Object;
.source "PmPoisonousMushroomFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MushroomCreator"
.end annotation


# instance fields
.field private mMushroomClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/metamoji/nt/pm/PmPoisonousMushroom;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmType(Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/metamoji/nt/pm/PmPoisonousMushroom;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;->mType:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;->mMushroomClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public create()Lcom/metamoji/nt/pm/PmPoisonousMushroom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;->mMushroomClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;

    .line 44
    invoke-virtual {v0}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->vomit()V

    return-object v0
.end method

.method public create(Ljava/util/Map;)Lcom/metamoji/nt/pm/PmPoisonousMushroom;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/metamoji/nt/pm/PmPoisonousMushroomFactory$MushroomCreator;->mMushroomClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/pm/PmPoisonousMushroom;

    .line 38
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pm/PmPoisonousMushroom;->initByDic(Ljava/util/Map;)V

    return-object v0
.end method
