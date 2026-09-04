.class Lcom/metamoji/nt/NtNoteController$57;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->handleSearchText(Lcom/metamoji/cm/CmContext;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

.field final synthetic val$showNotFoundMessage:Z

.field final synthetic val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController$SearchTextContext;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;Z)V
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

    .line 7377
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$57;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$57;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$57;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    iput-boolean p4, p0, Lcom/metamoji/nt/NtNoteController$57;->val$showNotFoundMessage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 7380
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$57;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iget-boolean v0, v0, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->findModel:Z

    .line 7390
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$57;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 7381
    iget-boolean v0, v1, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->cancelEnd:Z

    if-nez v0, :cond_1

    .line 7382
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$57;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultModel:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$57;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultRange:Lcom/metamoji/nt/NtTextSearchPosition;

    if-eqz v0, :cond_0

    .line 7383
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$57;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$57;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iget-object v1, v1, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultModel:Lcom/metamoji/df/model/IModel;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$57;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iget-object v2, v2, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultRange:Lcom/metamoji/nt/NtTextSearchPosition;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$57;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iget-object v3, v3, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->searchFromModel:Lcom/metamoji/df/model/IModel;

    iget-object v4, p0, Lcom/metamoji/nt/NtNoteController$57;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/metamoji/nt/NtTextSearchUtil;->changeCurrentPageAndSetFocusWithNoteController(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V

    return-void

    .line 7385
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$57;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->searchFromModel:Lcom/metamoji/df/model/IModel;

    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController$57;->val$showNotFoundMessage:Z

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$57;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-static {v2, v2, v0, v1, v3}, Lcom/metamoji/nt/NtTextSearchUtil;->processAfterSearchTextWithResult(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;ZLcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V

    :cond_1
    return-void

    .line 7390
    :cond_2
    iget-object v0, v1, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->searchFromModel:Lcom/metamoji/df/model/IModel;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$57;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iget-boolean v1, v1, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->cancelEnd:Z

    xor-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$57;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-static {v2, v2, v0, v1, v3}, Lcom/metamoji/nt/NtTextSearchUtil;->processAfterSearchTextWithResult(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/df/model/IModel;ZLcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V

    return-void
.end method
