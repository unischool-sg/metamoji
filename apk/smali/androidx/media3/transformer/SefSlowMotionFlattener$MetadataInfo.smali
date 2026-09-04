.class final Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;
.super Ljava/lang/Object;
.source "SefSlowMotionFlattener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/SefSlowMotionFlattener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MetadataInfo"
.end annotation


# instance fields
.field public captureFrameRate:F

.field public inputMaxLayer:I

.field public normalSpeedMaxLayer:I

.field public slowMotionData:Landroidx/media3/extractor/metadata/mp4/SlowMotionData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    .line 361
    iput v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->captureFrameRate:F

    const/4 v0, -0x1

    .line 362
    iput v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->inputMaxLayer:I

    .line 363
    iput v0, p0, Landroidx/media3/transformer/SefSlowMotionFlattener$MetadataInfo;->normalSpeedMaxLayer:I

    return-void
.end method
