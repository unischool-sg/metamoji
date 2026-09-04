.class Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1$1;
.super Ljava/util/HashMap;
.source "PoisonousMushroomCreatorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1$1;->this$0:Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "TYPE"

    const-string v0, "PMPCDPD"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string p1, "TITLE"

    const-string/jumbo v0, "\u6a5f\u80fd\u89e3\u9664\u578b\u5546\u54c1\u3092\u8cfc\u5165\u6e08\u307f\u306b\u3059\u308b\u30ad\u30ce\u30b3"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
