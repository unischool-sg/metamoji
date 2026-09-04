.class Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1;
.super Ljava/util/ArrayList;
.source "PoisonousMushroomCreatorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1$1;-><init>(Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1$2;-><init>(Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
