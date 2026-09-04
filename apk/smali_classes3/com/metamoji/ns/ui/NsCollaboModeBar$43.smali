.class Lcom/metamoji/ns/ui/NsCollaboModeBar$43;
.super Ljava/util/TimerTask;
.source "NsCollaboModeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboModeBar;->inputIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1337
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$43;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1340
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$43;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_inputIndicatorStopTimer:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x2

    .line 1341
    new-array v1, v0, [Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$43;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    iget-object v2, v2, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_inputIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$43;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    iget-object v2, v2, Lcom/metamoji/ns/ui/NsCollaboModeBar;->m_subInputIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, v1, v2

    .line 1342
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 1343
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1344
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
