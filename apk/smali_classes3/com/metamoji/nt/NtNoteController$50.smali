.class Lcom/metamoji/nt/NtNoteController$50;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->handleCutOrDeletePage(Lcom/metamoji/cm/CmContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$copy:Z

.field final synthetic val$pages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;Z)V
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

    .line 6018
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$50;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$50;->val$pages:Ljava/util/List;

    iput-boolean p3, p0, Lcom/metamoji/nt/NtNoteController$50;->val$copy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6029
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$50;->val$pages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6031
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$50;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 6032
    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController$50;->val$copy:Z

    if-eqz v1, :cond_0

    .line 6033
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$50;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$50;->val$pages:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mcopyPagesCore(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;)V

    .line 6034
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$50;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$50;->val$pages:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mremovePagesCore(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;)V

    .line 6035
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$50;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 6036
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6040
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$50;->this$0:Lcom/metamoji/nt/NtNoteController;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mprocessAfterCurrentPageChanged(Lcom/metamoji/nt/NtNoteController;ZZ)V

    :cond_1
    return-void
.end method
