.class Lcom/metamoji/nt/NtNoteController$49;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->handleDeletePageOnCollabo(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$pages:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$OcKww_XFvEnRHakiA_hwR2IorF0(Lcom/metamoji/nt/NtNoteController$49;Ljava/util/List;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtNoteController$49;->lambda$run$0(Ljava/util/List;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Ljava/util/List;)V
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

    .line 5963
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$49;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$49;->val$pages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/util/List;Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 5968
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5970
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5971
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5972
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$49;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 5973
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5978
    :cond_0
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$49;->this$0:Lcom/metamoji/nt/NtNoteController;

    sget v1, Lcom/metamoji/noteanytime/R$string;->Title_DeletePage:I

    invoke-static {p1, p2, v1}, Lcom/metamoji/nt/NtNoteController;->-$$Nest$mconfirmBeforeDeletePage(Lcom/metamoji/nt/NtNoteController;Landroidx/fragment/app/FragmentActivity;I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 5982
    :cond_1
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$49;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->isDirectable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5983
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$49;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;

    move-result-object p1

    .line 5984
    invoke-virtual {p1, v0}, Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;->setRemovePageIDs(Ljava/util/List;)V

    .line 5985
    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController$49;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtNoteController;->sendRemovePagesDirection(Lcom/metamoji/nt/direction/note/NtRemovePagesDirectionData;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5966
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 5967
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$49;->val$pages:Ljava/util/List;

    new-instance v2, Lcom/metamoji/nt/NtNoteController$49$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/nt/NtNoteController$49$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/nt/NtNoteController$49;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
