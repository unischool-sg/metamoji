.class Lcom/metamoji/ns/direction/NsDirectionManager$3;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->attachBooth(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$pageID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V
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

    .line 355
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$3;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$3;->val$pageID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$3;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 359
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$3;->val$pageID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboSettings;->lastReceivedSequenceNoForBooth(Ljava/lang/String;)J

    move-result-wide v0

    .line 360
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$3;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$3;->val$pageID:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$mattachBooth(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;J)V

    return-void
.end method
