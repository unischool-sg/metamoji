.class final Landroidx/media3/inspector/FrameExtractorInternal$FrameReader;
.super Ljava/lang/Object;
.source "FrameExtractorInternal.java"

# interfaces
.implements Landroidx/media3/effect/GlEffect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/inspector/FrameExtractorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameReader"
.end annotation


# instance fields
.field private final internal:Landroidx/media3/inspector/FrameExtractorInternal;


# direct methods
.method private constructor <init>(Landroidx/media3/inspector/FrameExtractorInternal;)V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReader;->internal:Landroidx/media3/inspector/FrameExtractorInternal;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$1;)V
    .locals 0

    .line 428
    invoke-direct {p0, p1}, Landroidx/media3/inspector/FrameExtractorInternal$FrameReader;-><init>(Landroidx/media3/inspector/FrameExtractorInternal;)V

    return-void
.end method


# virtual methods
.method public toGlShaderProgram(Landroid/content/Context;Z)Landroidx/media3/effect/GlShaderProgram;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    .line 438
    new-instance v0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;

    iget-object v1, p0, Landroidx/media3/inspector/FrameExtractorInternal$FrameReader;->internal:Landroidx/media3/inspector/FrameExtractorInternal;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Landroidx/media3/inspector/FrameExtractorInternal$FrameReadingGlShaderProgram;-><init>(Landroid/content/Context;ZLandroidx/media3/inspector/FrameExtractorInternal;Landroidx/media3/inspector/FrameExtractorInternal$1;)V

    return-object v0
.end method
