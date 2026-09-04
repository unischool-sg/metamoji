.class Lcom/metamoji/nt/NtUnitController$7;
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

.field final synthetic val$searchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

.field final synthetic val$searchPosition:Lcom/metamoji/nt/NtTextSearchPosition;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;Lcom/metamoji/nt/NtTextSearchPosition;)V
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

    .line 1678
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitController$7;->this$0:Lcom/metamoji/nt/NtUnitController;

    iput-object p2, p0, Lcom/metamoji/nt/NtUnitController$7;->val$searchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    iput-object p3, p0, Lcom/metamoji/nt/NtUnitController$7;->val$searchPosition:Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1681
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController$7;->val$searchFactory:Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    iget-object v1, p0, Lcom/metamoji/nt/NtUnitController$7;->this$0:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1685
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitController$7;->this$0:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/nt/NtUnitController$7;->val$searchPosition:Lcom/metamoji/nt/NtTextSearchPosition;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->setHighlightTextRange(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtTextSearchPosition;)V

    :cond_0
    return-void
.end method
