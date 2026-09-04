.class public final Landroidx/media3/transformer/MediaProjectionAssetLoader;
.super Ljava/lang/Object;
.source "MediaProjectionAssetLoader.java"

# interfaces
.implements Landroidx/media3/transformer/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;,
        Landroidx/media3/transformer/MediaProjectionAssetLoader$Factory;
    }
.end annotation


# static fields
.field private static final VIRTUAL_DISPLAY_NAME:Ljava/lang/String; = "MediaProjectionAssetLoader"


# instance fields
.field private final densityDpi:I

.field private final handler:Landroid/os/Handler;

.field private final listener:Landroidx/media3/transformer/AssetLoader$Listener;

.field private final mediaProjection:Landroid/media/projection/MediaProjection;

.field private final screenCaptureFormat:Landroidx/media3/common/Format;

.field private final surfaceAssetLoader:Landroidx/media3/transformer/SurfaceAssetLoader;

.field private videoFormat:Landroidx/media3/common/Format;

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method private constructor <init>(Landroid/media/projection/MediaProjection;Landroid/graphics/Rect;ILandroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 108
    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string/jumbo v0, "video/raw"

    .line 110
    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    sget-object p2, Landroidx/media3/common/ColorInfo;->SRGB_BT709_FULL:Landroidx/media3/common/ColorInfo;

    .line 113
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->screenCaptureFormat:Landroidx/media3/common/Format;

    .line 115
    iput p3, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->densityDpi:I

    .line 116
    iput-object p6, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    .line 117
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->handler:Landroid/os/Handler;

    .line 119
    new-instance p2, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Landroidx/media3/transformer/MediaProjectionAssetLoader$ComponentListener;-><init>(Landroidx/media3/transformer/MediaProjectionAssetLoader;Landroidx/media3/transformer/MediaProjectionAssetLoader$1;)V

    .line 120
    new-instance p3, Landroidx/media3/transformer/SurfaceAssetLoader$Factory;

    invoke-direct {p3, p2}, Landroidx/media3/transformer/SurfaceAssetLoader$Factory;-><init>(Landroidx/media3/transformer/SurfaceAssetLoader$Callback;)V

    .line 123
    invoke-virtual {p3, p4, p5, p2, p7}, Landroidx/media3/transformer/SurfaceAssetLoader$Factory;->createAssetLoader(Landroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)Landroidx/media3/transformer/SurfaceAssetLoader;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->surfaceAssetLoader:Landroidx/media3/transformer/SurfaceAssetLoader;

    .line 125
    invoke-virtual {p2, p1}, Landroidx/media3/transformer/SurfaceAssetLoader;->setContentFormat(Landroidx/media3/common/Format;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/projection/MediaProjection;Landroid/graphics/Rect;ILandroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;Landroidx/media3/transformer/MediaProjectionAssetLoader$1;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p7}, Landroidx/media3/transformer/MediaProjectionAssetLoader;-><init>(Landroid/media/projection/MediaProjection;Landroid/graphics/Rect;ILandroidx/media3/transformer/EditedMediaItem;Landroid/os/Looper;Landroidx/media3/transformer/AssetLoader$Listener;Landroidx/media3/transformer/AssetLoader$CompositionSettings;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroidx/media3/transformer/SurfaceAssetLoader;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->surfaceAssetLoader:Landroidx/media3/transformer/SurfaceAssetLoader;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroidx/media3/common/Format;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->videoFormat:Landroidx/media3/common/Format;

    return-object p0
.end method

.method static synthetic access$502(Landroidx/media3/transformer/MediaProjectionAssetLoader;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 0

    .line 37
    iput-object p1, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->videoFormat:Landroidx/media3/common/Format;

    return-object p1
.end method

.method static synthetic access$600(Landroidx/media3/transformer/MediaProjectionAssetLoader;)Landroidx/media3/transformer/AssetLoader$Listener;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->listener:Landroidx/media3/transformer/AssetLoader$Listener;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media3/transformer/MediaProjectionAssetLoader;Landroid/view/Surface;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/media3/transformer/MediaProjectionAssetLoader;->startCapture(Landroid/view/Surface;)V

    return-void
.end method

.method private startCapture(Landroid/view/Surface;)V
    .locals 10

    .line 129
    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->mediaProjection:Landroid/media/projection/MediaProjection;

    new-instance v1, Landroidx/media3/transformer/MediaProjectionAssetLoader$1;

    invoke-direct {v1, p0}, Landroidx/media3/transformer/MediaProjectionAssetLoader$1;-><init>(Landroidx/media3/transformer/MediaProjectionAssetLoader;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 143
    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->mediaProjection:Landroid/media/projection/MediaProjection;

    .line 144
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/media/projection/MediaProjection;

    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->screenCaptureFormat:Landroidx/media3/common/Format;

    .line 147
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    iget v3, v0, Landroidx/media3/common/Format;->width:I

    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->screenCaptureFormat:Landroidx/media3/common/Format;

    iget v4, v0, Landroidx/media3/common/Format;->height:I

    iget v5, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->densityDpi:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 145
    const-string v2, "MediaProjectionAssetLoader"

    const/16 v6, 0x10

    move-object v7, p1

    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method


# virtual methods
.method public getDecoderNames()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->surfaceAssetLoader:Landroidx/media3/transformer/SurfaceAssetLoader;

    invoke-virtual {v0}, Landroidx/media3/transformer/SurfaceAssetLoader;->getDecoderNames()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getProgress(Landroidx/media3/transformer/ProgressHolder;)I
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->surfaceAssetLoader:Landroidx/media3/transformer/SurfaceAssetLoader;

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/SurfaceAssetLoader;->getProgress(Landroidx/media3/transformer/ProgressHolder;)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    .line 173
    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->surfaceAssetLoader:Landroidx/media3/transformer/SurfaceAssetLoader;

    invoke-virtual {v0}, Landroidx/media3/transformer/SurfaceAssetLoader;->release()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 158
    iget-object v0, p0, Landroidx/media3/transformer/MediaProjectionAssetLoader;->surfaceAssetLoader:Landroidx/media3/transformer/SurfaceAssetLoader;

    invoke-virtual {v0}, Landroidx/media3/transformer/SurfaceAssetLoader;->start()V

    return-void
.end method
