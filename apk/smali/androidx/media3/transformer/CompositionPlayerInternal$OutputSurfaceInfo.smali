.class final Landroidx/media3/transformer/CompositionPlayerInternal$OutputSurfaceInfo;
.super Ljava/lang/Object;
.source "CompositionPlayerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionPlayerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputSurfaceInfo"
.end annotation


# instance fields
.field public final size:Landroidx/media3/common/util/Size;

.field public final surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayerInternal$OutputSurfaceInfo;->surface:Landroid/view/Surface;

    .line 369
    iput-object p2, p0, Landroidx/media3/transformer/CompositionPlayerInternal$OutputSurfaceInfo;->size:Landroidx/media3/common/util/Size;

    return-void
.end method
