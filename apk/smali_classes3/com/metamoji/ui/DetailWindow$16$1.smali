.class Lcom/metamoji/ui/DetailWindow$16$1;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailWindow$16;->invoke(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/DetailWindow$16;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailWindow$16;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 645
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$16$1;->this$1:Lcom/metamoji/ui/DetailWindow$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$16$1;->this$1:Lcom/metamoji/ui/DetailWindow$16;

    iget-object v0, v0, Lcom/metamoji/ui/DetailWindow$16;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_frame(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailFrame;->requestLayout()V

    return-void
.end method
