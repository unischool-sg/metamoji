.class Lcom/metamoji/media/MediaUtil$1;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUtil;->downloadSoundFileSync(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/metamoji/cm/ResetableEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/metamoji/media/MediaUtil$1;->val$result:Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/media/MediaUtil$1;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/io/File;ZZ)V
    .locals 0

    .line 85
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance p3, Lcom/metamoji/media/MediaUtil$1$1;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/media/MediaUtil$1$1;-><init>(Lcom/metamoji/media/MediaUtil$1;Ljava/io/File;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
