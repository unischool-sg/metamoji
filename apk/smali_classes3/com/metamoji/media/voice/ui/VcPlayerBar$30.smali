.class Lcom/metamoji/media/voice/ui/VcPlayerBar$30;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEnabledAndGrayout(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field final synthetic val$enabled:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Landroid/view/View;Z)V
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

    .line 1623
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$30;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$30;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$30;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1625
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$30;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$30;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1626
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$30;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$30;->val$enabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
