.class Lcom/metamoji/nt/NtNoteController$56;
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

.field final synthetic val$checkModelHandler:Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;

.field final synthetic val$compareNoCase:Z

.field final synthetic val$directionNext:Z

.field final synthetic val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

.field final synthetic val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;ZLcom/metamoji/nt/NtTextSearchInUnitModelFactory;ZLcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtNoteController$SearchTextContext;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
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

    .line 7132
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    iput-boolean p3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$compareNoCase:Z

    iput-object p4, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    iput-boolean p5, p0, Lcom/metamoji/nt/NtNoteController$56;->val$directionNext:Z

    iput-object p6, p0, Lcom/metamoji/nt/NtNoteController$56;->val$checkModelHandler:Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;

    iput-object p7, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iput-object p8, p0, Lcom/metamoji/nt/NtNoteController$56;->val$keyword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 7136
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->isSearchCancelled()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 7140
    sget-object v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->None:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    .line 7141
    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$compareNoCase:Z

    if-eqz v1, :cond_0

    .line 7142
    sget-object v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->NoCase:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    :cond_0
    move-object v4, v0

    .line 7146
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    const/4 v7, 0x0

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_1

    goto/16 :goto_4

    .line 7205
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->canSearchModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7207
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 7208
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7210
    iget-boolean v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$directionNext:Z

    invoke-interface {v1, v0, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchCurrentPosition(Lcom/metamoji/df/model/IModel;Z)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v7

    .line 7212
    :goto_0
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iput-object v0, v2, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->searchFromModel:Lcom/metamoji/df/model/IModel;

    goto/16 :goto_3

    .line 7216
    :cond_3
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/nt/NtTextSearchUtil;->getNextSearchResultModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 7218
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iput-object v0, v1, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->searchFromModel:Lcom/metamoji/df/model/IModel;

    .line 7220
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 7222
    invoke-interface {v1, v0}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->lastHighlightTextRange(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7224
    iget-boolean v3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$directionNext:Z

    invoke-interface {v1, v2, v3}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->positionInRange(Lcom/metamoji/nt/NtTextSearchPosition;Z)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v7

    :goto_1
    if-eqz v2, :cond_5

    .line 7230
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v5, Lcom/metamoji/nt/NtNoteController$56$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/metamoji/nt/NtNoteController$56$1;-><init>(Lcom/metamoji/nt/NtNoteController$56;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;Lcom/metamoji/df/model/IModel;)V

    invoke-virtual {v3, v5}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_5
    move-object v1, v2

    goto :goto_2

    :cond_6
    move-object v1, v7

    :goto_2
    if-nez v0, :cond_8

    .line 7240
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->isSearchCancelled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 7242
    iget-boolean v0, p0, Lcom/metamoji/nt/NtNoteController$56;->val$directionNext:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7255
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    if-eqz v0, :cond_7

    .line 7244
    :try_start_1
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$checkModelHandler:Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-static {v0, v2, v3}, Lcom/metamoji/nt/NtTextSearchUtil;->getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 7246
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-virtual {v2, v0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 7248
    invoke-interface {v2, v0}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchBeginPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v1

    goto :goto_3

    .line 7255
    :cond_7
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$checkModelHandler:Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;

    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-static {v0, v2, v3}, Lcom/metamoji/nt/NtTextSearchUtil;->getPrevModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 7257
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-virtual {v2, v0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 7259
    invoke-interface {v2, v0}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchEndPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v1

    :cond_8
    :goto_3
    move-object v8, v1

    goto/16 :goto_5

    .line 7148
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtTextSearchUtil;->hasHighlightTextInChildModels(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7178
    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$directionNext:Z

    if-eqz v0, :cond_c

    .line 7164
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    if-eqz v1, :cond_b

    .line 7152
    :try_start_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtTextSearchUtil;->getLastChildModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$checkModelHandler:Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtTextSearchUtil;->getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 7155
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 7157
    invoke-interface {v1, v0}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchBeginPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v1

    goto :goto_3

    :cond_a
    move-object v1, v7

    goto :goto_3

    .line 7164
    :cond_b
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$checkModelHandler:Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtTextSearchUtil;->getPrevModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 7168
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 7170
    invoke-interface {v1, v0}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchEndPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 7192
    :cond_c
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    if-eqz v1, :cond_e

    .line 7180
    :try_start_3
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$checkModelHandler:Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtTextSearchUtil;->getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 7183
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 7185
    invoke-interface {v1, v0}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchBeginPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v1

    goto/16 :goto_3

    :cond_d
    move-object v8, v7

    goto :goto_5

    .line 7192
    :cond_e
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtTextSearchUtil;->getLastChildModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$checkModelHandler:Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtTextSearchUtil;->getPrevModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 7196
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 7198
    invoke-interface {v1, v0}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchEndPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v1

    goto/16 :goto_3

    .line 7266
    :goto_5
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->isSearchCancelled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->cancelEnd:Z

    if-nez v0, :cond_f

    goto/16 :goto_b

    .line 7273
    :cond_f
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->findModel:Z

    .line 7280
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v1

    .line 7282
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->this$0:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v2, v3, :cond_10

    sget-object v2, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->NtTextSearchType_EditMode:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    goto :goto_6

    :cond_10
    sget-object v2, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->NtTextSearchType_ViewMode:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    :goto_6
    move-object v6, v2

    const/4 v2, 0x0

    move v10, v2

    move-object v5, v8

    move-object v2, v0

    .line 7285
    :cond_11
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->isSearchCancelled()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_a

    :cond_12
    if-eqz v1, :cond_14

    .line 7292
    iget-boolean v3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$directionNext:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v11, v3

    .line 7297
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$keyword:Ljava/lang/String;

    if-eqz v11, :cond_13

    .line 7293
    :try_start_4
    invoke-interface/range {v1 .. v6}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchNext(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v1

    goto :goto_7

    .line 7297
    :cond_13
    invoke-interface/range {v1 .. v6}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchPrev(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v1

    goto :goto_7

    :cond_14
    move-object v1, v7

    :goto_7
    if-eqz v1, :cond_15

    .line 7302
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iput-object v2, v3, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultModel:Lcom/metamoji/df/model/IModel;

    .line 7303
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iput-object v1, v2, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultRange:Lcom/metamoji/nt/NtTextSearchPosition;

    goto :goto_a

    .line 7308
    :cond_15
    iget-boolean v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$directionNext:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7313
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$checkModelHandler:Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;

    if-eqz v1, :cond_16

    .line 7309
    :try_start_5
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-static {v2, v3, v1}, Lcom/metamoji/nt/NtTextSearchUtil;->getNextModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    goto :goto_8

    .line 7313
    :cond_16
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-static {v2, v3, v1}, Lcom/metamoji/nt/NtTextSearchUtil;->getPrevModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchUtil$INtTextSearchUtilHandler;Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    :goto_8
    move-object v2, v1

    .line 7315
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 7318
    iget-boolean v3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$directionNext:Z

    if-eqz v3, :cond_17

    .line 7319
    invoke-interface {v1, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchBeginPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v5

    goto :goto_9

    .line 7323
    :cond_17
    invoke-interface {v1, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchEndPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v5

    .line 7326
    :cond_18
    :goto_9
    invoke-interface {v2, v0}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    if-eqz v3, :cond_19

    add-int/lit8 v10, v10, 0x1

    :cond_19
    if-lt v10, v9, :cond_11

    .line 7332
    :goto_a
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->isSearchCancelled()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7337
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    if-eqz v1, :cond_1a

    .line 7333
    :try_start_6
    iput-boolean v9, v2, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->cancelEnd:Z

    goto :goto_b

    .line 7337
    :cond_1a
    iget-object v1, v2, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultModel:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iget-object v1, v1, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultRange:Lcom/metamoji/nt/NtTextSearchPosition;

    if-eqz v1, :cond_1b

    goto :goto_b

    .line 7341
    :cond_1b
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$textSearchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 7344
    iget-boolean v2, p0, Lcom/metamoji/nt/NtNoteController$56;->val$directionNext:Z

    if-eqz v2, :cond_1c

    .line 7345
    invoke-interface {v1, v0}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchBeginPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v5

    .line 7346
    invoke-interface {v1, v8, v5}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->isEqualToPosition(Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/NtTextSearchPosition;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 7347
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$keyword:Ljava/lang/String;

    move-object v2, v0

    invoke-interface/range {v1 .. v6}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchNext(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 7349
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iput-object v2, v1, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultModel:Lcom/metamoji/df/model/IModel;

    .line 7350
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iput-object v0, v1, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultRange:Lcom/metamoji/nt/NtTextSearchPosition;

    goto :goto_b

    :cond_1c
    move-object v2, v0

    .line 7357
    invoke-interface {v1, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchEndPosition(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v5

    .line 7358
    invoke-interface {v1, v8, v5}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->isEqualToPosition(Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/NtTextSearchPosition;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 7359
    iget-object v3, p0, Lcom/metamoji/nt/NtNoteController$56;->val$keyword:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->searchPrev(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;Lcom/metamoji/nt/NtTextSearchPosition;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;)Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v0

    move-object v3, v2

    if-eqz v0, :cond_1d

    .line 7361
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iput-object v3, v1, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultModel:Lcom/metamoji/df/model/IModel;

    .line 7362
    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$handleSearchContext:Lcom/metamoji/nt/NtNoteController$SearchTextContext;

    iput-object v0, v1, Lcom/metamoji/nt/NtNoteController$SearchTextContext;->resultRange:Lcom/metamoji/nt/NtTextSearchPosition;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 7372
    :cond_1d
    :goto_b
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->endSearchContext()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/nt/NtNoteController$56;->val$searchContext:Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtTextSearchUtil$NtTextSearchContext;->endSearchContext()V

    .line 7373
    throw v0
.end method
