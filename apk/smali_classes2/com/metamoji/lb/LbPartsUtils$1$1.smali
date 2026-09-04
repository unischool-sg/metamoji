.class Lcom/metamoji/lb/LbPartsUtils$1$1;
.super Ljava/util/ArrayList;
.source "LbPartsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lb/LbPartsUtils$1;->doExport(Lcom/metamoji/df/model/IModelManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/lb/LbPartsUtils$1;


# direct methods
.method constructor <init>(Lcom/metamoji/lb/LbPartsUtils$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/metamoji/lb/LbPartsUtils$1$1;->this$0:Lcom/metamoji/lb/LbPartsUtils$1;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    const-string p1, "?editstatus"

    invoke-virtual {p0, p1}, Lcom/metamoji/lb/LbPartsUtils$1$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
