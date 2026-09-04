.class Lcom/metamoji/ns/direction/NsDirectionManager$17;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->postSendingData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$collaboSettings:Lcom/metamoji/ns/NsCollaboSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/NsCollaboSettings;Lcom/metamoji/ns/NsCollaboManager;)V
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

    .line 916
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$17;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$17;->val$collaboSettings:Lcom/metamoji/ns/NsCollaboSettings;

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$17;->val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 920
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$17;->val$collaboSettings:Lcom/metamoji/ns/NsCollaboSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboSettings;->nextSendingData(Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 921
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$17;->val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v1, v2, :cond_2

    .line 925
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$17;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    monitor-enter v1

    .line 926
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$17;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v2, v2, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    invoke-virtual {v2, v0}, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->packetNoForHandle(Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)Ljava/lang/String;

    move-result-object v2

    .line 927
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 929
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->getRipOffSize()Ljava/lang/String;

    move-result-object v1

    .line 930
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$17;->val$collaboManager:Lcom/metamoji/ns/NsCollaboManager;

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->getData()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->getBoothID()Ljava/lang/String;

    move-result-object v4

    .line 932
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->isSendBack()Z

    move-result v6

    if-eqz v1, :cond_0

    goto :goto_1

    .line 933
    :cond_0
    const-string v1, "0"

    :goto_1
    move-object v7, v1

    const/4 v5, 0x0

    .line 930
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ns/NsCollaboManager;->postDirection([BLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 936
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$17;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v2, v2, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    monitor-enter v2

    .line 937
    :try_start_1
    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$17;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v3, v3, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    invoke-virtual {v3, v1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->bind(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)V

    .line 938
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 941
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$17;->val$collaboSettings:Lcom/metamoji/ns/NsCollaboSettings;

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/NsCollaboSettings;->nextSendingData(Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;

    move-result-object v0

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 927
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    return-void
.end method
