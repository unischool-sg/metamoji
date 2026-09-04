.class Lcom/metamoji/ns/direction/NsDirectionManager$41;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->boothUpdated(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$boothId:Ljava/lang/String;


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

    .line 2557
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$41;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$41;->val$boothId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2563
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$41;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$41;->val$boothId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->isAttachedBooth(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2568
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$41;->val$boothId:Ljava/lang/String;

    .line 2569
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$41;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->pageIds()Ljava/util/List;

    move-result-object v1

    .line 2570
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$41;->val$boothId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2573
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$41;->val$boothId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/nt/NtPageController;->getPageIdFromCommonLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2574
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2576
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$41;->val$boothId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/nt/NtPageController;->getPageIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2577
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    return-void

    .line 2587
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$41;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const-string v2, "MMJNsShareSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboSettings;

    .line 2590
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$41;->val$boothId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->addUpdatedBoothId(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V

    .line 2596
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 2599
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$41;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 2603
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$41$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/direction/NsDirectionManager$41$1;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$41;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
