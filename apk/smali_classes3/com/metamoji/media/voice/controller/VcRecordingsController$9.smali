.class Lcom/metamoji/media/voice/controller/VcRecordingsController$9;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/media/voice/controller/VcRecordingsController$IPlayAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromTimeAfter(DLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$interval:D


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 890
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$9;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-wide p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$9;->val$interval:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Lcom/metamoji/media/voice/audio/VcPlayer;)V
    .locals 2

    .line 893
    iget-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$9;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iget-wide v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$9;->val$interval:D

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->playFromTimeAfter(D)V

    return-void
.end method
