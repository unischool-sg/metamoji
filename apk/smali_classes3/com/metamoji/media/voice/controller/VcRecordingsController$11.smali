.class Lcom/metamoji/media/voice/controller/VcRecordingsController$11;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->recorder(Lcom/metamoji/media/voice/audio/VcRecorder;Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$listener:Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;

.field final synthetic val$pageId:Ljava/lang/String;

.field final synthetic val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

.field final synthetic val$ticket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/audio/VcRecorder;Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 1078
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;->val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

    iput-object p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;->val$listener:Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;

    iput-object p4, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;->val$ticket:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;->val$pageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1081
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;->val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;->val$listener:Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/audio/VcRecorder;->setListener(Lcom/metamoji/media/voice/audio/VcRecorder$IVcRecorderListener;)V

    .line 1082
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;->val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;->val$ticket:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;->val$pageId:Ljava/lang/String;

    const-string v3, "recordAudio.m4a"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/media/voice/audio/VcRecorder;->prepareToRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$11;->val$recorder:Lcom/metamoji/media/voice/audio/VcRecorder;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->record()Z

    return-void
.end method
