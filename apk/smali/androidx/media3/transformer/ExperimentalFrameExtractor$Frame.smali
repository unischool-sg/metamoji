.class public final Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;
.super Ljava/lang/Object;
.source "ExperimentalFrameExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/ExperimentalFrameExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frame"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final presentationTimeMs:J


# direct methods
.method private constructor <init>(JLandroid/graphics/Bitmap;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-wide p1, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;->presentationTimeMs:J

    .line 178
    iput-object p3, p0, Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(JLandroid/graphics/Bitmap;Landroidx/media3/transformer/ExperimentalFrameExtractor$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/transformer/ExperimentalFrameExtractor$Frame;-><init>(JLandroid/graphics/Bitmap;)V

    return-void
.end method
