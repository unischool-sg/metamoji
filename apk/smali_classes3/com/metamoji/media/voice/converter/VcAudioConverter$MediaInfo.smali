.class Lcom/metamoji/media/voice/converter/VcAudioConverter$MediaInfo;
.super Ljava/lang/Object;
.source "VcAudioConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/converter/VcAudioConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaInfo"
.end annotation


# instance fields
.field bitRate:I

.field channels:I

.field duration:J

.field mimeType:Ljava/lang/String;

.field samplingRate:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
