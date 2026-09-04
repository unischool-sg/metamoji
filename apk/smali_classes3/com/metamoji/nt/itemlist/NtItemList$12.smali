.class Lcom/metamoji/nt/itemlist/NtItemList$12;
.super Ljava/lang/Object;
.source "NtItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList;->loadThumbnailAsync(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemList;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1260
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$12;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iput p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$12;->val$start:I

    iput p3, p0, Lcom/metamoji/nt/itemlist/NtItemList$12;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1266
    iget v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$12;->val$start:I

    :goto_0
    iget v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$12;->val$end:I

    if-gt v0, v1, :cond_2

    .line 1267
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$12;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/itemlist/NtItemList;->getViewAt(I)Lcom/metamoji/nt/itemlist/NtItemListItemContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1268
    invoke-virtual {v1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->isPurged()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1270
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/nt/itemlist/NtItemList$12$1;

    invoke-direct {v3, p0, v1}, Lcom/metamoji/nt/itemlist/NtItemList$12$1;-><init>(Lcom/metamoji/nt/itemlist/NtItemList$12;Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
