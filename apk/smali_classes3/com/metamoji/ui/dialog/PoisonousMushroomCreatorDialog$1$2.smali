.class Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1$2;
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

    .line 36
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1$2;->this$0:Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "TYPE"

    const-string v0, "PMVLOGMR"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string p1, "TITLE"

    const-string/jumbo v0, "\u30c7\u30d0\u30c3\u30b0\u30ed\u30b0\u51fa\u529b\u3092\u958b\u59cb/\u7d42\u4e86\u3059\u308b\u30ad\u30ce\u30b3"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog$1$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
