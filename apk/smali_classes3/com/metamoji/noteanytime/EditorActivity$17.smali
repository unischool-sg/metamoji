.class Lcom/metamoji/noteanytime/EditorActivity$17;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->setEditAreaVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Z)V
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

    .line 1699
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$17;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-boolean p2, p0, Lcom/metamoji/noteanytime/EditorActivity$17;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1702
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$17;->val$visible:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1703
    :goto_0
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity$17;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v2}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 1706
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$17;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    sget v4, Lcom/metamoji/noteanytime/R$id;->editing_area_root:I

    invoke-virtual {v3, v4}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1707
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1710
    sget v3, Lcom/metamoji/noteanytime/R$id;->bottombar:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 1711
    iget-object v4, p0, Lcom/metamoji/noteanytime/EditorActivity$17;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v4, v3, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setFragmentState(Landroidx/fragment/app/Fragment;I)V

    .line 1714
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity$17;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    sget v4, Lcom/metamoji/noteanytime/R$id;->inputViewForTLE:I

    invoke-virtual {v3, v4}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1715
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1718
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$17;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1720
    iget-boolean v3, p0, Lcom/metamoji/noteanytime/EditorActivity$17;->val$visible:Z

    if-eqz v3, :cond_1

    .line 1721
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->show()V

    goto :goto_1

    .line 1723
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->hide()V

    .line 1727
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$17;->val$visible:Z

    if-nez v0, :cond_3

    .line 1729
    sget v0, Lcom/metamoji/noteanytime/R$id;->setTextUnitLocation:I

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1730
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity$17;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setFragmentState(Landroidx/fragment/app/Fragment;I)V

    :cond_3
    return-void
.end method
