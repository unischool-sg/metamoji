.class Lcom/metamoji/media/voice/controller/VcRecordingsController$5;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->playAfterStop(Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$action:Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;

.field final synthetic val$player:Lcom/metamoji/media/voice/audio/VcPlayer;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;Lcom/metamoji/media/voice/audio/VcPlayer;)V
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

    .line 703
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$5;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$5;->val$action:Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;

    iput-object p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$5;->val$player:Lcom/metamoji/media/voice/audio/VcPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$5;->val$action:Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;

    iget-object v1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$5;->val$player:Lcom/metamoji/media/voice/audio/VcPlayer;

    invoke-interface {v0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;->action(Lcom/metamoji/media/voice/audio/VcPlayer;)V

    return-void
.end method
