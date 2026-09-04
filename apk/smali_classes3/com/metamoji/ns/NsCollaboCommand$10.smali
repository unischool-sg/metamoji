.class Lcom/metamoji/ns/NsCollaboCommand$10;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->createAndEditCollaboFileWithBasicSettings(Lcom/metamoji/ns/NsCollaboBasicSettings;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

.field final synthetic val$bgTask:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;

.field final synthetic val$snapShotDicList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;Ljava/util/List;Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 915
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$10;->val$bgTask:Lcom/metamoji/forSchool/task/ScCollaboBgTaskForTakeSnapShotAllPages;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$10;->val$snapShotDicList:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboCommand$10;->val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 1

    .line 918
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ns/NsCollaboCommand$10$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/NsCollaboCommand$10$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$10;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
