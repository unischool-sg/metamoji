.class Lcom/metamoji/ui/flexible/FxManager$3;
.super Ljava/lang/Object;
.source "FxManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/flexible/FxManager;->updateEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/flexible/FxManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/flexible/FxManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2196
    iput-object p1, p0, Lcom/metamoji/ui/flexible/FxManager$3;->this$0:Lcom/metamoji/ui/flexible/FxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2199
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager$3;->this$0:Lcom/metamoji/ui/flexible/FxManager;

    iget-object v0, v0, Lcom/metamoji/ui/flexible/FxManager;->m_uiPartList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/flexible/FxItem;

    .line 2200
    iget-object v1, v1, Lcom/metamoji/ui/flexible/FxItem;->uiPartView:Landroid/view/View;

    .line 2201
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eqz v2, :cond_0

    .line 2203
    iget-object v3, p0, Lcom/metamoji/ui/flexible/FxManager$3;->this$0:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/flexible/FxManager;->isEnable(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v2

    .line 2204
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    .line 2205
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    return-void
.end method
