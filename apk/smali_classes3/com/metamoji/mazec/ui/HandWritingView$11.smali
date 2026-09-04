.class Lcom/metamoji/mazec/ui/HandWritingView$11;
.super Ljava/lang/Object;
.source "HandWritingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/HandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/HandWritingView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/HandWritingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1535
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandWritingView$11;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1540
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandWritingView$11;->this$0:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->-$$Nest$fgetmScrollRightButton(Lcom/metamoji/mazec/ui/HandWritingView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method
