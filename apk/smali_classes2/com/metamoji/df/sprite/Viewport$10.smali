.class Lcom/metamoji/df/sprite/Viewport$10;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/sprite/Viewport;->insertLayer(ILcom/metamoji/df/sprite/Layer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/sprite/Viewport;

.field final synthetic val$i:I

.field final synthetic val$layer:Lcom/metamoji/df/sprite/Layer;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Layer;I)V
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

    .line 630
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$10;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport$10;->val$layer:Lcom/metamoji/df/sprite/Layer;

    iput p3, p0, Lcom/metamoji/df/sprite/Viewport$10;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$10;->val$layer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$10;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iget v2, p0, Lcom/metamoji/df/sprite/Viewport$10;->val$i:I

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/sprite/Viewport;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
