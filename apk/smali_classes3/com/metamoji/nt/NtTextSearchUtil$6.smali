.class Lcom/metamoji/nt/NtTextSearchUtil$6;
.super Ljava/lang/Object;
.source "NtTextSearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtTextSearchUtil;->processAfterSearchTextWithResult(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;ZLcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fromModel:Lcom/metamoji/df/model/IModel;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

.field final synthetic val$success:Z

.field final synthetic val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtSearchTextBar;Lcom/metamoji/nt/NtNoteController;ZLcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 818
    iput-object p1, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    iput-object p2, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iput-boolean p3, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$success:Z

    iput-object p4, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$fromModel:Lcom/metamoji/df/model/IModel;

    iput-object p5, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 822
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtSearchTextBar;->hasSearchWordInputFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    .line 836
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$success:Z

    .line 872
    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 844
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne v0, v1, :cond_3

    .line 846
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 849
    instance-of v1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_2

    .line 850
    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 853
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->commandClearSelect()V

    return-void

    .line 860
    :cond_3
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$fromModel:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    if-eqz v1, :cond_6

    .line 861
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 864
    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$fromModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->setSelectedRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V

    .line 866
    iget-object v1, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$fromModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->setHighlightTextRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V

    return-void

    .line 872
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$ToolMode;->TEXT:Lcom/metamoji/nt/NtDocument$ToolMode;

    if-ne v0, v1, :cond_6

    .line 873
    iget-object v0, p0, Lcom/metamoji/nt/NtTextSearchUtil$6;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 876
    instance-of v1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_5

    .line 877
    move-object v2, v0

    check-cast v2, Lcom/metamoji/un/text/UnTextUnit;

    :cond_5
    if-eqz v2, :cond_6

    .line 880
    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnit;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 881
    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnit;->focusToViewForSoftInputAndShowSoftInput()V

    :cond_6
    :goto_1
    return-void
.end method
