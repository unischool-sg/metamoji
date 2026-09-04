.class Landroidx/media3/transformer/TransmuxTranscodeHelper$1;
.super Ljava/lang/Thread;
.source "TransmuxTranscodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/TransmuxTranscodeHelper;->getMp4Info(Landroid/content/Context;Ljava/lang/String;J)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$mp4InfoSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$timeUs:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 73
    iput-object p2, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$1;->val$mp4InfoSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$1;->val$filePath:Ljava/lang/String;

    iput-wide p5, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$1;->val$timeUs:J

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 77
    :try_start_0
    iget-object v0, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$1;->val$mp4InfoSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$1;->val$filePath:Ljava/lang/String;

    iget-wide v3, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$1;->val$timeUs:J

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/transformer/Mp4Info;->create(Landroid/content/Context;Ljava/lang/String;J)Landroidx/media3/transformer/Mp4Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Landroidx/media3/transformer/TransmuxTranscodeHelper$1;->val$mp4InfoSettableFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
