.class Lcom/metamoji/df/sprite/Viewport$9;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/sprite/Viewport;->addLayer(Lcom/metamoji/df/sprite/Layer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/sprite/Viewport;

.field final synthetic val$layer:Lcom/metamoji/df/sprite/Layer;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Layer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 604
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$9;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport$9;->val$layer:Lcom/metamoji/df/sprite/Layer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$9;->val$layer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$9;->this$0:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Viewport;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
