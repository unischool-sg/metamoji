.class Lcom/metamoji/nt/NtPageController$9;
.super Ljava/lang/Object;
.source "NtPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3353
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$9;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3356
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController$9;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3357
    iget-object v3, p0, Lcom/metamoji/nt/NtPageController$9;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v3, v2}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    .line 3358
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "system:personal_template"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3359
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 3360
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    .line 3362
    :cond_0
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3363
    invoke-virtual {v3, v1}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
