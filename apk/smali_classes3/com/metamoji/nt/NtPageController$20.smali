.class Lcom/metamoji/nt/NtPageController$20;
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

.field final synthetic val$document:Lcom/metamoji/nt/NtDocument;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtNoteController;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 4240
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$20;->this$0:Lcom/metamoji/nt/NtPageController;

    iput-object p2, p0, Lcom/metamoji/nt/NtPageController$20;->val$document:Lcom/metamoji/nt/NtDocument;

    iput-object p3, p0, Lcom/metamoji/nt/NtPageController$20;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iput p4, p0, Lcom/metamoji/nt/NtPageController$20;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 4244
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController$20;->val$document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4246
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController$20;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController$20;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->addNotifyBoothUpdated(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4249
    :cond_0
    iget v0, p0, Lcom/metamoji/nt/NtPageController$20;->val$value:I

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 4252
    :cond_2
    :goto_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->startPersonalModeByAttentionUser()V

    return-void
.end method
