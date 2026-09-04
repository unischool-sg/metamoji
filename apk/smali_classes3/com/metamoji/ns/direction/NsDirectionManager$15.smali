.class Lcom/metamoji/ns/direction/NsDirectionManager$15;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$boothID:Ljava/lang/String;

.field final synthetic val$data:[B

.field final synthetic val$ripOffSize:Ljava/lang/String;

.field final synthetic val$sendBack:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;[BLjava/lang/String;ZLjava/lang/String;)V
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

    .line 847
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$15;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$15;->val$data:[B

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$15;->val$boothID:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/metamoji/ns/direction/NsDirectionManager$15;->val$sendBack:Z

    iput-object p5, p0, Lcom/metamoji/ns/direction/NsDirectionManager$15;->val$ripOffSize:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 850
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$15;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 851
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$15;->val$data:[B

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$15;->val$boothID:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$15;->val$sendBack:Z

    iget-object v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager$15;->val$ripOffSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/ns/NsCollaboSettings;->addSendingData([BLjava/lang/String;ZLjava/lang/String;)Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;

    return-void
.end method
