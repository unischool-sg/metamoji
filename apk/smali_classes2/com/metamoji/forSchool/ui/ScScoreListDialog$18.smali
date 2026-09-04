.class Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;
.super Ljava/lang/Object;
.source "ScScoreListDialog.java"

# interfaces
.implements Lcom/metamoji/forSchool/ScSchoolCommand$IScSetScoreCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreListDialog;->handleContextMenuSetScore(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

.field final synthetic val$finalcoupledColumnPos:I

.field final synthetic val$rowIndex:I


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreListDialog;II)V
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

    .line 1199
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iput p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;->val$rowIndex:I

    iput p3, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;->val$finalcoupledColumnPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1202
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-boolean p1, p1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->EditorMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-boolean p1, p1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_isAutoReload:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1207
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;->val$rowIndex:I

    iget v1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;->val$finalcoupledColumnPos:I

    invoke-virtual {p1, v0, v1, p2}, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->updateScore(IILjava/util/Map;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1209
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->getDataArray()Ljava/util/List;

    move-result-object p2

    .line 1210
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;->val$rowIndex:I

    invoke-interface {p2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1211
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;->this$0:Lcom/metamoji/forSchool/ui/ScScoreListDialog;

    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScScoreListDialog;->m_listView:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    iget v0, p0, Lcom/metamoji/forSchool/ui/ScScoreListDialog$18;->val$rowIndex:I

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->setDataArray(Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method
