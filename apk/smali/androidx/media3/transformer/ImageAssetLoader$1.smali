.class Landroidx/media3/transformer/ImageAssetLoader$1;
.super Ljava/lang/Object;
.source "ImageAssetLoader.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/ImageAssetLoader;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/ImageAssetLoader;


# direct methods
.method constructor <init>(Landroidx/media3/transformer/ImageAssetLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$androidx-media3-transformer-ImageAssetLoader$1(Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-static {v0, p1, p2}, Landroidx/media3/transformer/ImageAssetLoader;->access$500(Landroidx/media3/transformer/ImageAssetLoader;Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 174
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/ImageAssetLoader;->access$300(Landroidx/media3/transformer/ImageAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-static {p1, v1}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 152
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroidx/media3/transformer/ImageAssetLoader;->access$102(Landroidx/media3/transformer/ImageAssetLoader;I)I

    .line 153
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "image/raw"

    .line 157
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/ColorInfo;->SRGB_BT709_FULL:Landroidx/media3/common/ColorInfo;

    .line 158
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 161
    iget-object v1, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-static {v1}, Landroidx/media3/transformer/ImageAssetLoader;->access$200(Landroidx/media3/transformer/ImageAssetLoader;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    const-string v2, "image/jpeg_r"

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 165
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-static {v2}, Landroidx/media3/transformer/ImageAssetLoader;->access$300(Landroidx/media3/transformer/ImageAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v0, v3}, Landroidx/media3/transformer/AssetLoader$Listener;->onTrackAdded(Landroidx/media3/common/Format;I)Z

    .line 166
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/ImageAssetLoader;->access$400(Landroidx/media3/transformer/ImageAssetLoader;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v2, Landroidx/media3/transformer/ImageAssetLoader$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media3/transformer/ImageAssetLoader$1$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/transformer/ImageAssetLoader$1;Landroid/graphics/Bitmap;Landroidx/media3/common/Format;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 168
    iget-object v0, p0, Landroidx/media3/transformer/ImageAssetLoader$1;->this$0:Landroidx/media3/transformer/ImageAssetLoader;

    invoke-static {v0}, Landroidx/media3/transformer/ImageAssetLoader;->access$300(Landroidx/media3/transformer/ImageAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p1, v1}, Landroidx/media3/transformer/ExportException;->createForAssetLoader(Ljava/lang/Throwable;I)Landroidx/media3/transformer/ExportException;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media3/transformer/AssetLoader$Listener;->onError(Landroidx/media3/transformer/ExportException;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 149
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/media3/transformer/ImageAssetLoader$1;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
