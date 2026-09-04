.class Lcom/metamoji/ns/NsCollaboManager$28$1;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/NsCollaboManager$28;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager$28;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2573
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$28$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2579
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$28$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$28;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager$28;->val$boothId:Ljava/lang/String;

    const-string v1, "ROOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2581
    sget v0, Lcom/metamoji/noteanytime/R$string;->ToastMsg_LogMode_NoteData:I

    const-string v1, "logModeRoom"

    goto :goto_0

    .line 2582
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$28$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$28;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager$28;->val$boothId:Ljava/lang/String;

    const-string v1, "CHAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2584
    sget v0, Lcom/metamoji/noteanytime/R$string;->ToastMsg_LogMode_ChatData:I

    const-string v1, "logModeChat"

    goto :goto_0

    .line 2585
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$28$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$28;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager$28;->val$boothId:Ljava/lang/String;

    const-string v1, "RECORDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2587
    sget v0, Lcom/metamoji/noteanytime/R$string;->ToastMsg_LogMode_RecordingData:I

    const-string v1, "logModeRecording"

    goto :goto_0

    .line 2590
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->ToastMsg_LogMode_PageData:I

    const-string v1, "logModePage"

    .line 2592
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$28$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$28;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboManager$28;->val$logModeStatus_:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    sget-object v3, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_START:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    .line 2600
    iget-object v4, p0, Lcom/metamoji/ns/NsCollaboManager$28$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$28;

    if-ne v2, v3, :cond_4

    .line 2594
    iget-object v2, v4, Lcom/metamoji/ns/NsCollaboManager$28;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-boolean v2, v2, Lcom/metamoji/ns/NsCollaboManager;->m_logModeProgressDisabled:Z

    if-nez v2, :cond_3

    .line 2595
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$28$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$28;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboManager$28;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->showProgressView(ILjava/lang/String;)V

    :cond_3
    return-void

    .line 2600
    :cond_4
    iget-object v0, v4, Lcom/metamoji/ns/NsCollaboManager$28;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mhideProgressViewForKeyDelay(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;)V

    return-void
.end method
