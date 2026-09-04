.class public Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;
.super Ljava/lang/Object;
.source "MediaFilesUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MovieInfo"
.end annotation


# instance fields
.field public a_bitrate:I

.field public aspect_h:I

.field public aspect_w:I

.field public audio_codec:Ljava/lang/String;

.field public comment:Ljava/lang/String;

.field public contaner:Ljava/lang/String;

.field public duration:D

.field public frame_count:J

.field public frame_rate_d:I

.field public frame_rate_n:I

.field public height:I

.field public rotate:I

.field public sampling_rate:I

.field final synthetic this$0:Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public v_bitrate:I

.field public video_codec:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->this$0:Lcom/metamoji/media/video/network/haunted/MediaFilesUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string p1, "AAC"

    iput-object p1, p0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->audio_codec:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->sampling_rate:I

    .line 45
    iput p1, p0, Lcom/metamoji/media/video/network/haunted/MediaFilesUtils$MovieInfo;->a_bitrate:I

    return-void
.end method
