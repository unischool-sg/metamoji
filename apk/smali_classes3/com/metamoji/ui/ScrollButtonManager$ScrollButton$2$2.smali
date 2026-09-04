.class Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2$2;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->onLongPress(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1281
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2$2;->this$2:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2$2;->this$2:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;

    iget-object v0, v0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$mmove(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;Z)V

    return-void
.end method
