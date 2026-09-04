.class Lcom/metamoji/media/MediaUploadManager$8;
.super Ljava/util/TimerTask;
.source "MediaUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager;->startRetryTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1395
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager$8;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager$8;->this$0:Lcom/metamoji/media/MediaUploadManager;

    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager;->clearRetryTimer()V

    return-void
.end method
