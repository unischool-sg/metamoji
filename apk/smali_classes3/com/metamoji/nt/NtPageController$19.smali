.class Lcom/metamoji/nt/NtPageController$19;
.super Ljava/lang/Object;
.source "NtPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPageController;->setSchoolPageType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4220
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$19;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4224
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtPageController$19;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->clearUpdatedPersonalBoothIdSet(Ljava/lang/String;)Z

    .line 4227
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->updatePageInfoIcon()V

    return-void
.end method
