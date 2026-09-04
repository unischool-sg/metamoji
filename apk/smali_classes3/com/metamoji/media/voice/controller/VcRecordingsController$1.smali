.class Lcom/metamoji/media/voice/controller/VcRecordingsController$1;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->setCurrentTicket(Ljava/lang/String;)V
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

    .line 202
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$1;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$1;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_ADD_INDEX:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    return-void
.end method
