.class Lcom/metamoji/ns/direction/NsDirectionManager$34;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->collaboPostDirectionResult(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$packetNo:Ljava/lang/String;

.field final synthetic val$sendingDataHandle:Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)V
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

    .line 2254
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$34;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$34;->val$packetNo:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$34;->val$sendingDataHandle:Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2257
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$34;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    monitor-enter v0

    .line 2258
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$34;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$34;->val$packetNo:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$34;->val$sendingDataHandle:Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->unbind(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)V

    .line 2259
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2260
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$34;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 2261
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$34;->val$sendingDataHandle:Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboSettings;->removeSendingData(Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)V

    .line 2264
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$34;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 2259
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
