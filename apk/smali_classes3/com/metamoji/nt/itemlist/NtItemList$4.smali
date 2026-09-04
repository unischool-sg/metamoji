.class Lcom/metamoji/nt/itemlist/NtItemList$4;
.super Ljava/lang/Object;
.source "NtItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtItemList;->setViewEnabled(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemList;

.field final synthetic val$enabled:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemList;Landroid/view/View;Z)V
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

    .line 314
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemList$4;->this$0:Lcom/metamoji/nt/itemlist/NtItemList;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemList$4;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/metamoji/nt/itemlist/NtItemList$4;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$4;->val$view:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$4;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 320
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$4;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lcom/metamoji/nt/itemlist/NtItemList$4;->val$enabled:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3e800000    # 0.25f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 321
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemList$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
