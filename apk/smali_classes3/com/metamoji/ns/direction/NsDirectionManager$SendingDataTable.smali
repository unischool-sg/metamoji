.class Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendingDataTable"
.end annotation


# instance fields
.field private _handleToPacket:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _packetToHandle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->_packetToHandle:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->_handleToPacket:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->_packetToHandle:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->_handleToPacket:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->getHandleID()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->_packetToHandle:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 73
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->_handleToPacket:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public handleForPacketNo(Ljava/lang/String;)Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->_packetToHandle:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;

    return-object p1
.end method

.method public packetNoForHandle(Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->_handleToPacket:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->getHandleID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public unbind(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->_packetToHandle:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->_handleToPacket:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;->getHandleID()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
