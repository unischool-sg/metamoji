.class Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;
.super Lcom/metamoji/sd/SdSuccessBlock;
.source "SdShareViewThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;->this$1:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;

    invoke-direct {p0}, Lcom/metamoji/sd/SdSuccessBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "thumbnailPath"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1$1;-><init>(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
