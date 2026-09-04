.class Lcom/metamoji/nt/NtNoteController$55;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;


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

.field final synthetic val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

.field final synthetic val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)V
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

    .line 7071
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$55;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$55;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    iput-object p3, p0, Lcom/metamoji/nt/NtNoteController$55;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public textSearchCheckModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;
    .locals 4

    .line 7074
    new-instance v0, Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;-><init>(ZZ)V

    .line 7075
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$55;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->isSearchCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7079
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$55;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->canSearchModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7082
    invoke-static {p1}, Lcom/metamoji/nt/NtTextSearchUtil;->getPageModelFromPageInnerModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 7083
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$55;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->checkPurgedAndRestorePage(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    .line 7084
    iput-boolean v2, v0, Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;->checkRestorePage:Z

    .line 7086
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$55;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/metamoji/nt/NtDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7088
    instance-of v3, p1, Lcom/metamoji/nt/NtUnitController;

    if-eqz v3, :cond_1

    .line 7089
    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 7093
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7094
    iput-boolean v2, v0, Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;->hasSearchModel:Z

    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    .line 7099
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7100
    iput-boolean v2, v0, Lcom/metamoji/nt/NtTextSearchUtil$TextSearchCheckResult;->hasSearchModel:Z

    :cond_3
    :goto_1
    return-object v0
.end method
