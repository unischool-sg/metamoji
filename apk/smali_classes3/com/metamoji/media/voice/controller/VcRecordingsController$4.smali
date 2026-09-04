.class Lcom/metamoji/media/voice/controller/VcRecordingsController$4;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->prepareToPlayWithTicket(Ljava/lang/String;Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$context:Lcom/metamoji/cm/CmContext;

.field final synthetic val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/cm/CmContext;Lcom/metamoji/cm/ResetableEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 585
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$4;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$4;->val$context:Lcom/metamoji/cm/CmContext;

    iput-object p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$4;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/io/File;ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 591
    :try_start_0
    iget-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$4;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 595
    iget-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$4;->val$context:Lcom/metamoji/cm/CmContext;

    const-string p3, "cacheFilename"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 598
    :goto_1
    iget-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$4;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p2}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 599
    throw p1

    .line 598
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$4;->val$resetableEvent:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    return-void
.end method
