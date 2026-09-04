.class Lcom/metamoji/nt/NtUnitController$8;
.super Ljava/lang/Object;
.source "NtUnitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitController;->updateViewModeHighlightText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitController;

.field final synthetic val$cOption:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

.field final synthetic val$searchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

.field final synthetic val$searchWordText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;)V
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

    .line 1721
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitController$8;->this$0:Lcom/metamoji/nt/NtUnitController;

    iput-object p2, p0, Lcom/metamoji/nt/NtUnitController$8;->val$searchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    iput-object p3, p0, Lcom/metamoji/nt/NtUnitController$8;->val$searchWordText:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/nt/NtUnitController$8;->val$cOption:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1724
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController$8;->val$searchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    iget-object v1, p0, Lcom/metamoji/nt/NtUnitController$8;->this$0:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1726
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitController$8;->val$searchWordText:Ljava/lang/String;

    .line 1729
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitController$8;->this$0:Lcom/metamoji/nt/NtUnitController;

    if-nez v1, :cond_0

    .line 1727
    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->setHighlightTextRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V

    return-void

    .line 1729
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/nt/NtUnitController$8;->val$searchWordText:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/nt/NtUnitController$8;->val$cOption:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    sget-object v4, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;->NtTextSearchType_ViewMode:Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->highlightText(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;Lcom/metamoji/nt/INtTextSearchInUnitModelProvider$NtTextSearchType;)I

    :cond_1
    return-void
.end method
