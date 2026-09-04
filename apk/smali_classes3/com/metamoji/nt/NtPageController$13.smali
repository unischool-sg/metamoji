.class Lcom/metamoji/nt/NtPageController$13;
.super Ljava/lang/Object;
.source "NtPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPageController;->removeOfflinePersonalLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3657
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$13;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3661
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController$13;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3662
    iget-object v3, p0, Lcom/metamoji/nt/NtPageController$13;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v3, v2}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    .line 3663
    const-string/jumbo v4, "system:offline_personal"

    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3664
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3668
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtLayerController;

    .line 3669
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController$13;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtPageController;->getLayerIndex(Lcom/metamoji/df/controller/DfLayerController;)I

    move-result v1

    .line 3670
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController$13;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtPageController;->removeLayerAt(I)V

    goto :goto_1

    :cond_2
    return-void
.end method
