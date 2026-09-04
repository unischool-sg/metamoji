.class public final Landroidx/media3/inspector/FrameExtractor$Frame;
.super Ljava/lang/Object;
.source "FrameExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/inspector/FrameExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frame"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final presentationTimeMs:J


# direct methods
.method constructor <init>(JLandroid/graphics/Bitmap;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-wide p1, p0, Landroidx/media3/inspector/FrameExtractor$Frame;->presentationTimeMs:J

    .line 199
    iput-object p3, p0, Landroidx/media3/inspector/FrameExtractor$Frame;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
