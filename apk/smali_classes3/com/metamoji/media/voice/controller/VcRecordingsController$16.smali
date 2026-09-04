.class Lcom/metamoji/media/voice/controller/VcRecordingsController$16;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->importRecordingFromServer(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1333
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$16;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1336
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didStopPlayerForce()V

    return-void
.end method
