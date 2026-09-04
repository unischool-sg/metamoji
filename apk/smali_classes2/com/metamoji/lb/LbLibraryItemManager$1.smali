.class Lcom/metamoji/lb/LbLibraryItemManager$1;
.super Ljava/lang/Object;
.source "LbLibraryItemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lb/LbLibraryItemManager;->savePageDataArray(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/lb/LbLibraryItemManager;

.field final synthetic val$pageDataArray:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/lb/LbLibraryItemManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/metamoji/lb/LbLibraryItemManager$1;->this$0:Lcom/metamoji/lb/LbLibraryItemManager;

    iput-object p2, p0, Lcom/metamoji/lb/LbLibraryItemManager$1;->val$pageDataArray:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/metamoji/lb/LbLibraryItemManager$1;->this$0:Lcom/metamoji/lb/LbLibraryItemManager;

    iget-object v1, p0, Lcom/metamoji/lb/LbLibraryItemManager$1;->val$pageDataArray:Ljava/util/List;

    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_MAX:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lb/LbLibraryItemManager;->savePageDataArray(Ljava/util/List;Lcom/metamoji/lb/LbConstants$LbPageType;)V

    return-void
.end method
